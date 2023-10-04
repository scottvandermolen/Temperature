<%
    ' ASP Temperature Conversion Library
    '
    ' Copyright (c) 2008, reusablecode.blogspot.com; some rights reserved.
    '
    ' This work is licensed under the Creative Commons Attribution License. To view
    ' a copy of this license, visit http://creativecommons.org/licenses/by/3.0/ or
    ' send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California
    ' 94305, USA.
    '
    ' This function library allows conversion between temperatures in the following scales:
    ' Celsius, Delisle, Fahrenheit, Kelvin, Newton, Rankine, Reaumur, and Romer.
    '
    ' Refer to Wikipedia for information on these temperature scales.
    
    ' Facade function, in case you'd rather not call the individual functions directly or you just like encapsulation.
    function convertTemperature(temperature, originScale, targetScale)
        ' Return the input value for temperature if both scales are identical.
        if UCASE(originScale) = UCase(targetScale) then
            convertTemperature = temperature
            exit function
        end if

        Select Case UCase(originScale)
        Case "CELSIUS"
            Select Case UCase(targetScale)
            Case "DELISLE"
                convertTemperature = CelsiusToDelisle(temperature)
            Case "FAHRENHEIT"
                convertTemperature = CelsiusToFahrenheit(temperature)
            Case "KELVIN"
                convertTemperature = CelsiusToKelvin(temperature)
            Case "NEWTON"
                convertTemperature = CelsiusToNewton(temperature)
            Case "RANKINE"
                convertTemperature = CelsiusToRankine(temperature)
            Case "REAUMUR"
                convertTemperature = CelsiusToReaumur(temperature)
            Case "ROMER"
                convertTemperature = CelsiusToRomer(temperature)
            End Select
        Case "DELISLE"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = DelisleToCelsius(temperature)
            Case "FAHRENHEIT"
                convertTemperature = DelisleToFahrenheit(temperature)
            Case "KELVIN"
                convertTemperature = DelisleToKelvin(temperature)
            Case "NEWTON"
                convertTemperature = DelisleToNewton(temperature)
            Case "RANKINE"
                convertTemperature = DelisleToRankine(temperature)
            Case "REAUMUR"
                convertTemperature = DelisleToReaumur(temperature)
            Case "ROMER"
                convertTemperature = DelisleToRomer(temperature)
            End Select
        Case "FAHRENHEIT"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = FahrenheitToCelsius(temperature)
            Case "DELISLE"
                convertTemperature = FahrenheitToDelisle(temperature)
            Case "KELVIN"
                convertTemperature = FahrenheitToKelvin(temperature)
            Case "NEWTON"
                convertTemperature = FahrenheitToNewton(temperature)
            Case "RANKINE"
                convertTemperature = FahrenheitToRankine(temperature)
            Case "REAUMUR"
                convertTemperature = FahrenheitToReaumur(temperature)
            Case "ROMER"
                convertTemperature = FahrenheitToRomer(temperature)
            End Select
        Case "KELVIN"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = KelvinToCelsius(temperature)
            Case "DELISLE"
                convertTemperature = KelvinToDelisle(temperature)
            Case "FAHRENHEIT"
                convertTemperature = KelvinToFahrenheit(temperature)
            Case "NEWTON"
                convertTemperature = KelvinToNewton(temperature)
            Case "RANKINE"
                convertTemperature = KelvinToRankine(temperature)
            Case "REAUMUR"
                convertTemperature = KelvinToReaumur(temperature)
            Case "ROMER"
                convertTemperature = KelvinToRomer(temperature)
            End Select
        Case "NEWTON"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = NewtonToCelsius(temperature)
            Case "DELISLE"
                convertTemperature = NewtonToDelisle(temperature)
            Case "FAHRENHEIT"
                convertTemperature = NewtonToFahrenheit(temperature)
            Case "KELVIN"
                convertTemperature = NewtonToKelvin(temperature)
            Case "RANKINE"
                convertTemperature = NewtonToRankine(temperature)
            Case "REAUMUR"
                convertTemperature = NewtonToReaumur(temperature)
            Case "ROMER"
                convertTemperature = NewtonToRomer(temperature)
            End Select
        Case "RANKINE"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = RankineToCelsius(temperature)
            Case "DELISLE"
                convertTemperature = RankineToDelisle(temperature)
            Case "FAHRENHEIT"
                convertTemperature = RankineToFahrenheit(temperature)
            Case "KELVIN"
                convertTemperature = RankineToKelvin(temperature)
            Case "NEWTON"
                convertTemperature = RankineToNewton(temperature)
            Case "REAUMUR"
                convertTemperature = RankineToReaumur(temperature)
            Case "ROMER"
                convertTemperature = RankineToRomer(temperature)
            End Select
        Case "REAUMUR"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = ReaumurToCelsius(temperature)
            Case "DELISLE"
                convertTemperature = ReaumurToDelisle(temperature)
            Case "FAHRENHEIT"
                convertTemperature = ReaumurToFahrenheit(temperature)
            Case "KELVIN"
                convertTemperature = ReaumurToKelvin(temperature)
            Case "NEWTON"
                convertTemperature = ReaumurToNewton(temperature)
            Case "RANKINE"
                convertTemperature = ReaumurToRankine(temperature)
            Case "ROMER"
                convertTemperature = ReaumurToRomer(temperature)
            End Select
        Case "ROMER"
            Select Case UCase(targetScale)
            Case "CELSIUS"
                convertTemperature = RomerToCelsius(temperature)
            Case "DELISLE"
                convertTemperature = RomerToDelisle(temperature)
            Case "FAHRENHEIT"
                convertTemperature = RomerToFahrenheit(temperature)
            Case "KELVIN"
                convertTemperature = RomerToKelvin(temperature)
            Case "NEWTON"
                convertTemperature = RomerToNewton(temperature)
            Case "RANKINE"
                convertTemperature = RomerToRankine(temperature)
            Case "REAUMUR"
                convertTemperature = RomerToReaumur(temperature)
            End Select
        End Select
    end function

    ' Converts a given temperature from Celsius to Delisle.
    function CelsiusToDelisle(temperature)
        CelsiusToDelisle = (100 - temperature) * 3 / 2
    end function

    ' Converts a given temperature from Celsius to Fahrenheit.
    function CelsiusToFahrenheit(temperature)
        CelsiusToFahrenheit = (temperature * 9 / 5) + 32
    end function
    
    ' Converts a given temperature from Celsius to Kelvin.
    function CelsiusToKelvin(temperature)
        CelsiusToKelvin = temperature + 273.15
    end function
    
    ' Converts a given temperature from Celsius to Newton.
    function CelsiusToNewton(temperature)
        CelsiusToNewton = temperature * 33 / 100
    end function
    
    ' Converts a given temperature from Celsius to Rankine.
    function CelsiusToRankine(temperature)
        CelsiusToRankine = (temperature + 273.15) * 1.8
    end function
    
    ' Converts a given temperature from Celsius to Reaumur.
    function CelsiusToReaumur(temperature)
        CelsiusToReamur = temperature * 4 / 5
    end function
    
    ' Converts a given temperature from Celsius to Romer.
    function CelsiusToRomer(temperature)
        CelsiusToRomer = temperature * 21 / 40 + 7.5
    end function
    
    ' Converts a given temperature from Delisle to Celsius.
    function DelisleToCelsius(temperature)
        DelisleToCelsius = 100 - temperature * 2 / 3
    end function
    
    ' Converts a given temperature from Delisle to Fahrenheit.
    function DelisleToFahrenheit(temperature)
        DelisleToFahrenheit = 212 - temperature * 6 / 5
    end function

    ' Converts a given temperature from Delisle to Kelvin.
    function DelisleToKelvin(temperature)
        DelisleToKelvin = 373.15 - temperature * 2 / 3
    end function
    
    ' Converts a given temperature from Delisle to Newton.
    function DelisleToNewton(temperature)
        DelisleToNewton = 33 - temperature * 11 / 50
    end function
    
    ' Converts a given temperature from Delisle to Rankine.
    function DelisleToRankine(temperature)
        DelisleToRankine = 671.67 - temperature * 6 / 5
    end function
    
    ' Converts a given temperature from Delisle to Reaumur.
    function DelisleToReaumur(temperature)
        DelisleToReaumur = 80 - temperature * 8 / 15
    end function
    
    ' Converts a given temperature from Delisle to Romer.
    function DelisleToRomer(temperature)
        DelisleToRomer = 60 - temperature * 7 / 20
    end function

    ' Converts a given temperature from Fahrenheit to Celsius.
    function FahrenheitToCelsius(temperature)
        FahrenheitToCelsius = (temperature - 32) * 5 / 9
    end function
    
    ' Converts a given temperature from Fahrenheit to Delisle.
    function FahrenheitToDelisle(temperature)
        FahrenheitToDelisle = (212 - temperature) * 5 / 6
    end function
    
    ' Converts a given temperature from Fahrenheit to Kelvin.
    function FahrenheitToKelvin(temperature)
        FahrenheitToKelvin = (temperature - 32) * 5 / 9 + 273.15
    end function
    
    ' Converts a given temperature from Fahrenheit to Newton.
    function FahrenheitToNewton(temperature)
        FahrenheitToNewton = (temperature - 32) * 11 / 60
    end function
    
    ' Converts a given temperature from Fahrenheit to Rankine.
    function FahrenheitToRankine(temperature)
        FahrenheitToRankine = temperature + 459.67
    end function
    
    ' Converts a given temperature from Fahrenheit to Reamur.
    function FahrenheitToReaumur(temperature)
        FahrenheitToReaumur = (temperature - 32) * 4 / 9
    end function
    
    ' Converts a given temperature from Fahrenheit to Romer.
    function FahrenheitToRomer(temperature)
        FahrenheitToRomer = (temperature - 32) * 7 / 24 + 7.5
    end function

    ' Converts a given temperature from Kelvin to Celsius.
    function KelvinToCelsius(temperature)
        KelvinToCelsius = temperature - 273.15
    end function
    
    ' Converts a given temperature from Kelvin to Delisle.
    function KelvinToDelisle(temperature)
        KelvinToDelisle = (373.15 - temperature) * 3 / 2
    end function
    
    ' Converts a given temperature from Kelvin to Fahrenheit.
    function KelvinToFahrenheit(temperature)
        KelvinToFahrenheit = (temperature - 273.15) * 9 / 5 + 32
    end function
    
    ' Converts a given temperature from Kelvin to Newton.
    function KelvinToNewton(temperature)
        KelvinToNewton = (temperature - 273.15) * 33 / 100
    end function
    
    ' Converts a given temperature from Kelvin to Rankine.
    function KelvinToRankine(temperature)
        KelvinToRankine = temperature * 1.8
    end function
    
    ' Converts a given temperature from Kelvin to Reaumur.
    function KelvinToReaumur(temperature)
        KelvinToReaumur = (temperature - 273.15) * 4 / 5
    end function
    
    ' Converts a given temperature from Kelvin to Romer.
    function KelvinToRomer(temperature)
        KelvinToRomer = (temperature - 273.15) * 21 / 40 + 7.5
    end function
    
    ' Converts a given temperature from Newton to Celsius.
    function NewtonToCelsius(temperature)
        NewtonToCelsius = temperature * 100 / 33
    end function
    
    ' Converts a given temperature from Newton to Delisle.
    function NewtonToDelisle(temperature)
        NewtonToDelisle = (33 - temperature) * 50 / 11
    end function

    ' Converts a given temperature from Newton to Fahrenheit.
    function NewtonToFahrenheit(temperature)
        NewtonToFahrenheit = temperature * 60 / 11 + 32
    end function
    
    ' Converts a given temperature from Newton to Kelvin.
    function NewtonToKelvin(temperature)
        NewtonToKelvin = temperature * 100 / 33 + 273.15
    end function
    
    ' Converts a given temperature from Newton to Rankine.
    function NewtonToRankine(temperature)
        NewtonToRankine = temperature * 60 / 11 + 491.67
    end function
    
    ' Converts a given temperature from Newton to Reaumur.
    function NewtonToReaumur(temperature)
        NewtonToReaumur = temperature * 80 / 33
    end function
    
    ' Converts a given temperature from Newton to Romer.
    function NewtonToRomer(temperature)
        NewtonToRomer = temperature * 35 / 22 + 7.5
    end function

    ' Converts a given temperature from Rankine to Celsius.
    function RankineToCelsius(temperature)
        RankineToCelsius = (temperature / 1.8) - 273.15
    end function
    
    ' Converts a given temperature from Rankine to Delisle.
    function RankineToDelisle(temperature)
        RankineToDelisle = (671.67 - temperature) * 5 / 6
    end function

    ' Converts a given temperature from Rankine to Fahrenheit.
    function RankineToFahrenheit(temperature)
        RankineToFahrenheit = temperature - 459.67
    end function
    
    ' Converts a given temperature from Rankine to Kelvin.
    function RankineToKelvin(temperature)
        RankineToKelvin = temperature / 1.8
    end function
    
    ' Converts a given temperature from Rankine to Newton.
    function RankineToNewton(temperature)
        RankineToNewton = (temperature - 491.67) * 11 / 60
    end function

    ' Converts a given temperature from Rankine to Reaumur.
    function RankineToReaumur(temperature)
        RankineToReaumur = (temperature * 5 / 9 - 273.15) * 4 / 5
    end function
    
    ' Converts a given temperature from Rankine to Romer.
    function RankineToRomer(temperature)
        RankineToRomer = (temperature - 491.67) * 7 / 24 + 7.5
    end function
    
    ' Converts a given temperature from Reaumur to Celsius.
    function ReaumurToCelsius(temperature)
        ReaumurToCelsius = temperature * 5 / 4
    end function
    
    ' Converts a given temperature from Reaumur to Delisle.
    function ReaumurToDelisle(temperature)
        ReaumurToDelisle = (80 - temperature) * 15 / 8
    end function
    
    ' Converts a given temperature from Reaumur to Fahrenheit.
    function ReaumurToFahrenheit(temperature)
        ReaumurToFahrenheit = temperature * 9 / 4 + 32
    end function

    ' Converts a given temperature from Reaumur to Kelvin.
    function ReaumurToKelvin(temperature)
        ReaumurToKelvin = temperature * 5 / 4 + 273.15
    end function

    ' Converts a given temperature from Reaumur to Newton.
    function ReaumurToNewton(temperature)
        ReaumurToNewton = temperature * 33 / 80
    end function

    ' Converts a given temperature from Reaumur to Rankine.
    function ReaumurToRankine(temperature)
        ReaumurToRankine = temperature * 9 / 4 + 491.67
    end function
    
    ' Converts a given temperature from Reaumur to Romer.
    function ReaumurToRomer(temperature)
        ReaumurToRomer = temperature * 21 / 32 + 7.5
    end function
    
    ' Converts a given temperature from Romer to Celsius.
    function RomerToCelsius(temperature)
        RomerToCelsius = (temperature - 7.5) * 40 / 21
    end function
    
    ' Converts a given temperature from Romer to Delisle.
    function RomerToDelisle(temperature)
        RomerToDelisle = (60 - temperature) * 20 / 7
    end function
    
    ' Converts a given temperature from Romer to Fahrenheit.
    function RomerToFahrenheit(temperature)
        RomerToFahrenheit = (temperature - 7.5) * 24 / 7 + 32
    end function

    ' Converts a given temperature from Romer to Kelvin.
    function RomerToKelvin(temperature)
        RomerToKelvin = (temperature - 7.5) * 40 / 21 + 273.15
    end function
    
    ' Converts a given temperature from Romer to Newton.
    function RomerToNewton(temperature)
        RomerToNewton = (temperature - 7.5) * 22 / 35
    end function
    
    ' Converts a given temperature from Romer to Rankine.
    function RomerToRankine(temperature)
        RomerToRankine = (temperature - 7.5) * 24 / 7 + 491.67
    end function
    
    ' Converts a given temperature from Romer to Reaumur.
    function RomerToReaumur(temperature)
        RomerToReaumur = (temperature - 7.5) * 32 / 21
    end function
%>