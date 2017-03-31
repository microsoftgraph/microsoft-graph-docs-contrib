# Create plannerTask

Use this API to create a new plannerTask.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /planner/buckets/<id>/tasks
POST /planner/plans/<id>/buckets/<id>/tasks
POST /me/planner/plans/<id>/buckets/<id>/tasks

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [plannerTask](../resources/plannertask.md) object.


### Response
If successful, this method returns `201, Created` response code and [plannerTask](../resources/plannertask.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_plannertask_from_plannerbucket"
}-->
```http
POST https://graph.microsoft.com/beta/planner/buckets/<id>/tasks
Content-type: application/json
Content-length: 204

{
  "createdBy": "createdBy-value",
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value"
}
```
In the request body, supply a JSON representation of [plannerTask](../resources/plannertask.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTask"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 204

{
  "createdBy": "createdBy-value",
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create plannerTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->