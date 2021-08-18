---
title: "Get tableRowOperationResult"
description: "Async operation result for addTableRow operation"
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: apiPageType
---

# Get tableRowOperationResult
Namespace: microsoft.graph

Meaningless if this url is called independently. This request is part of async create tableRow request.

To issue an async create tableRow request, briefly you need the following 2 steps:
1. Issue an async [Create tableRow](./table-post-rows.md) request, follow the documentation and you may get an url to [workbookOperation](../resources/workbookoperation.md).
2. Issue the [Get workbookOperation](./workbookoperation-get.md) request, and after you get a `succeeded` **operationStatus** result, focus on the "resourceLocation" part of the response, this is the request url for this request. You cannot get this url other than going through these steps, currently.
3. Issue the url, the response of this request is [workbookTableRow](../resources/tablerow.md)


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
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [workbookTableRow](../resources/tablerow.md) object in the response body.

## Examples

### Request
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

The following is an example of the response

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
