@echo off
:menu
echo Please select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
choice /c 123 /m "Choose an option:"

if errorlevel 3 goto Quadrilateral
if errorlevel 2 goto Triangle
if errorlevel 1 goto Circle

:Circle
echo Running circle calculation...
set /p radius=Enter the radius:
set /a area=%radius% * %radius% * 314/100
echo The area of the circle is: %area%
goto menu

:Triangle
set /p a=Enter the length of side a: 
set /p b=Enter the length of side b: 
set /p c=Enter the length of side c: 
rem Check if the sides form a valid triangle
set /a sum_ab=%a%+%b%
set /a sum_bc=%b%+%c%
set /a sum_ca=%c%+%a%

if %sum_ab% leq %c% (
    echo The lengths do not form a valid triangle.
    goto menu
)
if %sum_bc% leq %a% (
    echo The lengths do not form a valid triangle.
    goto menu
)
if %sum_ca% leq %b% (
    echo The lengths do not form a valid triangle.
    goto menu
)

rem Simplified calculation for the area using an approximate method
set /a area=(%a% * %b%) / 2
echo The approximate area of the triangle is %area% square units.

rem Determine the type of triangle
if %a%==%b% if %b%==%c% (
    echo Type of triangle = Equilateral.
) else if %a%==%b% if not %b%==%c% (
    echo Type of triangle = Isosceles.
) else if %a%==%c% if not %c%==%b% (
    echo Type of triangle = Isosceles.
) else if %b%==%c% if not %c%==%a% (
    echo  Type of triangle = Isosceles.
) else (
    echo  Type of triangle = Scalene.
)
goto menu

:Quadrilateral
echo Running quadrilateral calculation...
set /p length=Enter the length:
set /p width=Enter the width:
set /a area=%length% * %width%
if %length%==%width% (
    echo The quadrilateral is a square.
) else (
    echo The quadrilateral is a rectangle.
)
echo The area of the quadrilateral is: %area%
goto menu