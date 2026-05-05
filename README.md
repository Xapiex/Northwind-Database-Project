# Proyecto Base de Datos Northwind
OLTP and Data Warehouse design based on Northwind - SQL Server

## Diseño de esquema de base de datos transaccional (OLTP) y modelo analítico(DW) — SQL Server

## Descripcion del proyecto

Este proyecto implementa una base de datos transacionales(OLTP)
y una base de datos de modelo analitico (DW) basado en la base de datos
'Northwind', utilizando SQL Server and Visual Studio SSDT
L Server and Visual Studio SSDT.

## Dominio del negocio 
VENTAS
Compañia comercializadora de comida y bebidas, que gestiona clientes,
ordenes, productos, proveedores y empleados a lo largo de varios paises 
---

## Modelo OLTP

### Decisiones de diseño
- CustomerID cambio de tipo de datos, antes utilizaba 'nchar(5)'
  ahora utiliza 'INT' cambiada por razones de escalabilidad y desempeño
- ShippingAddresses extraido en una tabla separada para eleminar 
  la redundancia en Ordenes, porque no describia la tabla.
- La columna Region fue retirada de Customer, Employess,
  Supliers debido a la inconsitencia de valores, 'NULL'  
- Columa de Photo eliminada de trabajadores para evitar almacenar 
  datos binarios en la base de datos, se mantuvo PhotoPath
- CustomerDemographics and CustomerCustomerDemo Eliminadas
  ambas vacias sin ningun valor de analisis
- rowversion columnas eliminadas de todas las tablas

### Tablas (12)
| Table | Description |
|---|---|
| Customers | Clientes de la compañia|
| Orders | Transacciones de Ventas |
| OrderDetails | Articulos por pedido |
| ShippingAddresses | Direccion de destino (nuevo) |
| Products | Catalogo de productos |
| Categories | Categorias de productos |
| Suppliers | Proovedores de productos |
| Shippers | Compañias de envios |
| Employees | Personal de Venta |
| EmployeeTerritories | Territorios de empleados |
| Territories | Territorio de ventas |
| Region | Regiones graficas |

### Normalization Applied
- **1NF** — All columns contain atomic values, no repeating groups
- **2NF** — All non-key columns depend on the full primary key
- **3NF** — No transitive dependencies, ShippingAddresses 
  extracted from Orders

---

## Data Warehouse Model

### Schema Type
Star Schema

### Fact Table (Hechos)

### Metricas
| Metrica | Calculo |
|---|---|
| Ingresos | PrecioUnitario × Cantidad × (1 - Descuento) |
| Unidades vendidas | Cantidad |
| Discount Amount | UnitPrice × Quantity × Discount |
| Freight Cost | Freight from Orders |
| Order Count | COUNT(DISTINCT OrderID) |

### Dimensions (5)
| Dimensiones | Source |
|---|---|
| DimDate | Generado de OrderDate |
| DimCustomer | Customers |
| DimProduct | Products + Categories + Suppliers |
| DimEmployee | Employees (self-join for manager name) |
| DimGeography | ShippingAddresses |

---

## Deployment Instructions

### Requeriminetos
- SQL Server 2019 or later
- SQL Server Management Studio (SSMS)
- Visual Studio with SSDT installed

### Option A — Implementar mediante Scrits
1. Open SSMS
2. Ejecutar `OLTP/01_OLTP_CreateTables.sql`
3. Ejecutar `OLTP/02_OLTP_InsertData.sql`
4. Ejecutar `DataWarehouse/03_DW_CreateTables.sql`
5. Ejecutar `DataWarehouse/04_DW_ETL.sql`

### Option B — Implementar mediante DACPAC
1. Abrir SSMS
2. Right click **Databases** → **Deploy Data-tier Application**
3. Seleccionar `DACPAC/Northwind_OLTP.dacpac`
4. Repetir para `DACPAC/Northwind_DW.dacpac`

---

## Repository Structure
