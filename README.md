# Chinook_Query
Demonstrating consistent Chinook database implementation across diverse database systems and showcasing successful execution of specified queries for extracting sales-related information.
# Chinook Database
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
   <h1>Project Summary: Chinook Database Implementation Journey</h1>
  <ol>
        <li>
            <h2>Database Compatibility:</h2>
            <ul>
                <li>Explored the Chinook sample database, crafted for compatibility with SQL Server, Oracle, MySQL, PostgreSQL, and others.</li>
                <li>Embraced the simplicity of creation with a distinct SQL script for each database type.</li>
            </ul>
        </li>
        <li>
            <h2>Azure SQL Implementation:</h2>
            <ul>
                <li>Established the 'chinook' schema within the existing Azure SQL database.</li>
                <li>Executed the 'Azure_Chinook_AzureSQL_AutoIncrementPKs.sql' script, effortlessly creating tables and loading data.</li>
            </ul>
        </li>
        <li>
            <h2>MySQL Implementation:</h2>
            <ul>
                <li>Executed 'Azure_Chinook_MySql_AutoIncrementPKs-2.sql' on Azure Database for MySQL or the local MacBook, setting up tables and importing data.</li>
            </ul>
        </li>
        <li>
            <h2>PostgreSQL Implementation:</h2>
            <ul>
                <li>Ran 'Azure_Chinook_PostgreSql-1.sql' on Azure Database for PostgreSQL or the local notebook, establishing tables and populating data.</li>
            </ul>
        </li>
        <li>
            <h2>Query Tasks:</h2>
            <ul>
                <li>Explored sales insights in MySQL, grouping data by genre name.</li>
                <li>Identified the top 20 customers (lastname & first name) based on sales (via invoiceline) in SQL Server and Azure SQL, adding a personalized touch.</li>
                <li>Focused on diversity in PostgreSQL, determining the top 10 album titles based on sales (via invoiceline).</li>
            </ul>
        </li>
        <li>
            <h2>Results Display:</h2>
            <ul>
                <li>Showcased screenshots capturing query execution and results across MySQL, SQL Server/Azure SQL, and PostgreSQL.</li>
            </ul>
        </li>
        <li>
            <h2>Adherence to Instructions:</h2>
            <ul>
                <li>Avoided recreating the Azure SQL database.</li>
                <li>Followed guidelines using designated scripts for each database type.</li>
                <li>Ensured crucial steps like table creation, data loading, and auto-incrementing primary keys were implemented.</li>
            </ul>
        </li>
        <li>
            <h2>Project Objective:</h2>
            <p>Embarked on a personal journey of implementing the Chinook database, ensuring a consistent experience and successfully executing tailored queries to reveal insightful sales data.</p>
        </li>
    </ol>

</body>

</html>
