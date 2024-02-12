---
title: "Get workbookDocumentTaskChange"
description: "Get the properties and relationships of a workbookDocumentTaskChange object."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# Get workbookDocumentTaskChange

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [workbookDocumentTaskChange](../resources/workbookdocumenttaskchange.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workbookdocumenttaskchange_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/workbookdocumenttaskchange-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/worksheets/{id}/tasks/{id}/changes/{id}
GET /me/drive/items/{id}/workbook/comments/{id}/task/changes/{id}
```
## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Workbook-Session-Id  | Workbook session ID that determines if changes are persisted or not. Optional.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [workbookDocumentTaskChange](../resources/workbookdocumenttaskchange.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_workbookDocumentTaskChange"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/drive/root/workbook/worksheets/D5667D8C-B814-4748-B942-9C41BCC9BBB1/tasks/47B4663E-612F-4E06-B2E6-E8EBE819CBB6/changes/DCB9ED1D-2090-4088-9677-CBA8B9511EBF
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workbookdocumenttaskchange-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookDocumentTaskChange"
} -->
```http
HTTP/1.1 200 OK

{
  "@odata.type": "microsoft.graph.documentTaskChange",
  "changedBy": {
    "@odata.type": "microsoft.graph.emailIdentity",
    "id": "6463a5ce-2119-4198-9f2a-628761df4a62",
    "displayName": "Mike Smith",
    "email": "mikesmith@contoso.com"
  },
  "createdDateTime": "2020-09-01T18:36:49.2407981Z",
  "id": "57A21473-7238-3CE0-BCB6-A55E4909AA98",
  "type": "create"
}
```
