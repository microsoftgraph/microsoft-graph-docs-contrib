---
title: "ediscoveryReviewSet: export"
description: "Initiate an export from a reviewSet."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
ms.topic: reference
---

# ediscoveryReviewSet: export
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate an export from a **reviewSet**.  For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryreviewset_export" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryreviewset-export-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/export
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
|exportOptions|String|Specifies options that control the format of the export. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`. The `fileInfo` member is deprecated and has stopped returning data. The summary and load file are always included.|
|exportStructure|String| Options that control file structure and packaging of the export. Possible values are: `none`, `directory`, `pst`.|
|outputName|String| Name of the export. Required. |
|azureBlobContainer (deprecated)|String| When you export to your own Azure storage account, the value is the container URL. The **azureBlobContainer** property is deprecated and has stopped returning data. |
|azureBlobToken (deprecated)|String| When you export to your own Azure storage account, SAS token for the container URL. The **azureBlobToken** property is deprecated and has stopped returning data. |

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the [Export operation](../resources/security-ediscoveryexportoperation.md) that was created to handle the export.

## Examples

### Request
Here's an example  of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetthis.export"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/export
Content-Type: application/json

{
    "outputName": "Export via API",
    "description": "Export for the Contoso investigation",
    "exportOptions": "originalFiles,fileInfo,tags",
    "exportStructure": "directory"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewsetthisexport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/ediscoveryreviewsetthisexport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewsetthisexport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetthisexport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetthisexport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewsetthisexport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewsetthisexport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewsetthisexport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

