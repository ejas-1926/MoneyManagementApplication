Structure

For each screen,seperate folders are created  along with that we are creating different widget folder within that folder.

//there is no need of scaffold inside another scaffold.So, the best is just write the widget instead of the page, No need of writing the transaction page as scaffold instead using the dire

For gaps you can  use sized boxes 

Main idea is create pages and the components ie the widgets can be created in another pages and just import and add into the main page



=====================SOFT DELETE==========================================================
Always remember that even if a user deletes a data, we dont delete the data from the data base.The data will be stored in the db but it wont get displayed on the application.This is called Soft Deleting.
We can use flags to determine whether to show this data on UI or not after fetching from db.
=========================================================================================

=======================HIVE===============================================================
How to write to the db using hive?
How to write to the db using hive?

install packages 
hive 
hive flutter
hive flutter ce

dev dependencies
for generator 
build runner
hive generator

For installing as dev use the flage --dev


for generating the code add the model with the Hive TYpe for identifying the db and identify the fields by assigning HiveFields

add part class (something similar as partial class in csharp) with same name as the currentpage's name with .g inbetween 
Eg: part 'categorymodel.g.dart'

then run the command 
flutter pub run build_runner build --delete-conflicting-outputs 

This will generate the adapter classes for CRUD operations in db

Before starting the application,this needs to be registered

 Hive needs to be opened and closeed the box for every operation
some thing simliar to the old sql lite operations 

=========================================================================================