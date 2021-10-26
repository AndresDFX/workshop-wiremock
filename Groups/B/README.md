# B

## Ejercicio 1
Modificar el request del endpoint XXXX, la clave “date” para que permita valores ENTRE 1990-12-10 (Diciembre 12 de 1990) y 2020-12-10 (Diciembre 10 de 2020). Crear un caso de prueba exitoso para este endpoint.

---

## Ejercicio 2
Crear un endpoint con la estructura propuesta y crear un caso de prueba exitoso desde Postman.

### URL
**/workshop/A/**

### Method
**POST**

### Headers

| Attribute     | Description       | Type               | Length  | Mandatory |
|---------------|-------------------|--------------------|---------|-----------|
| Authorization | Type: Bearer      | String             |         | Y         |
| Content-type  |                   | application/json   |         | Y         |

### Body

| Attribute | Description            | Type    | Length | Mandatory |
|-----------|------------------------|---------|--------|-----------|
| flag      |                        | Boolean |        | Y         |
| date      | Pattern: YYYY-MM-DD    | String  |        | Y         |
| hour      | Pattern: hh:mm:ss AM/PM| String  |        | Y         |
| config    |                        | Object  |        | Y         |

### config

| Attribute | Description    | Type    | Length | Mandatory |
|-----------|----------------|---------|--------|-----------|
| constant  | Constant: Test | String  |        | Y         |
| string    | Only letters   | String  | 5      | Y         |
| number    | Example: 2.1   | Decimal |        | Y         |

### Response 200

| Attribute | Value                            | Type              |
|-----------|----------------------------------|-------------------|
| correct   | Correct example                  | String            |

### Response 400

| Attribute | Value                            | Type              |
|-----------|----------------------------------|-------------------|
| correct   | Not working validation           | String            |


