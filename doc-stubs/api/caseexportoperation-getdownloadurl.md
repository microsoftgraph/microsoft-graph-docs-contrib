---
title: "caseExportOperation: getDownloadUrl"
description: "Operation that provides progress and status for export"
localization_priority: Normal
author: "mahage-msft"
ms.prod: "compliance"
doc_type: "apiPageType"
---

# caseExportOperation: getDownloadUrl

Namespace: microsoft.graph.ediscovery

Operation that provides progress and status for export

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All, eDiscovery.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|eDiscovery.ReadWrite.All, eDiscovery.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /caseExportOperation/getDownloadUrl
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a String in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "caseexportoperation_getdownloadurl"
}
-->

``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/99e865fc-e29f-479a-ba83-9e58eb017103/operations/63926d4779c243458902328d83f61f53/microsoft.graph.caseExportOperation/getDownloadUrl
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.String"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Edm.String",
    "value": "https://nam01pkgg0052.blob.edproxy.nam01.ediscovery.outlook.com/packaging0041e27c6c924a48befe670d34066c25/d0b6d2a7-5fc5-44f0-9bca-6b9d34a9410b.zip?sv=2018-03-28&sr=c&sig=ywDVYMa9Vgid36NBA%2FOx8wU%2BSEV1sIJUM%2BQAP%2FrMuoE%3D&se=2020-12-23T19%3A17%3A13Z&sp=racwdl"
}
```
