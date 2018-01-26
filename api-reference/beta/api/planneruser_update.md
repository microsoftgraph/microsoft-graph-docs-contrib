# Update planneruser

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of [plannerUser](plannerUser.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/planner
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}. Required.|
| If-Match  | Last known ETag value for the **plannerUser** to be updated. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|favoritePlanReferences|plannerFavoritePlanReferenceCollection|Changes to the collection containing the references to the plans that the user has marked as a favorite.|
|recentPlanReferences|plannerRecentPlanReferenceCollection|Changes to the collection containing the references to the plans that the user has recently viewed.|

## Response
If successful, this method returns a `200 OK` response code and updated [plannerUser](../resources/planneruser.md) object in the response body.

This method can return any of the [HTTP status codes](../../../concepts/errors.md). The most common errors that apps should handle for this method are the 400, 403, 404, 409, and 412 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner_overview.md#common-planner-error-conditions).
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_planneruser"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/planner
Content-type: application/json
Content-length: 70

{
  "favoritePlanReferences": {
  },
  "recentPlanReferences": {
  }
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerUser"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 90

{
  "favoritePlanReferences": {
  },
  "recentPlanReferences": {
  },
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update planneruser",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->