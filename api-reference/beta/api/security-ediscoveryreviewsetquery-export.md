---
title: "ediscoveryReviewSetQuery: export"
description: "Initiate an export from a reviewSet query."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/11/2024
---

# ediscoveryReviewSetQuery: export
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate an export from a [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md).  For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryreviewsetquery_export" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryreviewsetquery-export-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/queries/{queryId}/export
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|description|String| Description of the export. |
|exportOptions|[microsoft.graph.security.exportOptions](../resources/security-ediscoveryexportoperation.md#exportoptions-values)|Bitwise options that control the format of the export. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo` (deprecated), `tags`, `unknownFutureValue`, `splitSource`, `includeFolderAndPath`, `friendlyName`, `condensePaths`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `splitSource`, `includeFolderAndPath`, `friendlyName`, `condensePaths`. The `fileInfo` member is deprecated and stopped returning data. The summary and load files are always included. If `originalFiles` isn't selected, only the `tags` member is considered. |
|exportStructure|[microsoft.graph.security.exportFileStructure](../resources/security-ediscoveryexportoperation.md#exportfilestructure-values)| Bitwise options that control file structure and packaging of the export. Possible values are: `none`, `directory` (deprecated), `pst`, `unknownFutureValue`, `msg`. Use the `Prefer: include-unknown-enum-members` request header to get the following value from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `msg`. The `directory` member is deprecated. It remains in beta for backward compatibility. Going forward, use either `pst` or `msg`. |
|outputName|String| Name of the export. Required. |
|azureBlobContainer (deprecated) |String| When you export to your own Azure storage account, the value is the container URL. The **azureBlobContainer** property is deprecated and has stopped returning data. |
|azureBlobToken (deprecated) |String| When you export to your own Azure storage account, SAS token for the container URL. The **azureBlobToken** property is deprecated and has stopped returning data. |

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetquerythis.export"
}
-->
```http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/queries/fcb86cd1-50e0-427c-840e-ba6f087364e5/export
Content-Type: application/json

{
    "outputName": "Export reviewset query via API",
    "description": "Export for the Contoso investigation 2",
    "exportOptions": "originalFiles,fileInfo,tags",
    "exportStructure": "directory"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewsetquerythisexport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewsetquerythisexport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetquerythisexport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetquerythisexport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewsetquerythisexport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewsetquerythisexport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewsetquerythisexport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
```
