---
title: "ediscoverySearch: exportReport"
description: "Export an item report from an ediscoverySearch."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: exportReport

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export an item report from an estimated [ediscoverySearch](../resources/security-ediscoverysearch.md). For details, see [Manage a collection estimate](/purview/ediscovery-create-draft-collection#manage-a-collection-estimate).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

| Parameter | Type | Description |
|:---|:---|:---|
| additionalOptions | [microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values) | The additionals options for the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`. Required.|
| description | String | The description of the export report. |
| displayName | String | The display name of the export report. |
| exportCriteria | [microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values) | The portion of the estimate report to be exported. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`. Required.|
| exportLocation | [microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values) | Location scoping option for partially indexed items. You can either include partially indexed item in only responsive locations with search hits or partially include partially indexed items in all targeted locations. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`.|

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header that includes the location of the [microsoft.graph.security.ediscoverySearchExportOperation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export. To check the status of the export operation, make a GET request to the location URL.

## Examples

### Example 1: Export an item report, which includes items with search hits only, excluding partially indexed itmes, with no additional options selected

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_report"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportReport
Content-Type: application/json

{
    "displayName": "Export 1",
    "exportCriteria": "searchHits",
    "additionalOptions": "none"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
{
    "cache-control": "no-store, must-revalidate, no-cache, max-age=0",
    "client-request-id": "e0c4fae7-5b2b-51c7-582d-7e8389752e24",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('f57fc79d-bea8-42ac-b0be-217302d5683c')",
    "request-id": "9f6eceeb-2e33-474b-a997-ad778fa22d18"
}

```
### Example 2: Export an item report, which includes items with search hits and partially indexed items in all targeted locations, with no additional options selected

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_report"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportReport
Content-Type: application/json

{
    "displayName": "Export 2",
    "exportCriteria": "searchHits, partiallyIndexed",
    "exportLocation": "responsiveLocations, nonresponsiveLocations",
    "additionalOptions": "none"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
{
    "cache-control": "no-store, must-revalidate, no-cache, max-age=0",
    "client-request-id": "55375def-1c8c-8290-6f8f-6a6f509dd350",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('cbcb4807-e76e-4ef0-bd5b-e2177c13f07e')",
    "request-id": "10f66416-4ec4-4d1f-aecf-e9d8f4243166"
}

```

### Example 3: Export an item report, which includes items with search hits and partially indexed items in locations with search hits only, with no additional options selected

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_report"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportReport
Content-Type: application/json

{
    "displayName": "Export 3",
    "exportCriteria": "searchHits, partiallyIndexed",
    "exportLocation": "responsiveLocations",
    "additionalOptions": "none"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
{
    "cache-control": "no-store, must-revalidate, no-cache, max-age=0",
    "client-request-id": "58c21aaa-a5d2-79f0-2df9-ea450dfcf733",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('c56f66de-b780-4efc-aa0c-4ef3271ad6b4')",
    "request-id": "54c02d0f-0d52-4384-b95a-3023c8c8457d"
}

```

### Example 4: Export an item report, which includes partially indexed items in all targeted locations, with all additional options selected

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_report"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportReport
Content-Type: application/json

{
    "displayName": "Export 4",
    "exportCriteria": "partiallyIndexed",
    "exportLocation": "responsiveLocations, nonresponsiveLocations",
    "additionalOptions": "teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments"
}

```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
{
    "cache-control": "no-store, must-revalidate, no-cache, max-age=0",
    "client-request-id": "d609f853-f4b8-d9ad-f68a-d9d8bb5d9781",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('572d44e2-5e77-4443-a2ed-cd036bdc0304')",
    "request-id": "1e835184-4f74-4dfa-8d82-9d3d7e73ffc2"
}

```

### Example 5: Export an item report, which includes partially indexed items in locations with search hits only, with cloud attachments

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_report"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportReport
Content-Type: application/json

{
    "displayName": "Export 5",
    "exportCriteria": "partiallyIndexed",
    "exportLocation": "responsiveLocations",
    "additionalOptions": "cloudAttachments"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
{
    "cache-control": "no-store, must-revalidate, no-cache, max-age=0",
    "client-request-id": "f511546b-8bd0-0bf6-8ebb-fb0b3c88ade3",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('788159f9-f860-43f2-8fc5-0fc17df0e696')",
    "request-id": "d5998b96-f890-4114-b9f5-98001a0956e0"
}

```
