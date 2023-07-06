---
title: "ediscoveryReviewSetQuery: export"
description: "Initiate an export from a reviewSet query."
author: "vbhatt0211"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoveryReviewSetQuery: export

Namespace: microsoft.graph.security

Initiate an export from a [microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md). For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).

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
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/queries/{queryId}/export
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|description|String| Description of the export. |
|exportOptions|microsoft.graph.security.exportOptions|Specifies options that control the format of the export. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `tags`, `unknownFutureValue`.|
|exportStructure|microsoft.graph.security.exportFileStructure| Options that control file structure and packaging of the export. Possible values are: `none`, `directory`, `pst`, `unknownFutureValue`.|
|outputName|String| Name of the export. Required. |

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetquerythis.export"
}
-->

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
