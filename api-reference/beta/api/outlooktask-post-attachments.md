---
title: "Create attachment"
description: "Use this API to add an attachment to an outlookTask."
author: "svpsiva"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create attachment (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [outlooktask-deprecate-allup](../../includes/outlooktask-deprecate-allup.md)]


Use this API to add an [attachment](../resources/attachment.md) to an [outlookTask](../resources/outlooktask.md). The attachment can be a file (of [fileAttachment](../resources/fileattachment.md) type) or Outlook item ([itemAttachment](../resources/itemattachment.md) type).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "outlooktask_post_attachments" } -->
[!INCLUDE [permissions-table](../includes/permissions/outlooktask-post-attachments-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/outlook/tasks/{id}/attachments
POST /users/{id|userPrincipalName}/outlook/tasks/{id}/attachments
```

## Request headers

| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | A string that represents the type of data in the body of an entity. Required. |

## Request body

In the request body, supply a JSON representation of [attachment](../resources/attachment.md) object.

## Response

If successful, this method returns `201 Created` response code and [attachment](../resources/attachment.md) object in the response body.

## Examples

### Example 1: Add file attachment 

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_file_attachment_to_task",
  "sampleKeys": ["AAMkADAAAANXbdnAAA="]
}-->

```http
POST https://graph.microsoft.com/beta/me/outlook/tasks/AAMkADAAAANXbdnAAA=/attachments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.fileAttachment",
    "name": "menu.txt",
    "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-file-attachment-to-task-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/add-file-attachment-to-task-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-file-attachment-to-task-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-file-attachment-to-task-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-file-attachment-to-task-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-file-attachment-to-task-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-file-attachment-to-task-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-file-attachment-to-task-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "add_file_attachment_to_task",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileAttachment"
} -->

```http
HTTP 201 Created

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/outlook/tasks('AAMkADAAAANXbdnAAA%3D')/attachments/$entity",
    "@odata.type": "#microsoft.graph.fileAttachment",
    "@odata.mediaContentType": "text/plain",
    "id": "AAMkADAAAANXbdnAAABEgAQAKQF4_X0QwVHpmAmxUgHN_Q=",
    "lastModifiedDateTime": "2020-01-07T22:13:30Z",
    "name": "menu.txt",
    "contentType": "text/plain",
    "size": 178,
    "isInline": false,
    "contentId": null,
    "contentLocation": null,
    "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
}
```

### Example 2: Add item attachment

#### Request

Here is an example which attaches an event with another event as an item attachment.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_item_attachment_to_task",
  "sampleKeys": ["AAMkADAAAANXbdnAAA="]
}-->

```http
POST https://graph.microsoft.com/beta/me/outlook/tasks/AAMkADAAAANXbdnAAA=/attachments
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.itemAttachment",
  "name": "Holiday event",
  "item": {
        "@odata.type": "microsoft.graph.event",
        "subject": "Discuss gifts for children",
        "body": {
            "contentType": "HTML",
            "content": "Let's look for funding!"
         },
         "start": {
             "dateTime": "2020-01-12T18:00:00",
             "timeZone": "Pacific Standard Time"
          },
          "end": {
             "dateTime": "2020-01-12T19:00:00",
             "timeZone": "Pacific Standard Time"
          }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-item-attachment-to-task-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/add-item-attachment-to-task-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-item-attachment-to-task-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-item-attachment-to-task-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-item-attachment-to-task-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-item-attachment-to-task-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-item-attachment-to-task-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-item-attachment-to-task-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "add_item_attachment_to_task",
  "truncated": true,
  "@odata.type": "microsoft.graph.itemAttachment"
} -->

```http
HTTP 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/outlook/tasks('AAMkADAAAANXbdnAAA%3D')/attachments/$entity",
    "@odata.type": "#microsoft.graph.itemAttachment",
    "id": "AAMkADAAAANXbdnAAABEgAQANgBvaZHiKVMskpdj1k9KEQ=",
    "lastModifiedDateTime": "2020-01-07T22:18:11Z",
    "name": "Holiday event",
    "contentType": null,
    "size": 2067,
    "isInline": false
}
```



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create attachment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/me:
      /me/outlook/tasks/{var}/attachments
      Uri path requires navigating into unknown object hierarchy: missing property 'tasks' on 'outlookUser'. Possible issues:
  	 1) Doc bug where 'tasks' isn't defined on the resource.
  	 2) Doc bug where 'tasks' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'outlookUser' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->


