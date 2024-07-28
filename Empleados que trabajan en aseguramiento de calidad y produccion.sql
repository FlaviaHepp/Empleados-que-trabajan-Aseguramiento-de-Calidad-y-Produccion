USE AdventureWorks2019
GO

--Se desea saber que empleados trabajan en los departamentos de Aseguramiento de Calidad y Producción por entidad de negocio

SELECT hre.BusinessEntityID, hre.NationalIDNumber AS Numero_identificacion_empleado, hrd.Name AS Departamento
FROM HumanResources.Employee hre
INNER JOIN HumanResources.EmployeeDepartmentHistory hred
ON hre.BusinessEntityID = hred.BusinessEntityID
INNER JOIN HumanResources.Department hrd
ON hred.DepartmentID = hrd.DepartmentID
AND hrd.Name in ('Quality Assurance', 'Production')