# update administrators decision on requests

Administrators can update their decisions (`AdminApproved` or `AdminDenied`) on the requests which are in status of `PendingAdminDecision`.
 
### HTTP request

```http
POST /privilegedAccess/<id>/roleAssignmentRequests/<id>/updateRequest
```

### Request headers
| Name           | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

### Request body
|Parameters	     |Type	                 |Required |Description|
|:-------------|:----------------------|:--------|:----------|
|reason        |String                 |✓        |The reason user provided for the role assignment request, as well as the administrator gives for his decision.|
|decision        |String                 |✓        |The administrator decision of the role assignment request. The value should be updated as `AdminApproved` or `AdminDenied`.|
|schedule      |[governanceSchedule](governanceschedule.md)|         | The schedule of the role assignment request. For status of `AdminApproved`, it is required.|
|assignmentState      |String|         | The state of assignment, and the values can be `Eligible` or `Active`. For decision of `AdminApproved`, it is required.|
### Response
This method can only be applied to requests that are in status of `PendingAdminDecision`.

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignmentRequests/7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee/updateRequest
```
##### Request body
```json
{
  "reason":"approve the request to extend role assignment",
  "schedule":{
    "type":"Once",
    "startDateTime":"2018-02-20T07:31:13.451Z",
    "stopDateTime":"2018-05-21T07:31:13.451Z",
    "isPermanent":false
    },
  "decision":"AdminApproved",
  "assignmentState": "Eligible"
}
```

##### Response

```http
HTTP/1.1 204 No Content
```