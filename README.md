### Description

Birthday Calendar is a program that you can load in IRB that allows you to:
- Store birthdays so you can keep track of them
- See them all at once with names and birthdays each on a line in a tidy format
- Check whose birthday it is today - the program can check through the birthdays you have stored and check each one to see if it’s someone’s birthday.

### User manual:
1. Initialize a new calendar. 
2. Add name, date as arguments of the .add method. Date must use the YYYY-MM-DD format.
3. View your full calendar with .read_calendar
4. Find out whose birthday it is and how old they are with the birthday_info method.
5. To get the name and birthdate of the person celebrating today as an array, use the born_today method.

### Still to do:  
- To handle calendars with no birthdays today, I would add a method that peeks into the calendar and returns true or false before methods born_today and birthday_info can do their work.
- Ideally would add unique names to different calendars to group people by that would all be searchable by a single method.
- Writing to a file or database so that the calendars can be stored and queried after program has finished executing. 
  
_Birthday Calendar is a Makers' TDD practical_