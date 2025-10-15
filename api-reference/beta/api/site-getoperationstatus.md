---
title: "site: getOperationStatus"
description: "Get the status of a SharePoint site creation operation to monitor its progress."
author: "spgraph-docs-team"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 10/09/2025
---

# site: getOperationStatus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of a SharePoint [site](../resources/site.md) creation operation to monitor its progress.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/getOperationStatus(operationId='{siteOperationId}')
```

## Optional query parameters
This method supports the `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Function parameters

In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|operationId|Guid| The GUID of the operation for which the site creation is performed. Required.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [richLongRunningOperation](../resources/richlongrunningoperation.md) in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "sitethis.getoperationstatus"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/getOperationStatus(operationId=\'JXMnaHR0cHMlM0ElMkYlMkZncmFwaC5taWNyb3NvZnQuY29tJTJGc2l0ZXMlMkZ0ZWFtc2l0ZTE=\')
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.richLongRunningOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "JXMnaHR0cHMlM0ElMkYlMkZncmFwaC5taWNyb3NvZnQuY29tJTJGc2l0ZXMlMkZ0ZWFtc2l0ZTE=",
  "createdDateTime": "2022-01-24T16:28:23Z",
  "resourceId": "contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE",
  "resourceLocation": "https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE",
  "status": "succeeded"
}
```
