---
title: "ediscoverySearch: exportResult"
description: "Export results from an estimated ediscoverySearch."
author: "pamehra"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 10/30/2024
---

# ediscoverySearch: exportResult

Namespace: microsoft.graph.security

Export results from an estimated [ediscoverySearch](../resources/security-ediscoverysearch.md). For details, see [Manage a collection estimate](/purview/ediscovery-create-draft-collection#manage-a-collection-estimate).

>[!NOTE]
> Usage of eDiscovery APIs for tenants with Standard Microsoft (for example, E3) licenses requires a subscription to Purview pay-as-you-go billing. For more information, see [Billing in eDiscovery](/purview/edisc-billing).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_exportresult" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-exportresult-permissions.md)]

[!INCLUDE [rbac-ediscovery-custodian-apis](../includes/rbac-for-apis/rbac-ediscovery-custodian-export-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportResult
POST /security/cases/ediscoveryCases('{ediscoveryCaseId}')/searches('{ediscoverySearchId}')/exportResult
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that you can use with this action.

| Parameter | Type | Description |
|:---|:---|:---|
| additionalOptions | [microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values) | The additional options for the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`, `htmlTranscripts`, `advancedIndexing`, `allItemsInFolder`, `includeFolderAndPath`, `condensePaths`, `friendlyName`, `splitSource`, `includeReport`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `htmlTranscripts`, `advancedIndexing`, `allItemsInFolder`, `includeFolderAndPath`, `condensePaths`, `friendlyName`, `splitSource`, `includeReport`. The `advancedIndexing` value is only available if **exportCriteria** includes `partiallyIndexed`. Required.|
| cloudAttachmentVersion | microsoft.graph.security.cloudAttachmentVersion | The versions of cloud attachments to include in messages. The possible values are: `latest`, `recent10`, `recent100`, `all`, `unknownFutureValue`. The default value is `latest`. |
| description | String | The description of the export result. |
| displayName | String | The display name of the export result. |
| documentVersion | microsoft.graph.security.documentVersion | The versions of files in SharePoint to include. The possible values are: `latest`, `recent10`, `recent100`, `all`, `unknownFutureValue`. The default value is `latest`. |
| exportCriteria | [microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values) | The portion of the estimate results to be exported. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`. Required.|
| exportFormat | [microsoft.graph.security.exportFormat](../resources/security-ediscoverysearchexportoperation.md#exportformat-values) | The desired format of the exported emails. The possible values are: `pst`, `msg`, `eml` (deprecated), `unknownFutureValue`. Required. The `eml` member is deprecated. It remains in v1.0 for backward compatibility. Going forward, use either `pst` or `msg`. |
| exportLocation | [microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values) | Location scope for partially indexed items. You can choose to include partially indexed items only in responsive locations with search hits or in all targeted locations. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`. The `nonresponsiveLocations` value is only available if **exportCriteria** includes `partiallyIndexed`.|

## Response

If the export starts successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header that includes the location of the [microsoft.graph.security.ediscoverySearchExportOperation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export. To check the status of the export operation, make a GET request to the location URL.

## Examples

### Example 1: Export results with search hits only, excluding partially indexed items, as .pst files for each mailbox, and thread contextual chat messages into HTML transcripts

The following example shows how to export results with search hits only, excluding partially indexed items, as .pst files for each mailbox, and thread contextual chat messages into HTML transcripts.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result1"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 1 - simple PST",
  "exportCriteria": "searchHits",
  "additionalOptions": "htmlTranscripts, splitSource, includeFolderAndPath, condensePaths, friendlyName",
  "exportFormat": "pst"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-result1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-result1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-result1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-result1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-result1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-result1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_result1"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('01826ce3-43a3-4235-a121-81d05926efae')
```

### Example 2: Export results with search hits and partially indexed items from all locations, as .pst files for each mailbox

The following example shows how to export results with search hits and partially indexed items from all locations, as .pst files for each mailbox.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result2"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 2",
  "exportCriteria": "searchHits, partiallyIndexed",
  "exportLocation": "responsiveLocations, nonresponsiveLocations",
  "additionalOptions": "splitSource",
  "exportFormat": "pst"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-result2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-result2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-result2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-result2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-result2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-result2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_result2"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('c74d3039-5c79-4093-8e45-2abb94e32ba9')
```

### Example 3: Export results with search hits and partially indexed items from locations with search hits, with no additional options, as .msg files for each message

The following example shows how to export results with search hits and partially indexed items from locations with search hits, with no additional options selected, as .msg files for each message.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result3"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 3",
  "exportCriteria": "searchHits, partiallyIndexed",
  "exportLocation": "responsiveLocations",
  "additionalOptions": "none",
  "exportFormat": "msg"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-result3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-result3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-result3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-result3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-result3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-result3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_result3"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('4bf812e0-44ad-4856-a302-b4ea79725573')
```

### Example 4: Export results with partially indexed items from all targeted locations, with all additional options, as .eml files for each message

The following example shows how to export results with partially indexed items from all targeted locations, with all additional options selected, as .eml files for each message.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result4"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 4",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations, nonresponsiveLocations",
  "additionalOptions": "advancedIndexing, subfolderContents, allItemsInFolder, listAttachments, teamsAndYammerConversations, htmlTranscripts, cloudAttachments, includeFolderAndPath, splitSource, condensePaths, friendlyName, includeReport",
  "exportFormat": "eml"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-result4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-result4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-result4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-result4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-result4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-result4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_result4"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('05b5c707-ed0d-4f5c-bbfd-e4941137baf1')
```

### Example 5: Export results with partially indexed items from search hit locations and cloud attachments

The following example shows how to export results with partially indexed items from search hit locations and cloud attachments. It specifies how many versions of documents and cloud attachments to include, and exports each message as a .eml file.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result5"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 5",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations",
  "additionalOptions": "splitSource, includeFolderAndPath, condensePaths, friendlyName",
  "exportFormat": "eml",
  "cloudAttachmentVersion": "all",
  "documentVersion": "recent100"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-result5-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-result5-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-result5-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-result5-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-result5-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-result5-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_result5"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('d488f23e-f3cb-4a1c-9b9f-88ac4342f534')
```
