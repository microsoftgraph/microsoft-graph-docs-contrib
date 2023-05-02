---
title: "workbook: tableRowOperationResult"
description: "Part of an asynchronous create tableRow request."
author: "lumine2008"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# workbook: tableRowOperationResult
Namespace: microsoft.graph

This function is the last in a series of steps to create a [workbookTableRow](../resources/workbooktablerow.md) resource asynchronously.

A best practice to create multiple table rows is to batch them in one [create tableRow](./table-post-rows.md) operation and carry out the operation asynchronously.

An asynchronous request to create table rows involves the following steps:
1. Issue an async [Create tableRow](./table-post-rows.md) request and get the query URL returned in the `Location` response header.
2. Use the query URL returned from step 1 to issue the [Get workbookOperation](./workbookoperation-get.md) request and get the operation ID for step 3. 
    Alternatively, for convenience, after you get a `succeeded` **operationStatus** result, you can get the query URL from the **resourceLocation** property of the [workbookOperation](../resources/workbookoperation.md) returned in the response, and apply the query URL to step 3. 
3. Use the query URL returned from step 2 as the GET request URL for this function **tableRowOperationResult**. A successful function call returns the new table rows in a [workbookTableRow](../resources/workbooktablerow.md) resource.

This function does not do anything if called independently.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Files.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/drive/items/{id}/workbook/tableRowOperationResult(key={operation-id})
GET /me/drive/root:/{item-path}:/workbook/tableRowOperationResult(key={operation-id})
```

## Function parameters
The request URL requires the following query parameter. 

|Parameter|Type|Description|
|:---|:---|:---|
|key|String|The **operationId** provided in the **workbookOperation** response returned in the preceding [Get workbookOperation](./workbookoperation-get.md) request.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| Workbook-Session-Id  | Workbook session ID that determines whether changes are persisted. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [workbookTableRow](../resources/workbooktablerow.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["0195cfac-bd22-4f91-b276-dece0aa2378b", "01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ"],
  "name": "workbook_tablerowoperationresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/drive/items/01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ/workbook/tableRowOperationResult(key='0195cfac-bd22-4f91-b276-dece0aa2378b')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/workbook-tablerowoperationresult-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/workbook-tablerowoperationresult-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/workbook-tablerowoperationresult-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/workbook-tablerowoperationresult-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/workbook-tablerowoperationresult-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookTableRow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "index": 99,
  "values": "[[1, 2, 3]]"
}
```
