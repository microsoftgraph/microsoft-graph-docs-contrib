# List role definitions on a resource

Get a collection of role definitions on a resource.

### HTTP request
```http
GET /privilegedAccess/<id>/resources/<id>/roleDefinitions
GET /privilegedAccess/<id>/roleDefinitions?$filter=resourceId+eq+`<resourceId>`
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [governanceRoleDefinition](../resources/governanceroledefinition.md) objects in the response body.
### Example

Get all role definitions of subscription "Wingtip Toys - Prod"
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/resources/e5e7d29d-5465-45ac-885f-4716a5ee74b5/roleDefinitions  
```
##### Response
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-Length: 21906

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#resources('e5e7d29d-5465-45ac-885f-4716a5ee74b5')/roleDefinitions",
    "value":[
    {
      "id":"25cbd04a-2ccf-4ec8-be64-e903c3a1ea91",
      "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
      "externalId":null,
      "templateId":"25cbd04a-2ccf-4ec8-be64-e903c3a1ea91",
      "displayName":"Custom Role 3",
    },
    {
      "id":"a67ab505-f28a-4d05-919f-e7ba1c9e126c",
      "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
      "externalId":null,
      "templateId":"a67ab505-f28a-4d05-919f-e7ba1c9e126c",
      "displayName":"Custom View Role",
    },
    {
      "id":"6e450c50-3f8d-4740-a2f5-35032016ae85",
      "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
      "externalId":null,
      "templateId":"6e450c50-3f8d-4740-a2f5-35032016ae85",
      "displayName":"Custom View VM Role",
    },
    {
      "id":"312a565d-c81f-4fd8-895a-4e21e48d571c",
      "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
      "externalId":null,
      "templateId":"312a565d-c81f-4fd8-895a-4e21e48d571c",
      "displayName":"API Management Service Contributor",
    },
    {
      "id":"e022efe7-f5ba-4159-bbe4-b44f577e9b61",
      "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
      "externalId":null,
      "templateId":"e022efe7-f5ba-4159-bbe4-b44f577e9b61",
      "displayName":"API Management Service Operator Role",
    },
    ...
    {
      "id":"de139f84-1756-47ae-9be6-808fbbe84772",
      "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
      "externalId":null,
      "templateId":"de139f84-1756-47ae-9be6-808fbbe84772",
      "displayName":"Website Contributor",
    }
  ]
}
```