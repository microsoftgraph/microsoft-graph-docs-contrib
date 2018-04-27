# governanceRoleDefinition: Get

Retrieve the properties and relationships of a role definition entity.

### HTTP request

```http
GET /privilegedAccess/<id>/roleDefinitions/<id>
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [governanceRoleDefinition](../resources/governanceroledefinition.md) object in the response body.
### Example : 
Get details of role Definition "Azure Service Deploy Release Management Contributor" in subscription "Wingtip Toys - Prod"
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleDefinitions/21d96096-b162-414a-8302-d8354f9d91b2
```
##### Response
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 174

{
  "@odata.context":"https://api.azrbac.mspim.azure.com/api/v1/$metadata#roleDefinitions/$entity",
  "id":"21d96096-b162-414a-8302-d8354f9d91b2",
  "resourceId":"85dfe48a-55d3-49fc-8f36-ee14b7f6f720",
  "externalId":null,
  "displayName":"Azure Service Deploy Release Management Contributor"
}
```