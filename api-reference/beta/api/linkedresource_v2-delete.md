---
title: "Delete linkedResource_v2"
description: "Delete a linkedResource_v2 object."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Delete linkedResource_v2 (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Delete a [linkedResource_v2](../resources/linkedresource_v2.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.ReadWrite|
|Application|Tasks.ReadWrite|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/linkedResources/{linkedResourceId}
DELETE /users/{id | userPrincipalName}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/linkedResources/{linkedResourceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_linkedresource_v2",
  "sampleKeys": ["AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwAuAAAAAADdOMUbUmCfTKa7OC-fqjkdAQBnu3olF7NfToRyJ2f__TNcAAAAAAESAAA=", "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AZ7t6JRezX06Ecidn-vkzXAABPDii4gAA", "e2c5ed75-7aa4-4f8e-84ab-98b5e0b56ee8"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/tasks/lists/AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwAuAAAAAADdOMUbUmCfTKa7OC-fqjkdAQBnu3olF7NfToRyJ2f__TNcAAAAAAESAAA=/tasks/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AZ7t6JRezX06Ecidn-vkzXAABPDii4gAA/linkedResources/e2c5ed75-7aa4-4f8e-84ab-98b5e0b56ee8
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-linkedresource-v2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-linkedresource-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

