# Temperature Class for PHP and ASP

A class for working with temperature values. Supports the following units of measure:

- Celsius
- Delisle
- Fahrenheit
- Kelvin
- Newton
- Rankine
- Réaumur
- Rømer

## Project Status

No further development is planned, as this class is considered complete.

## Installation

### PHP

Place Temperature.class.php in any location on your web server. For additional security, you may wish to place it in a location that isn't directly accessible by users, though attempts to access the library directly will generate a 404 error.

The file Temperature.test.php is not required in order to use the library and does not need to be placed on the web server unless you want to run unit tests.

### ASP Classic

Place Temperature.class.asp in any location on your web server, or on another machine on the same network. For additional security, you may wish to place it in a location that isn't directly accessible by users.

The file Temperature.test.asp is not required in order to use the library and does not need to be placed on the web server unless you want to run unit tests.

## Usage

### PHP

```PHP
// Change the path if you're storing the library in a different folder.
include 'Temperature.class.php';

// Feel free to alias the class so that you don't need to type my name every time you use it.
use ScottVM\UOM as UOM;

// Create a Temperature
$boilingPoint = new UOM\Temperature();
$boilingPoint->set_value_celsius(100);

// Displays 212
echo $boilingPoint->get_value_fahrenheit();

// Displays 373.15
echo $boilingPoint->get_value_kelvin();

// Displays 671.67
echo $boilingPoint->get_value_rankine();

// Displays 0
echo $boilingPoint->get_value_delisle();

// Displays 33
echo $boilingPoint->get_value_newton();

// Displays 80
echo $boilingPoint->get_value_reaumur();

// Displays 60
echo $boilingPoint->get_value_romer();
```

### ASP Classic

```vbscript
<!--#include file="Temperature.class.asp"-->
<%
' Create a Temperature
dim boilingPoint
set boilingPoint = new Temperature
boilingPoint.value_celsius = 100

' Displays 212
Response.Write boilingPoint.value_fahrenheit

' Displays 373.15
Response.Write boilingPoint.value_kelvin

' Displays 671.67
Response.Write boilingPoint.value_rankine

' Displays 0
Response.Write boilingPoint.value_delisle

' Displays 33
Response.Write boilingPoint.value_newton

' Displays 80
Response.Write boilingPoint.value_reaumur

' Displays 60
Response.Write boilingPoint.value_romer
%>
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

See Temperature.test.php or Temperature.test.asp for unit tests.

## Authors

Version 1.0 written March 2008 by Scott Vander Molen

Version 2.0 written October 2023 by Scott Vander Molen - conversion to class object

## License
This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
