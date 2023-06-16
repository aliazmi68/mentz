This is the test task for Mentz

The project consist of a single screen with a search bar, a widget for showing the count of results and a list showing the results of all the possible matches found in the response of the API call. 

The main architecture used for this application is BLoC architecture which separates the business logic from the presentation widgets and utilizes streams to update the data in the list.

The app also consist of an api service which is called inside the bloc to fetch the data which is then updated inside the presentation files using the Bloc builder.

