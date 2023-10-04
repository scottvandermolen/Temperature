<?php
	namespace ScottVM\UOM; 
	
	/**
	* PHP Temperature Class
	* 
	* Copyright (c) 2023, Scott Vander Molen; some rights reserved.
	* 
	* This work is licensed under a Creative Commons Attribution 4.0 International License.
	* To view a copy of this license, visit https://creativecommons.org/licenses/by/4.0/
	* 
	* @author  Scott Vander Molen
	* @version 2.0
	* @since   2023-10-03
	*
	* https://en.wikipedia.org/wiki/Conversion_of_scales_of_temperature
	*/
	
	// Change debugmode to true if you need to see error messages.
	$debugmode = true;
	if ($debugmode)
	{
		// Allow the display of error during debugging.
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
	}
	else
	{
		// Display a 404 error if the user attempts to access this file directly.
		if (__FILE__ == $_SERVER['SCRIPT_FILENAME'])
		{
			header($_SERVER['SERVER_PROTOCOL'] . ' 404 Not Found');
			exit("<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\r\n<html><head>\r\n<title>404 Not Found</title>\r\n</head><body>\r\n<h1>Not Found</h1>\r\n<p>The requested URL " . $_SERVER['SCRIPT_NAME'] . " was not found on this server.</p>\r\n</body></html>");
		}
	}
	
	class Temperature
	{
		// Value is stored as a floating point in Kelvin.
		private $m_value_kelvin;
		
		/*
		* Set the temperature value in Celsius
		* 
		* @param input The desired temperature value in Celsius.
		*/
		public function set_value_celsius($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input))
			{
				// Store value in member variable.
				$this->m_value_kelvin = $input + 273.15;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_celsius!", E_USER_ERROR);
			}
		}
		
		/*
		* Set the temperature value in Delisle
		* 
		* @param input The desired temperature value in Delisle.
		*/
		public function set_value_delisle($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input))
			{
				// Store value in member variable.
				$this->m_value_kelvin = 373.15 - $input * 2 / 3;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		* Set the temperature value in Fahrenheit
		* 
		* @param input The desired temperature value in Fahrenheit.
		*/
		public function set_value_fahrenheit($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input)) 
			{
				// Store value in member variable.
				$this->m_value_kelvin = ($input - 32) * 5 / 9 + 273.15;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		* Set the temperature value in Kelvin
		* 
		* @param input The desired temperature value in Kelvin.
		*/
		public function set_value_kelvin($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input)) 
			{
				// Store value in member variable.
				$this->m_value_kelvin = $input;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		* Set the temperature value in Newton
		* 
		* @param input The desired temperature value in Newton.
		*/
		public function set_value_newton($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input)) 
			{
				// Store value in member variable.
				$this->m_value_kelvin = $input * 100 / 33 + 273.15;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		*' Set the temperature value in Rankine
		* 
		* @param input The desired temperature value in Rankine.
		*/
		public function set_value_rankine($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input)) 
			{
				// Store value in member variable.
				$this->m_value_kelvin = $input / 1.8;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		* Set the temperature value in Réaumur
		* 
		* @param input The desired temperature value in Réaumur.
		*/
		public function set_value_reaumur($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input)) 
			{
				// Store value in member variable.
				$this->m_value_kelvin = $input * 5 / 4 + 273.15;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		* Set the temperature value in Rømer
		* 
		* @param input The desired temperature value in Rømer.
		*/
		public function set_value_romer($input)
		{
			// Make sure we're getting a numeric value.
			if (is_numeric($input)) 
			{
				// Store value in member variable.
				$this->m_value_kelvin = ($input - 7.5) * 40 / 21 + 273.15;
			}
			else
			{
				// Unrecognized input. Throw error "type mismatch".
				trigger_error("Type mismatch on set_value_delisle!", E_USER_ERROR);
			}
		}
		
		/*
		* Get the temperature value in Celsius
		* 
		* @param input The desired temperature value in Celsius.
		*/
		public function get_value_celsius()
		{
			return $this->m_value_kelvin - 273.15;
		}
		
		/*
		* Get the temperature value in Delisle
		* 
		* @param input The desired temperature value in Delisle.
		*/
		public function get_value_delisle()
		{
			return (373.15 - $this->m_value_kelvin) * 3 / 2;
		}
		
		/*
		* Get the temperature value in Fahrenheit
		* 
		* @param input The desired temperature value in Fahrenheit.
		*/
		public function get_value_fahrenheit()
		{
			return ($this->m_value_kelvin - 273.15) * 9 / 5 + 32;
		}
		
		/*
		* Get the temperature value in Kelvin
		* 
		* @param input The desired temperature value in Kelvin.
		*/
		public function get_value_kelvin()
		{
			return $this->m_value_kelvin;
		}
		
		/*
		* Get the temperature value in Newton
		* 
		* @param input The desired temperature value in Newton.
		*/
		public function get_value_newton()
		{
			return ($this->m_value_kelvin - 273.15) * 33 / 100;
		}
		
		/*
		* Get the temperature value in Rankine
		* 
		* @param input The desired temperature value in Rankine.
		*/
		public function get_value_rankine()
		{
			return $this->m_value_kelvin * 1.8;
		}
		
		/*
		* Get the temperature value in Réaumur
		* 
		* @param input The desired temperature value in Réaumur.
		*/
		public function get_value_reaumur()
		{
			return ($this->m_value_kelvin - 273.15) * 4 / 5;
		}
		
		/*
		* Get the temperature value in Rømer
		* 
		* @param input The desired temperature value in Rømer.
		*/
		public function get_value_romer()
		{
			return ($this->m_value_kelvin - 273.15) * 21 / 40 + 7.5;
		}
	}
?>