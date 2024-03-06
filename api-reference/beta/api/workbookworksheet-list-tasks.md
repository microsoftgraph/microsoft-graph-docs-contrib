---
title: "List workbookDocumentTasks"
description: "Get a list of workbookDocumentTask objects."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# List workbookDocumentTasks

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [workbookDocumentTask](../resources/workbookdocumenttask.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workbookworksheet_list_tasks" } -->
[!INCLUDE [permissions-table](../includes/permissions/workbookworksheet-list-tasks-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/worksheets/{id}/tasks
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id}/tasks
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

If successful, this method returns a `200 OK` response code and a collection of [workbookDocumentTask](../resources/workbookdocumenttask.md) objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_tasks"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/drive/root/workbook/worksheets/7927C77C-AF4A-4CF9-9F4D-73FE887E89EC/tasks
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-tasks-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.workbookDocumentTask)"
} -->
```http
HTTP/1.1 200 OK

{
  "value": [
    {
      "createdBy": {
        "id": "6463a5ce-2119-4198-9f2a-628761df4a62",
        "displayName": "Mike Smith",
        "email": "mikesmith@contoso.com"
      },
      "createdDateTime": "2015-03-25T18:36:49.2407981Z",
      "title": "new title-value",
      "id": "97A21473-8339-4BF0-BCB6-F55E4909FFB8",
      "assignees": [
        {
          "id": "1e9955d2-6acd-45bf-86d3-b546fdc795eb",
          "displayName": "Joe Doe",
          "email": "joedoe@contoso.com"
        }
      ]
    }
  ]
}
```
