---
title: "List notes"
description: "Get a list of the note objects in the user's Notes folder."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List notes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [note](../resources/note.md) objects in the user's *Notes* folder.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_notes" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-notes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/notes
GET /users/{id | userPrincipalName}/notes
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderby`, `$top`, `$skip`, and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following properties support `$filter`:

- **subject**: `eq`, `ne`, `startsWith`
- **createdDateTime**: `eq`, `ge`, `le`, `gt`, `lt`
- **lastModifiedDateTime**: `eq`, `ge`, `le`, `gt`, `lt`
- **hasAttachments**: `eq`

The following properties support `$orderby`: **createdDateTime**, **lastModifiedDateTime**, and **subject**.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [note](../resources/note.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_notes"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/notes?$select=id,subject,bodyPreview,lastModifiedDateTime&$orderby=lastModifiedDateTime desc&$top=20
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-notes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.note)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('user-id')/notes(id,subject,bodyPreview,lastModifiedDateTime)",
  "@odata.nextLink": "https://graph.microsoft.com/beta/me/notes?$select=id,subject,bodyPreview,lastModifiedDateTime&$orderby=lastModifiedDateTime+desc&$top=20&$skiptoken=abc123",
  "value": [
    {
      "id": "AAMkAGI2THVSAAA=",
      "subject": "Team Standup - Jan 20",
      "bodyPreview": "Completed tasks: Feature A, Feature B. In progress: Feature C",
      "lastModifiedDateTime": "2024-01-20T09:15:00Z"
    },
    {
      "id": "AAMkAGI2THVSAAB=",
      "subject": "Shopping List",
      "bodyPreview": "Milk, Eggs, Bread, Coffee",
      "lastModifiedDateTime": "2024-01-19T18:30:00Z"
    }
  ]
}
```

