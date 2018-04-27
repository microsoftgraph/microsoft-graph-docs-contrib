# governanceRoleAssignmentRequest: Cancel

Cancel a pending role assignment request.
 
### HTTP request
```http
POST /privilegedAccess/<id>/roleAssignmentRequests/<id>/cancel
```

### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

### Request body

### Response
Only requests that are in status of `Granted`, `PendingApproval` and `PendingAdminDecision` are cancellable.

If successful, this method returns `204 OK` response code. It does not return anything in the response body. 

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignmentRequests/7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee/cancel
```

##### Response
```http
HTTP/1.1 204 No Content
```