# throne

small Flutter package to handle creating instances from async functions

## Getting Started

## QueenHelper
abstract class you can extend it and override boot method and defining whw the instance creation will be
later you can use the  summon() functions to get instance of the app

## QueenThrone
Stateful Widget you can place it under MaterialApp with three required parameters
1- splash : A Widget to display **while** the instance creation process in progress
2- child  : a Widget to display **after** the    //      //       //    is done
2- helpers : a List of QueenHelpers to load instances




batteries included
* you can use QueenPrefs to load shared preferences instance directly
so if you willing to user this package for shared preferences only the code will look like this 


```dart
void main() => runApp(
    MaterialApp(
       title: 'Long Live The Queen',    
        home: QueenThrone(
        splash: Scaffold(body: Center(child: Text('booting helpers in progress ...'))),
        child: Scaffold(body: Center(child: Text('now you can user all Helpers'))),
      ),
    ),
  );

```



## create your own helper


```dart
class QueenPrefs extends QueenHelper<SharedPreferences> {
  @override
  Future<SharedPreferences> boot() async {
    return SharedPreferences.getInstance();
  }
}
```

```dart
void main() => runApp(
    MaterialApp(
      title: 'Long Live The Queen',
       home: QueenThrone(
        helpers: [
          QueenSharedPrefs(),
        ],
        splash: Scaffold(body: Center(child: Text('booting helpers in progress ...'))),
        child: Scaffold(body: Center(child: Text('now you can user all Helpers'))),
      ),
    ),
  );
```
## QueenShip
The Ship will not sail without the **Queen Helpers** so app wont run until the queenHelpers is ready


```dart
  void main()  {

    QueenShip.sail(helpers:[]); // load your helpers here 
    // OR
    QueenShip.sail(); // will load the loyal helpers only for now its just SharedPreferences
   runApp(
    MaterialApp(
      title: 'Long Live The Queen',
       home: Scaffold(body: Center(child: Text('now you can user all Helpers'))),
      ),
   );
  }
```



## TODO
* [] bind the helper to services class 
* [] dispose and reBoot the helpers
