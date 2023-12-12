---
title: "Create checklistItem"
description: "Create a new checklistItem object."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Create checklistItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Create a new [checklistItem](../resources/checklistitem.md) object as a subtask in a bigger [baseTask](../resources/basetask.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "basetask_post_checklistitems" } -->
[!INCLUDE [permissions-table](../includes/permissions/basetask-post-checklistitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/checklistItems
POST /users/{id | userPrincipalName}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/checklistItems
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [checklistItem](../resources/checklistitem.md) object.

You can specify the following properties when creating a **checklistItem**.

|Property|Type|Description|
|:---|:---|:---|
|checkedDateTime|DateTimeOffset|The date and time when the **checklistItem** was finished.|
|createdDateTime|DateTimeOffset|The date and time when the **checklistItem** was created.|
|displayName|String|Field indicating the title of **checklistItem**.|
|isChecked|Boolean|State indicating whether the item is checked off or not.|


## Response

If successful, this method returns a `201 Created` response code and a [checklistItem](../resources/checklistitem.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_checklistitem_task_for_me",
  "sampleKeys": ["AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwAuAAAAAADdOMUbUmCfTKa7OC-fqjkdAQBnu3olF7NfToRyJ2f__TNcAAAAAAESAAA=", "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AZ7t6JRezX06Ecidn-vkzXAABPDii4gAA"]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/tasks/lists/AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwAuAAAAAADdOMUbUmCfTKa7OC-fqjkdAQBnu3olF7NfToRyJ2f__TNcAAAAAAESAAA=/tasks/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AZ7t6JRezX06Ecidn-vkzXAABPDii4gAA/checklistItems/
Content-Type: application/json

{
    "displayName": "Final sign-off from the team"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-checklistitem-task-for-me-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.checklistItem"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('6f9a2a92-8527-4d64-937e-b5312852f35d')/tasks/lists('AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwAuAAAAAADdOMUbUmCfTKa7OC-fqjkdAQBnu3olF7NfToRyJ2f__TNcAAAAAAESAAA%3D')/tasks('AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AZ7t6JRezX06Ecidn-vkzXAABPDii4gAA')/checklistItems/$entity",
    "displayName": "Final sign-off from the team",
    "createdDateTime": "2021-11-17T05:35:03.9736453Z",
    "isChecked": false,
    "id": "e3a26c2e-7c6f-4317-9d71-c27267008202"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Create checklistItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/me:
      /me/tasks/lists/{var}/tasks/{var}/checklistItems
      Uri path requires navigating into unknown object hierarchy: missing property 'tasks' on 'user'. Possible issues:
  	 1) Doc bug where 'tasks' isn't defined on the resource.
  	 2) Doc bug where 'tasks' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'user' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
