<%@ CodePage=65001 Language="VBScript"%>
<% Option Explicit %>
<!--#include file="Temperature.class.asp"-->
<%
	' ASP Temperature Class Unit Tests
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

	' Ensure that UTF-8 encoding is used instead of Windows-1252
	Session.CodePage = 65001
	Response.CodePage = 65001
	Response.CharSet = "UTF-8"
	Response.ContentType = "text/html"
	
	' Tests conversion of Celsius to Fahrenheit
	' 
	' @param input The desired temperature in Celsius.
	' @param expected The expected temperature in Fahrenheit.
	' @return boolean Whether the result matched the expectation.
	function testCelsiusToFahrenheit(input, expected)
		dim testTemperature
		set testTemperature = new Temperature
		testTemperature.value_celsius = input
		
		dim actual
		actual = testTemperature.value_fahrenheit
		
		dim result
		dim resultText
		if actual = expected then
			result = true
			resultText = "successful"
		else
			result = false
			resultText = "failed"
		end if
		
		Response.Write "Unit Test: Celsius to Fahrenheit" & vbCrLf
		Response.Write "Input:     " & input & vbCrLf
		Response.Write "Expected:  " & expected & vbCrLf
		Response.Write "Actual:    " & actual & vbCrLf
		Response.Write "Result:    Test " & resultText &  "!" & vbCrLf & vbCrLf
		
		testCelsiusToFahrenheit = result
		set testTemperature = nothing
	end function
	
	' Tests conversion of Fahrenheit to Celsius
	' 
	' @param input The desired temperature in Fahrenheit.
	' @param expected The expected temperature in Celsius.
	' @return boolean Whether the result matched the expectation.
	function testFahrenheitToCelsius(input, expected)
		dim testTemperature
		set testTemperature = new Temperature
		testTemperature.value_fahrenheit = input
		
		dim actual
		actual = testTemperature.value_celsius
		
		dim result
		dim resultText
		if actual = expected then
			result = true
			resultText = "successful"
		else
			result = false
			resultText = "failed"
		end if
		
		Response.Write "Unit Test: Fahrenheit to Celsius" & vbCrLf
		Response.Write "Input:     " & input & vbCrLf
		Response.Write "Expected:  " & expected & vbCrLf
		Response.Write "Actual:    " & actual & vbCrLf
		Response.Write "Result:    Test " & resultText &  "!" & vbCrLf & vbCrLf
		
		testFahrenheitToCelsius = result
		set testTemperature = nothing
	end function
	
	' Create an HTML container for our output.
	Response.Write "<!DOCTYPE html>" & vbCrLf
	Response.Write "<html lang=""en"">" & vbCrLf
	Response.Write "<meta http-equiv=""Content-Type"" content=""text/html;charset=UTF-8"" />" & vbCrLf
	Response.Write "<body>" & vbCrLf
	
	' Display code header
	Response.Write "<pre>"
	Response.Write "/***************************************************************************************\" & vbCrLf
	Response.Write "| ASP Temperature Class Unit Tests                                                      |" & vbCrLf
	Response.Write "|                                                                                       |" & vbCrLf
	Response.Write "| Copyright (c) 2023, Scott Vander Molen; some rights reserved.                         |" & vbCrLf
	Response.Write "|                                                                                       |" & vbCrLf
	Response.Write "| This work is licensed under a Creative Commons Attribution 4.0 International License. |" & vbCrLf
	Response.Write "| To view a copy of this license, visit https://creativecommons.org/licenses/by/4.0/    |" & vbCrLf
	Response.Write "|                                                                                       |" & vbCrLf
	Response.Write "\***************************************************************************************/" & vbCrLf
	Response.Write "</pre>"
	
	' Run unit tests
	Response.Write "<pre>"
	
	dim test1
	test1 = testCelsiusToFahrenheit(100, 212)
	
	dim test2
	test2 = testFahrenheitToCelsius(212, 100)
	
	Response.Write "</pre>" & vbCrLf
	
	' Close the HTML container.
	Response.Write "</body>" & vbCrLf
	Response.Write "</html>"
%>
