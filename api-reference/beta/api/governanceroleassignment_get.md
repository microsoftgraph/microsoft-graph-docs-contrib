# Get a role assignment

Retrieve the properties and relationships of a role assignment.

### HTTP request

```http
GET /privilegedAccess/<id>/roleAssignments/<id>
```

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [governanceRoleAssignment](../resources/governanceroleassignment.md) object in the response body.
### Example : 
Get a single role assignment by id
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignments/9102e255-0f98-45d1-967d-00ddd0fd0200/?$expand=linkedEligibleRoleAssignment,subject,roleDefinition($expand=resource)
```
##### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 182

{
  "id": "9102e255-0f98-45d1-967d-00ddd0fd0200",
  "resourceId":"8575d82b-c7b6-4c69-8eee-1d452985a64e",
  "roleDefinitionId":"312a565d-c81f-4fd8-895a-4e21e48d571c",
  "subjectId":"795ed4a8-e4e5-48f5-b60c-ee9845a7a790",
  "linkedEligibleAssignmentId":null,   
  "externalId": "/subscriptions/f90f7b96-b06f-4ee4-bc38-a001deb2375f/providers/Microsoft.Authorization/roleAssignments/9102e255-0f98-45d1-967d-00ddd0fd0200",
  "isPermanent": true,
  "endDateTime": null,
  "startDateTime": null,
  "assignmentState": "Member",
  "memberType": "Direct",
  "linkedEligibleAssignment": null,
  "subject": {
    "id": "795ed4a8-e4e5-48f5-b60c-ee9845a7a790",
    "displayName": "af",
    "type": "User",
    "principalName": "af@foo.com",
    "email": "af@foo.com"
  },
  "roleDefinition": {
    "id": "312a565d-c81f-4fd8-895a-4e21e48d571c",
    "resourceId": "8575d82b-c7b6-4c69-8eee-1d452985a64e",
    "externalId": null,
    "templateId": "312a565d-c81f-4fd8-895a-4e21e48d571c",
    "displayName": "API Management Service Contributor",
    "resource": {
      "id": "8575d82b-c7b6-4c69-8eee-1d452985a64e",
      "externalId": "/subscriptions/f90f7b96-b06f-4ee4-bc38-a001deb2375f",
      "displayName": "Deep Dive",
      "type": "subscription",
    }
  }
}
```