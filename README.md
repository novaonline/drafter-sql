# drafter-sql

The database for project drafter

## Requirements

1. SQL Server 2014 or 2016
1. Visual Studio

## Local Instance Setup

1. Open project in Visual Studio
1. Publish Database (you can use `DrafterDatabase.publish.xml`)
    * at this point, your local database should be created
    * the database should also have the seeded data
1. Open up SQL Server Object Explorer in Visual Studio
1. Navigate to `SQLServer > (localdb)\MSSQLLocalDB` (or whatever server you deployed the database to)

Query away!

## Seeding

Sometimes it makes sense to add data right after a database creation. Create some post deployment scripts in the `seeding` folder.

post deployment scripts can be created by adding a Post-Deployment Script item in the seeding folder (`Add > New Item... > SQLServer > User Scripts > Post-Deployment Script`)
