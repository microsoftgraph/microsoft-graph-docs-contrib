# governanceRoleAssignmentRequest: Get

Get a role assignment request. 

### HTTP request

```http
GET /privilegedAccess/<id>/roleAssignmentRequests/<id>
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
If successful, this method returns a `200 OK` response code and a [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) object in the response body.

### Example : 
Get a role assignment request
##### Request

```http
GET https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignmentRequests/7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee?$expand=subject,roleDefinition($expand=resource)
```
##### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 279

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleAssignmentRequests",
    "value":
        {
            "id": "7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee",
            "resourceId": "bc6f10e6-6dd9-4393-853e-09e13c036b17",
            "roleDefinitionId": "7fd64851-3279-459b-b614-e2b2ba760f5b",
            "subjectId": "795ed4a8-e4e5-48f5-b60c-ee9845a7a793",
            "assignmentState": "Eligible",
            "requestType": "AdminAdd",
            "requestedDateTime": "2017-09-27T23:01:44.127Z",
            "roleAssignmentStartDateTime": "2017-10-05T23:01:15.99Z",
            "status": "Granted",
            "reason": null,
            "statusDetail": [
                {
                    "key": "AdminRequestRule",
                    "value": "Grant"
                },
                {
                    "key": "ExpirationRule",
                    "value": "Grant"
                },
                {
                    "key": "MfaRule",
                    "value": "Grant"
                }
            ],
            "schedule": {
                "duration": "PT0S",
                "type": "Once",
                "details": null,
                "startDateTime": "2017-10-05T23:01:15.99Z",
                "isPermanent": false,
                "stopDateTime": "2017-12-26T23:01:15.99Z"
            },
            "linkedEligibleRoleAssignmentId": null,
            "subject@odata.context": "https://graph.microsoft.com/beta/$metadata#roleAssignmentRequests('7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee')/subject/$entity",
            "subject": {
                "id": "795ed4a8-e4e5-48f5-b60c-ee9845a7a793",
                "displayName": "alpha",
                "type": "User",
                "principalName": "alpha@microsoft.com",
                "email": "alpha@microsoft.com"
            },
            "roleDefinition@odata.context": "https://graph.microsoft.com/beta/$metadata#roleAssignmentRequests('7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee')/roleDefinition/$entity",
            "roleDefinition": {
                "id": "7fd64851-3279-459b-b614-e2b2ba760f5b",
                "templateId": "7fd64851-3279-459b-b614-e2b2ba760f5b",
                "displayName": "Office DevOps",
                "ruleSettings": [],
                "resource@odata.context": "https://graph.microsoft.com/beta/$metadata#roleAssignmentRequests('7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee')/roleDefinition/resource/$entity",
                "resource": {
                    "id": "bc6f10e6-6dd9-4393-853e-09e13c036b17",
                    "externalId": "/subscriptions/b3797212-a671-4ab5-b866-d71fd4159334",
                    "displayName": "alpha",
                    "resourceType": "subscription",
                    "status": "Active",
                }
            }
        }
}
```