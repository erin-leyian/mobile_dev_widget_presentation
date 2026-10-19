# Airtime Wheel Picker

ListWheelScrollView widget - Is a scrolling list that curves like a rotating drum, so the user spins it to pick one value.


![alt text](<Screenshot (1021).png>)

# What it demonstrates

A mock airtime top up screen where the user spins a wheel to choose an amount.

# How to run

1. Install Flutter and check it works: `flutter doctor`
2. Clone the repo and enter the project folder:
   `git clone [your repo URL]`
   `cd [folder containing pubspec.yaml]`
3. `flutter pub get`
4. `flutter run -d chrome`

# The three attributes

- `itemExtent` : This is the height of each row in pixels.
- 'diameterRatio`: This controls how curved the wheel is.
- `perspective`: This controls the 3D depth. Higher means the rows at the top and bottom shrink more.