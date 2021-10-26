# Grupo D

---

## Ejercicio 1
En el request del endpoint **/workshop**, la clave *"number"* para que permita valores **SOLO** de tipo Integer. Crear un caso de prueba exitoso desde Postman para este endpoint.

---

## Ejercicio 2
Crear un endpoint con la estructura propuesta y crear un caso de prueba exitoso desde Postman para este endpoint.

### URL
*/workshop/D*
### Method
*POST*

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
| last      |                | Object  |        | Y         |


### last

| Attribute | Description              | Type    | Length | Mandatory |
|-----------|--------------------------|---------|--------|-----------|
| email     | Pattern: text@text.text  | String  |        | Y         |

### Response 200

| Attribute | Value                            | Type              |
|-----------|----------------------------------|-------------------|
| correct   | Correct example                  | String            |

### Response 400

| Attribute | Value                            | Type              |
|-----------|----------------------------------|-------------------|
| correct   | Not working validation           | String            |


