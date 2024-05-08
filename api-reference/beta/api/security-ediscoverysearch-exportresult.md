---
title: "ediscoverySearch: exportResult"
description: "Export results from an ediscoverySearch."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: exportResult

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export results from an estimated [ediscoverySearch](../resources/security-ediscoverysearch.md). For details, see [Manage a collection estimate](/purview/ediscovery-create-draft-collection#manage-a-collection-estimate).

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
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportResult
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can be use with this action.

| Parameter | Type | Description |
|:---|:---|:---|
| additionalOptions | [microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values) | The additionals options for the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`. Required.|
| description | String | The description of the export result. |
| displayName | String | The display name of the export result. |
| exportCriteria | [microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values) | The portion of the estimate results to be exported. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`. Required.|
| exportFormat | [microsoft.graph.security.exportFormat](../resources/security-ediscoverysearchexportoperation.md#exportformat-values) | The desired format of the exported emails. The possible values are: `pst` (individual .pst files for each mailbox), `msg` (individual .msg files for each message), `eml` (individual .eml files for each message), `unknownFutureValue`. Required. |
| exportLocation | [microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values) | Location scoping option for partially indexed items. You can either include partially indexed item in only responsive locations with search hits or partially include partially indexed items in all targeted locations. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`.|

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header that includes the location of the [microsoft.graph.security.ediscoverySearchExportOperation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export. To check the status of the export operation, make a GET request to the location URL.

## Examples

### Example 1: Export results, which include items with search hits only, exclude partially indexed itmes, with no additional options selected, emails as .pst files for each mailbox

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_result"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportResult
Content-Type: application/json

{
    "displayName": "Export 1 - simple PST",
    "exportCriteria": "searchHits",
    "additionalOptions": "none",
    "exportFormat": "pst"
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
    "client-request-id": "e4df5508-d119-4517-183c-4c2494610209",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('01826ce3-43a3-4235-a121-81d05926efae')",
    "request-id": "1660b394-1e62-4f2f-a258-7b1bb97cd935"
}

```

### Example 2: Export results, which include items with search hits and partially indexed items in all targeted locations, with no additional options selected, emails as .pst files for each mailbox

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_result"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportResult
Content-Type: application/json

{
    "displayName": "Export 2",
    "exportCriteria": "searchHits, partiallyIndexed",
    "exportLocation": "responsiveLocations, nonresponsiveLocations",
    "additionalOptions": "none",
    "exportFormat": "pst"
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
    "client-request-id": "9090b2a6-8758-384f-fcd3-bfb1a9b9ab45",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('c74d3039-5c79-4093-8e45-2abb94e32ba9')",
    "request-id": "b41df48d-48ce-4f4c-a05f-e7c866cbdb9f"
}

```

### Example 3: Export results, which include items with search hits and partially indexed items in locations with search hits only, with no additional options selected, emails as .msg files for each message

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_result"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportResult
Content-Type: application/json

{
    "displayName": "Export 3",
    "exportCriteria": "searchHits, partiallyIndexed",
    "exportLocation": "responsiveLocations",
    "additionalOptions": "none",
    "exportFormat": "msg"
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
    "client-request-id": "90bf9512-00df-c6bb-3930-6cd678090fc9",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('4bf812e0-44ad-4856-a302-b4ea79725573')",
    "request-id": "a6544400-74c2-4696-9fb4-dbc31276f4bc"
}

```

### Example 4: Export results, which include partially indexed items in all targeted locations, with all additional options selected, emails as .eml files for each message

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_result"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportResult
Content-Type: application/json

{
    "displayName": "Export 4",
    "exportCriteria": "partiallyIndexed",
    "exportLocation": "responsiveLocations, nonresponsiveLocations",
    "additionalOptions": "teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments",
    "exportFormat": "eml"
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
    "client-request-id": "f22303c3-c112-8269-19f5-da33adf8d227",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('05b5c707-ed0d-4f5c-bbfd-e4941137baf1')",
    "request-id": "ea78b6b6-e0f4-488c-a31c-02120567d3af"
}

```

### Example 5: Export results, which include partially indexed items in locations with search hits only, with cloud attachments, emails as .eml files for each message

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_result"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/searches('6c2ab774-2d2a-46b9-a601-3130f518757b')/exportResult
Content-Type: application/json

{
    "displayName": "Export 5",
    "exportCriteria": "partiallyIndexed",
    "exportLocation": "responsiveLocations",
    "additionalOptions": "cloudAttachments",
    "exportFormat": "eml"
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
    "client-request-id": "7067f49f-972c-e360-9fd7-c5d4a3a23e0e",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('d488f23e-f3cb-4a1c-9b9f-88ac4342f534')",
    "request-id": "eb9dfff4-504f-4603-a2a3-c49690c03951"
}

```
