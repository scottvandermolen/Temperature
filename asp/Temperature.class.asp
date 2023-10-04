<%
	' ASP Temperature Class
	' 
	' Copyright (c) 2023, Scott Vander Molen; some rights reserved.
	' 
	' This work is licensed under a Creative Commons Attribution 4.0 International License.
	' To view a copy of this license, visit https://creativecommons.org/licenses/by/4.0/
	' 
	' @author  Scott Vander Molen
	' @version 2.0
	' @since   2023-10-03
	'
	' https://en.wikipedia.org/wiki/Conversion_of_scales_of_temperature
	class Temperature
		' Value is stored as a floating point in Kelvin.
		private m_value_kelvin
		
		' Constructor
		private sub Class_Initialize()
			' Constructor does not support parameters, so nothing to do until the user provides a value.
		end sub
		
		' Set the temperature value in Celsius
		' 
		' @param input The desired temperature value in Celsius.
		public property let value_celsius(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = input + 273.15
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Delisle
		' 
		' @param input The desired temperature value in Delisle.
		public property let value_delisle(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = 373.15 - input * 2 / 3
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Fahrenheit
		' 
		' @param input The desired temperature value in Fahrenheit.
		public property let value_fahrenheit(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = (input - 32) * 5 / 9 + 273.15
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Kelvin
		' 
		' @param input The desired temperature value in Kelvin.
		public property let value_kelvin(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = input
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Newton
		' 
		' @param input The desired temperature value in Newton.
		public property let value_newton(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = input * 100 / 33 + 273.15
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Rankine
		' 
		' @param input The desired temperature value in Rankine.
		public property let value_rankine(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = input / 1.8
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Réaumur
		' 
		' @param input The desired temperature value in Réaumur.
		public property let value_reaumur(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = input * 5 / 4 + 273.15
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Set the temperature value in Rømer
		' 
		' @param input The desired temperature value in Rømer.
		public property let value_romer(input)
			' Make sure we're getting a numeric value.
			if isNumeric(input) then
				' Store value in member variable.
				m_value_kelvin = (input - 7.5) * 40 / 21 + 273.15
			else
				' Unrecognized input. Throw error "type mismatch".
				Err.Raise 13
			end if
		end property
		
		' Get the temperature value in Celsius
		' 
		' @param input The desired temperature value in Celsius.
		public property get value_celsius()
			value_celsius = m_value_kelvin - 273.15
		end property
		
		' Get the temperature value in Delisle
		' 
		' @param input The desired temperature value in Delisle.
		public property get value_delisle()
			value_delisle = (373.15 - m_value_kelvin) * 3 / 2
		end property
		
		' Get the temperature value in Fahrenheit
		' 
		' @param input The desired temperature value in Fahrenheit.
		public property get value_fahrenheit()
			value_fahrenheit = (m_value_kelvin - 273.15) * 9 / 5 + 32
		end property
		
		' Get the temperature value in Kelvin
		' 
		' @param input The desired temperature value in Kelvin.
		public property get value_kelvin()
			value_kelvin = m_value_kelvin
		end property
		
		' Get the temperature value in Newton
		' 
		' @param input The desired temperature value in Newton.
		public property get value_newton()
			value_newton = (m_value_kelvin - 273.15) * 33 / 100
		end property
		
		' Get the temperature value in Rankine
		' 
		' @param input The desired temperature value in Rankine.
		public property get value_rankine()
			value_rankine = m_value_kelvin * 1.8
		end property
		
		' Get the temperature value in Réaumur
		' 
		' @param input The desired temperature value in Réaumur.
		public property get value_reaumur()
			value_reaumur = (m_value_kelvin - 273.15) * 4 / 5
		end property
		
		' Get the temperature value in Rømer
		' 
		' @param input The desired temperature value in Rømer.
		public property get value_romer()
			value_romer = (m_value_kelvin - 273.15) * 21 / 40 + 7.5
		end property
	end class
%>