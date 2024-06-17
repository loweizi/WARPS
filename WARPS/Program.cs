using System;
using System.Data.SqlClient;
using System.IO;

class Program
{
    static void Main()
    {
        // Connection string to your SQLite database file
        string connectionString = "Data Source=WEIZI-PC\\SQLEXPRESS;Initial Catalog=WARPSDB;Integrated Security=True";

        // Create a SQLiteConnection object
        using (var connection = new SqlConnection(connectionString))
        {

            try
            {
                // Open the connection
                connection.Open();

                string newFoodCategory = "Testing";

                string query = "SELECT * FROM Food_Category";
                SqlCommand cmd = new SqlCommand(query, connection);

                using (var reader = cmd.ExecuteReader())
                {
                    // Get the number of columns in the result
                    int columnCount = reader.FieldCount;

                    // Print the column names
                    for (int i = 0; i < columnCount; i++)
                    {
                        Console.Write(reader.GetName(i) + "\t");
                    }
                    Console.WriteLine();

                    // Print the records
                    while (reader.Read())
                    {
                        for (int i = 0; i < columnCount; i++)
                        {
                            Console.Write(reader[i].ToString() + "\t");
                        }
                        Console.WriteLine();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Console.WriteLine("An error occurred: " + ex.Message);
            }
        }
    }
}
