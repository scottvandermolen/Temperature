<?php
	/**
	* PHP Temperature Class Unit Tests
	* 
	* Copyright (c) 2023, Scott Vander Molen; some rights reserved.
	* 
	* This work is licensed under a Creative Commons Attribution 4.0 International License.
	* To view a copy of this license, visit https://creativecommons.org/licenses/by/4.0/
	* 
	* @author  Scott Vander Molen
	* @version 2.0
	* @since   2023-10-02
	*/
	
	// Change debugmode to true if you need to see error messages.
	$debugmode = true;
	if ($debugmode)
	{
		// Allow the display of errors during debugging.
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
	}
	
	echo "<pre>";
	echo "/***************************************************************************************\\\n";
	echo "| PHP Temperature Class Unit Tests                                                      |\n";
	echo "|                                                                                       |\n";
	echo "| Copyright (c) 2023, Scott Vander Molen; some rights reserved.                         |\n";
	echo "|                                                                                       |\n";
	echo "| This work is licensed under a Creative Commons Attribution 4.0 International License. |\n";
	echo "| To view a copy of this license, visit https://creativecommons.org/licenses/by/4.0/    |\n";
	echo "|                                                                                       |\n";
	echo "\***************************************************************************************/\n";
	echo "</pre>";

	include 'Temperature.class.php';
	use ScottVM\UOM as UOM;
	
	if (!class_exists('ScottVM\UOM\Temperature'))
	{
		trigger_error('Could not find Temperature class! Did you set the path correctly?', E_USER_ERROR);
	}
	
	/*
	* Tests conversion of Celsius to Fahrenheit
	* 
	* @param input The desired temperature in Celsius.
	* @param expected The expected temperature in Fahrenheit.
	* @return boolean Whether the result matched the expectation.
	*/
	function testCelsiusToFahrenheit($input, $expected)
	{
		$testTemperature = new UOM\Temperature();
		$testTemperature->set_value_celsius($input);
		
		$actual = $testTemperature->get_value_fahrenheit();
		$result = $actual == $expected;
		
		echo "Unit Test: Celsius to Fahrenheit\n";
		echo "Input:     " . $input . "\n";
		echo "Expected:  " . $expected . "\n";
		echo "Actual:    " . $actual . "\n";
		echo "Result:    Test " . ($result ? "successful" : "failed") . "!\n\n";
		
		return $result;
	}
	
	/*
	* Tests conversion of Fahrenheit to Celsius
	* 
	* @param input The desired temperature in Fahrenheit.
	* @param expected The expected temperature in Celsius.
	* @return boolean Whether the result matched the expectation.
	*/
	function testFahrenheitToCelsius($input, $expected)
	{
		$testTemperature = new UOM\Temperature();
		$testTemperature->set_value_fahrenheit($input);
		
		$actual = $testTemperature->get_value_celsius();
		$result = $actual == $expected;
		
		echo "Unit Test: Fahrenheit to Celsius\n";
		echo "Input:     " . $input . "\n";
		echo "Expected:  " . $expected . "\n";
		echo "Actual:    " . $actual . "\n";
		echo "Result:    Test " . ($result ? "successful" : "failed") . "!\n\n";
		
		return $result;
	}
	
	echo "<pre>";
	$test1 = testCelsiusToFahrenheit(100, 212);
	$test2 = testFahrenheitToCelsius(212, 100);
	echo "</pre>";
?>