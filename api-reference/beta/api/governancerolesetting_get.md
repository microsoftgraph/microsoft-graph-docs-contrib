# Get roleSetting

Retrieve the properties and relationships of roleSetting object.

### HTTP request
```http
GET /privilegedAccess/<id>/roleSettings/<id>
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
If successful, this method returns a `200 OK` response code and [governanceRoleSetting](../resources/governancerolesetting.md) object in the response body.
### Example
##### Request

```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleSettings/5fb5aef8-1081-4b8e-bb16-9d5d0385bab5
```
##### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 370

{
  "@odata.context":"https://graph.microsoft.com/beta/governanceScenarios/pimforazurerbac/roleSettings$entity",
  "id":"5fb5aef8-1081-4b8e-bb16-9d5d0385bab5",
  "resourceId": "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
  "roleDefinitionId": "625c9904-2028-474e-946f-4d7f5b04d24c",           
  "isDefault":false,
  "lastUpdated":"2018-02-13T20:07:59.687Z",
  "lastUpdatedBy":"vijag",
  "adminEligibleSettings":[
    {
      "ruleIdentifier":"ExpirationRule",
      "setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"
    }
  ],
  "adminMemberSettings":[
    {
      "ruleIdentifier":"ExpirationRule",
      "setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":43200}"
    },{
      "ruleIdentifier":"MfaRule",
      "setting":"{\"mfaRequired\":false}"
    },{
      "ruleIdentifier":"JustificationRule",
      "setting":"{\"required\":true}"
    }
  ],
  "userEligibleSettings":[  
  ],
  "userMemberSettings":[
    {
      "ruleIdentifier":"ExpirationRule",
      "setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":480}"
    },{
      "ruleIdentifier":"MfaRule",
      "setting":"{\"mfaRequired\":false}"
    },{
      "ruleIdentifier":"JustificationRule",
      "setting":"{\"required\":true}"
    }
  ]
}
```
