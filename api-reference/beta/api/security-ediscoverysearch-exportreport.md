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

Export an item report from an [ediscoverySearch](../resources/security-ediscoverysearch.md). For details, see [Manage a collection estimate](/purview/ediscovery-create-draft-collection#manage-a-collection-estimate).

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
| --- | --- | --- |
| additionalOptions | [microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values) | The additionals options for the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`. Required.|
| description | String | The description of the export result. |
| displayName | String | The display name of the export result. |
| exportCriteria | [microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values) | The portion of the estimate results to be exported. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`. Required.|
| exportLocation | [microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values) | Location scoping option for partially indexed items. You can either include only responsive locations with hits or locations with no search hits. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`. Required.|

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header that contains the location of the [ediscoverySearchExportOperation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "export_report"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/2eef613a-ca2d-42f4-89fe-84d5198ddedf/searches/6b5358b0-2ce2-4369-b9cf-65392fe56807/exportReport
Content-Type: application/json

{
  "displayName": "Test Export",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations",
  "additionalOptions": "teamsAndYammerConversations | cloudAttachments"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
