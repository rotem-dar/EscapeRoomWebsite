using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Xml.Linq;
using System.Drawing;

public class Dal
{
    private const string DBName = "UsernameDatabase.mdf";   //Name of the MSSQL Database.
    private const string usersTblName = "UsersTbl";      // Name of the user Table in the Database
    private const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                                    + DBName + ";Integrated Security=True";   // The Data Base is in the App_Data = |DataDirectory|


    private static SqlConnection ConnectToDb()
    {
        SqlConnection conn = new SqlConnection(conString);
        return conn;
    }

    /// <summary>
    /// To Execute update / insert / delete queries
    ///  הפעולה מקבלת פקודה לביצוע ומחזירה את מספר השורות שהושפעו מביצוע הפעולה
    /// </summary>
    public static int DoQuery(string sql)
    {
        SqlConnection conn = ConnectToDb();
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        int rowsAffected = com.ExecuteNonQuery();
        com.Dispose();
        conn.Close();
        return rowsAffected;
    }

    /// <summary>
    /// הפעולה מקבלת פקודה לחיפוש ערך - מחזירה אמת אם הערך נמצא ושקר אחרת
    /// </summary>
    private static bool IsExist(string sql)
    {
        SqlConnection conn = ConnectToDb();
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader data = com.ExecuteReader();
        bool found;
        found = (bool)data.Read();// אם יש נתונים לקריאה יושם אמת אחרת שקר - הערך קיים במסד הנתונים
        conn.Close();
        return found;
    }

    /// <summary>
    /// הפעולה מקבלת מזהה משתמש ומחזירה אמת אם קיים ערך זהה בטבלה ושקר אחרת
    /// </summary>
    public static bool ExistUser(string username)
    {
        string sql =
            $" SELECT * FROM {usersTblName} " +
            $" WHERE username = N'{username}';";

        return IsExist(sql);
    }

    /// <summary>
    /// הפעולה מקבלת מזהה משתמש וסיסמה 
    /// ומחזירה אמת אם קיים בטבלה מזהה משתמש שזוהי ססמתו ושקר אחרת
    /// </summary>
    public static bool IsValidUserPassword(string username, string psw)
    {
        string sql =
            " SELECT * FROM " + usersTblName +
            " WHERE username = N'" + username + "'" +
            " AND password = N'" + psw + "';";

        return IsExist(sql);
    }

    /// <summary>
    /// הפעולה מקבלת מזהה משתמש ומחזירה את שמו הפרטי מהטבלה
    /// </summary>
    public static int getUserDoors(string username)
    {
        string sql =
            " SELECT bestDoors FROM " + usersTblName +
            " WHERE username = N'" + username + "';";

        DataTable tbl = RetrieveTable(sql);
        int bestDoors = (int)tbl.Rows[0]["bestDoors"];

        return bestDoors;
    }

    /// <summary>
    /// הפעולה מקבלת מזהה משתמש ומחזירה את שמו הפרטי מהטבלה
    /// </summary>
    public static bool IsAdmin(string username)
    {
        string sql =
            " SELECT admin FROM " + usersTblName +
            " WHERE username = N'" + username + "';";

        DataTable tbl = RetrieveTable(sql);
        bool isAdmin = (bool)tbl.Rows[0]["admin"];

        return isAdmin;
    }

    /// <summary>
    /// הפעולה מקבלת פרטי משתמש ומוסיפה אותו לטבלה במסד הנתונים
    /// הפעולה מחזירה אמת אם הצליחה ושקר אם המשתמש כבר קיים בטבלה
    /// </summary>
    public static bool InsertUser(string username, string psw,
        string likeTheWebsite, string country, string agreeToTerms)
    {
        if (ExistUser(username))
            return false;

        string sql =
            $" INSERT INTO {usersTblName} " +
            " (username, password, likeTheWebsite, country, agreeToTerms, bestDoors) " +
            $" VALUES(N'{username}', N'{psw}', N'{likeTheWebsite}', N'{country}', N'{agreeToTerms}', N'0');";

        DoQuery(sql);
        return true;
    }

    /// <summary>
    /// If the player managed to improve their time, it sets the new time
    /// </summary>
    /// <param name="username">the user's username</param>
    /// <param name="time">the new time</param>
    public static void updateDoors(string username, int doorsNum)
    {
        if (ExistUser(username)) // makes sure the username is real
        {
            SqlConnection connection = ConnectToDb();
            connection.Open();
            string updateQuery = $"UPDATE {usersTblName} SET bestDoors = {doorsNum} WHERE username = '{username}';";

            SqlCommand command = new SqlCommand(updateQuery, connection);

            command.ExecuteNonQuery();
        }
    }

    /// <summary>
    /// Gets A table from the data base acording to the SELECT Command in SQLStr;
    /// Returns DataTable with the Table.
    /// </summary>
    private static DataTable RetrieveTable(string SQLStr)
    {
        // connect to DataBase
        SqlConnection con = ConnectToDb();
        con.Open();
        SqlDataAdapter tableAdapter = new SqlDataAdapter(SQLStr, con);
        DataTable dt = new DataTable();
        tableAdapter.Fill(dt);
        return dt;
    }


    /// <summary>
    /// Gets A table from the data base acording to the SELECT Command in SQLStr;
    /// Returns an HTML table string table data in it.
    /// </summary>
    public static string UsersDataTableToHTML(string filter)
    {
        string sql = "SELECT * FROM " + usersTblName;
        if (filter != "")
        {
            sql += $" WHERE username LIKE '%{filter}%' OR password LIKE '%{filter}%' OR country LIKE '%{filter}%'";
        }
        DataTable dt = RetrieveTable(sql);

        string printStr = "<table class='dataTable'>";
        foreach (DataColumn column in dt.Columns)
        {
            printStr += "<th>" + column.Caption + "</th>";
        }
        foreach (DataRow row in dt.Rows)
        {
            printStr += "<tr>";
            foreach (object item in row.ItemArray)
            {
                printStr += "<td>" + item.ToString() + "</td>";
            }
            printStr += "</tr>";
        }
        printStr += "</table>";

        return printStr;
    }

}