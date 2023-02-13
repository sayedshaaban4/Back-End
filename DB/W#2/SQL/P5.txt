select 
case
when A = B and A = C then 'Equilateral'
when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
when A = B or A = C or B = C then 'Isosceles'
else 'Scalene'
end