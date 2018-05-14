# UpdateRequest governanceRoleAssignmentRequest

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Administrators can update their decisions (`AdminApproved` or `AdminDenied`) on a [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) which are in status of `PendingAdminDecision`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

Besides the permission scope, this API requires the requestor to have at least one `Active` adminstrator role assignment (`owner` or `user access administrator`) on the resource, which the [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) belongs to. 

## HTTP request

```http
POST /privilegedAccess/azureResources/roleAssignmentRequests/{id}/updateRequest   
```

### Request headers
| Name           | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|

### Request body
|Parameters	     |Type	                 |Required |Description|
|:-------------|:----------------------|:--------|:----------|
|reason        |String                 |✓        |The reason provided by the administrator for his decision.|
|decision        |String                 |✓        |The administrator decision of the role assignment request. The value should be updated as `AdminApproved` or `AdminDenied`.|
|schedule      |[governanceSchedule](../resources/governanceschedule.md)|        | The schedule of the role assignment request. For status of `AdminApproved`, it is required.|
|assignmentState      |String|         | The state of assignment, and the values can be `Eligible` or `Active`. For decision of `AdminApproved`, it is required. |
### Response
This method can only be applied to requests that are in status of `PendingAdminDecision`.

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/azureResources/roleAssignmentRequests/7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee/updateRequest
```
##### Request body
```json
{
  "reason":"approve the request to extend role assignment",
  "schedule":{
    "type":"Once",
    "startDateTime":"2018-02-20T07:31:13.451Z",
    "stopDateTime":"2018-05-21T07:31:13.451Z",
    },
  "decision":"AdminApproved",
  "assignmentState": "Eligible"
}
```

##### Response

```http
HTTP/1.1 204 No Content
```