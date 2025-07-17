---
title: "Create taskFileAttachment"
description: "Add a new taskFileAttachment object to a todoTask."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Create taskFileAttachment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a new [taskFileAttachment](../resources/taskfileattachment.md) object to a [todoTask](../resources/todotask.md).

This operation limits the size of the attachment you can add to under 3 MB. If the size of the file attachments is more than 3 MB, [create an upload session](../api/taskfileattachment-createuploadsession.md) to upload the attachments.


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "todotask_post_attachments" } -->
[!INCLUDE [permissions-table](../includes/permissions/todotask-post-attachments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/todo/lists/{id}/tasks/{id}/attachments
POST /users/{id}/todo/lists/{id}/tasks/{id}/attachments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [taskFileAttachment](../resources/taskfileattachment.md) object.

When you create a file attachment, include `"@odata.type": "#microsoft.graph.taskFileAttachment"` and the required properties.

|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary|The base64-encoded contents of the file. Required.|
|contentType|String|The content type of the attachment. |
|name|String|The name of the text displayed under the icon that represents the embedded attachment. This does not need to be the actual file name. Required. |
|size|Int32|The size in bytes of the attachment. |

## Response

If successful, this method returns a `201 Created` response code and a [taskFileAttachment](../resources/taskfileattachment.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_taskFileAttachment_from_",
  "sampleKeys": ["AAMkpsDRVK=", "AAKdfjhgsjhgJ="]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/todo/lists/AAMkpsDRVK=/tasks/AAKdfjhgsjhgJ=/attachments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.taskFileAttachment",
  "name": "smile",
  "contentBytes": "a0b1c76de9f7=",
  "contentType": "image/gif"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-taskfileattachment-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-taskfileattachment-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-taskfileattachment-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-taskfileattachment-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-taskfileattachment-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-taskfileattachment-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-taskfileattachment-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-taskfileattachment-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskFileAttachment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.taskFileAttachment",
  "id": "AAMkADNkN2R",
  "lastModifiedDateTime": "2017-01-26T08:48:28Z",
  "name": "smile",
  "contentType": "image/gif",
  "size": 1008
}
```

