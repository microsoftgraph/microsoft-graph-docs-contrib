---
title: "reviewSet: export"
description: "Initiates an export from a reviewSet"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# reviewSet: export

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This operation initiates an export from a **reviewSet**.  See [Export documents from a review set in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/export-documents-from-review-set) to learn more.  Once the export is created, you can retrieve the status of the operation by retrieving the Location parameter from the response headers, the location provides a URL that will return a [caseExportOperation](../resources/caseexportoperation.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|eDiscovery.Read.All, eDiscovery.ReadWrite.All|

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
|exportOptions| [exportOptions](reviewset-export.md) |specifies options that control the format of the export. |
|exportStructure|[exportFileStructure](reviewset-export.md)| Options that control file structure and packaging of the export. |

### exportOptions values

|Member| Description |
|:---|:---|
|originalFiles| Include copies of the original files - exclude this option when generating reports only |
|text| Include raw extracted text files for each document. |
|pdfReplacement| If redacted PDF files are generated during review, these files are available for export. You can choose to export the redacted PDFs instead of the original native files by including this option. |
|fileInfo| Include the summery and load file - this should always be included. |
|tags| Include document tags that were applied during review in the load file. |

### exportFileStructure values

|Member| Description |
|:---|:---|
|directory| Maps to the condensed directory structure commonly used by eDiscovery tools. All files are exported to a root file called NativeFiles. |
|pst| Emails are stored in PSTs while documents from sites are stored in folders that represent the original native folder structure. |

## Response

If successful, this action returns a `204 No Content` response code.

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
HTTP/1.1 204 No Content
```
