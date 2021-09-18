---
title: "workbook: tableRowOperationResult"
description: "Part of an asynchronous create tableRow request."
author: "lumine2008"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageTypes
---

# workbook: tableRowOperationResult
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Part of an asynchronous create tableRow request.

An asynchronous create tableRow request involves the following steps:
1. Issue an async [Create tableRow](./table-post-rows.md) request and get a [workbookOperation](../resources/workbookoperation.md) URL.
2. Issue the [Get workbookOperation](./workbookoperation-get.md) request, and after you get a `succeeded` **operationStatus** result, get the request URL from the **resourceLocation** part of the response. This is the URL for this request. This is the only way to get this URL.
3. Issue the URL. The response to this request contains a [workbookTableRow](../resources/workbooktablerow.md).

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
GET /driveItem/workbook/tableRowOperationResult
```

## Function parameters
In the request URL, provide the following query parameter with values.

|Parameter|Type|Description|
|:---|:---|:---|
|key|String|The **operationId** provided in the **workbookOperation** response.|


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
<!-- {
  "blockType": "request",
  "sampleKeys": ["0195cfac-bd22-4f91-b276-dece0aa2378b"],
  "name": "workbook_tablerowoperationresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/driveItem/workbook/tableRowOperationResult(key='0195cfac-bd22-4f91-b276-dece0aa2378b')
```


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
