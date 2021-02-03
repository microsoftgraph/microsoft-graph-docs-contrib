---
title: "reviewSet: export"
description: "Initiates an export from a reviewSet"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# reviewSet: export

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This operation initiates an export from a **reviewSet**.  See [Export documents from a review set in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/export-documents-from-review-set) to learn more.  Once the export is created, you can retrieve the status of the operation by retrieving the Location parameter from the response headers, the location provides a URL that will return a [caseExportOperation](../resources/ediscovery-caseexportoperation.md).

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
POST /caseExportOperation/reviewSet/export
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|outputName|String| Name of the export. Required. |
|description|String| Description of the export |
|azureBlobContainer|String| When exporting to your own Azure storage account, this is the container URL. |
|azureBlobToken|String| When exporting to your own Azure storage account, SAS token for the container URL. |
|exportOptions| [microsoft.graph.ediscovery.exportOptions](../resources/ediscovery-caseexportoperation.md#exportoptions-values) |Specifies options that control the format of the export. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`.|
|exportStructure|[microsoft.graph.ediscovery.exportFileStructure](../resources/ediscovery-caseexportoperation.md#exportfilestructure-values)| Options that control file structure and packaging of the export. Possible values are: `none`, `directory`, `pst`.|

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "reviewset_export"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/99e865fc-e29f-479a-ba83-9e58eb017103/reviewsets/e44ac2cb-f8b4-4fd8-aa1c-1391b46ba9cc/export
Content-Type: application/json
Content-length: 186

{
  "outputName": "2020-12-06 Contoso investigation export",
  "description": "Export for the Contoso investigation",
  "exportOptions": "originalFiles,fileInfo,tags",
  "exportStructure": "directory"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 202 Accepted
```
