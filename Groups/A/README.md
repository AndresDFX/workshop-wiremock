# A

## Ejercicio 1
Modificar el request del endpoint que tiene la URL **/workshop**, la clave “date” para que permita valores SOLO posteriores al 1990-12-10 (Diciembre 12 de 1990). Crear un caso de prueba exitoso desde Postman para este endpoint.

---

## Ejercicio 2
Crear un endpoint con la estructura propuesta y crear un caso de prueba exitoso desde Postman para este endpoint.

### URL
**/workshop/A/**

### Method
**POST**

### Headers

| Attribute     | Description       | Type               | Length  | Mandatory |
|---------------|-------------------|--------------------|---------|-----------|
| Authorization | Type: Auth        | String             |         | Y         |
| Content-type  |                   | application/json   |         | Y         |

### Body

| Attribute | Description            | Type    | Length | Mandatory |
|-----------|------------------------|---------|--------|-----------|
| flag      |                        | Boolean |        | Y         |
| date      | Pattern: YYYY/MM/DD    | String  |        | Y         |
| hour      | Pattern: hh:mm:ss      | String  |        | Y         |
| config    |                        | Object  |        | Y         |

### config

| Attribute | Description    | Type    | Length | Mandatory |
|-----------|----------------|---------|--------|-----------|
| constant  | Constant: Test | String  |        | Y         |
| string    | Only letters   | String  |        | Y         |
| number    | Only numbers   | Integer |        | Y         |

### Response 200

| Attribute | Value                            | Type              |
|-----------|----------------------------------|-------------------|
| correct   | Correct example                  | String            |

### Response 400

| Attribute | Value                            | Type              |
|-----------|----------------------------------|-------------------|
| correct   | Not working validation           | String            |


