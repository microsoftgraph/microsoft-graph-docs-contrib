# Update plannertask

Update the properties of plannertask object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /planner/tasks/<id>
PATCH /me/planner/tasks/<id>
PATCH /users/<id>/planner/tasks/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activeChecklistItemCount|Int32||
|appliedCategories|plannerAppliedCategories||
|assigneePriority|String||
|assignments|plannerAssignments||
|bucketId|String||
|checklistItemCount|Int32||
|completedBy|identitySet||
|completedDateTime|DateTimeOffset||
|conversationThreadId|String||
|createdBy|identitySet||
|createdDateTime|DateTimeOffset||
|dueDateTime|DateTimeOffset||
|hasDescription|Boolean||
|orderHint|String||
|percentComplete|Int32||
|planId|String||
|previewType|string| Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|referenceCount|Int32||
|startDateTime|DateTimeOffset||
|title|String||

### Response
If successful, this method returns a `200 OK` response code and updated [plannerTask](../resources/plannertask.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_plannertask"
}-->
```http
PATCH https://graph.microsoft.com/beta/planner/tasks/<id>
Content-type: application/json
Content-length: 458

{
  "createdBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "device": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
  "planId": "planId-value",
  "bucketId": "bucketId-value",
  "title": "title-value",
  "orderHint": "orderHint-value",
  "assigneePriority": "assigneePriority-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTask"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 458

{
  "createdBy": {
    "application": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "device": {
      "displayName": "displayName-value",
      "id": "id-value"
    },
    "user": {
      "displayName": "displayName-value",
      "id": "id-value"
    }
  },
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
  "description": "Update plannertask",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->