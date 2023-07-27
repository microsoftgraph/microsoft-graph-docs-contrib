---
title: "List changes"
description: "Retrieve a list of workbookdocumenttaskchange objects."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# List task changes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of workbookdocumenttaskchange objects.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/worksheets/{id}/tasks/{id}/changes
GET /me/drive/items/{id}/workbook/comments/{id}/task/changes
```
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [workbookDocumentTaskChange](../resources/workbookDocumentTaskChange.md) objects in the response body.
## Example
##### Request
Here is an example of the request.

### HTTP
<!-- {
  "blockType": "request",
  "name": "get_changes"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/drive/root/workbook/worksheets/{id}/tasks/{id}/changes
```

---

##### Response

Here is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookDocumentTaskChange",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK

{
    "value": [
        {
            "changedBy": {
                "id": "6463a5ce-2119-4198-9f2a-628761df4a62",
                "displayName": "Mike Smith",
                "email": "mikesmith@contoso.com"
            },
            "createdDateTime": "2020-09-01T18:36:49.2407981Z",
            "id":"57A21473-7238-3CE0-BCB6-A55E4909AA98",
            "type": "create"
        },
        {
            "changedBy": {
                "id": "6463a5ce-2119-4198-9f2a-628761df4a62",
                "displayName": "Mike Smith",
                "email": "mikesmith@contoso.com"
            },
            "createdDateTime": "2020-09-01T18:36:49.2407981Z",
            "id":"97A21473-8339-4BF0-BCB6-F55E4909FFB8",
            "type": "assign",
            "assignee":{
                "id": "1e9955d2-6acd-45bf-86d3-b546fdc795eb",
                "displayName": "Joe Doe",
                "email": "joedoe@contoso.com"
            },
        },
        {
            "changedBy": {
                "id": "6463a5ce-2119-4198-9f2a-628761df4a62",
                "displayName": "Mike Smith",
                "email": "mikesmith@contoso.com"
            },
            "createdDateTime": "2020-09-01T18:36:49.2407981Z",
            "id":"26950968-F917-4C2C-BB46-4845D0F7171B",
            "type": "SetTitle",
            "title": "This is a task title",
        },
    ]
}
```