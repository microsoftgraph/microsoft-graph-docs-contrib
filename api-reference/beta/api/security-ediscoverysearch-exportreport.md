---
title: "ediscoverySearch: Export report"
description: "Initiate an export from a search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: Export report
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate an export report from a **search**.  For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter | Type | Description |
| --- | --- | --- |
| displayName | Edm.String | The display name of the export result. |
| description | Edm.String | The description of the export result. |
| exportCriteria | microsoft.graph.security.exportCriteria | The portion of the estimate results to be exported for example items with search hits, partially indexed items, etc.|
| exportLocation | microsoft.graph.security.exportLocation | For exports with partially indexed items, are all locations included or only locations with search hits responsive to the query.|
| additionalOptions | microsoft.graph.security.additionalOptions | These are the options selected for the export for example include conversation threads, cloud attachments. |

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the [Search Export operation](../resources/security-ediscoverysearchexportoperation.md)  that was created to handle the export.

## Examples

### Request
Here's an example  of a request.

``` http
 POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('2eef613a-ca2d-42f4-89fe-84d5198ddedf')/searches('6b5358b0-2ce2-4369-b9cf-65392fe56807')/exportReport
    {
        "displayName" :"Test Export",
        "exportCriteria" : "partiallyIndexed",
        "exportLocation" : "responsiveLocations"
        "additionalOptions": 
        "teamsAndYammerConversations | cloudAtachments"
    }
```

### Response
Here's an example  of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```