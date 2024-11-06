---
title: "ediscoverySearch: exportResult"
description: "Export results from an estimated ediscoverySearch."
author: "pamehra"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: exportResult

Namespace: microsoft.graph.security

Export results from an estimated [ediscoverySearch](../resources/security-ediscoverysearch.md). For details, see [Manage a collection estimate](/purview/ediscovery-create-draft-collection#manage-a-collection-estimate).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_exportresult" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-exportresult-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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
| additionalOptions | [microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values) | The additional options for the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`. Required.|
| description | String | The description of the export result. |
| displayName | String | The display name of the export result. |
| exportCriteria | [microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values) | The portion of the estimate results to be exported. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`. Required.|
| exportFormat | [microsoft.graph.security.exportFormat](../resources/security-ediscoverysearchexportoperation.md#exportformat-values) | The desired format of the exported emails. The possible values are: `pst`, `msg`, `eml`, `unknownFutureValue`. Required. |
| exportLocation | [microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values) | Location scope for partially indexed items. You can choose to include partially indexed items only in responsive locations with search hits or in all targeted locations. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`.|

## Response

If the export starts successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header that includes the location of the [microsoft.graph.security.ediscoverySearchExportOperation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export. To check the status of the export operation, make a GET request to the location URL.

## Examples

### Example 1: Export results with search hits only, excluding partially indexed items, with no additional options, as .pst files for each mailbox

The following example shows how to export results with search hits only as .pst files for each mailbox, excluding partially indexed items. The example selects no other options selected.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result1"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 1 - simple PST",
  "exportCriteria": "searchHits",
  "additionalOptions": "none",
  "exportFormat": "pst"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/export-result1-cli-snippets.md)]
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
``` http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('01826ce3-43a3-4235-a121-81d05926efae')
```

### Example 2: Export results with search hits and partially indexed items in all locations, with no additional options, as .pst files for each mailbox.

The following example shows how to export results with search hits and partially indexed items in all locations, with no additional options selected, as .pst files for each mailbox.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result2"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 2",
  "exportCriteria": "searchHits, partiallyIndexed",
  "exportLocation": "responsiveLocations, nonresponsiveLocations",
  "additionalOptions": "none",
  "exportFormat": "pst"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/export-result2-cli-snippets.md)]
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
``` http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('c74d3039-5c79-4093-8e45-2abb94e32ba9')
```

### Example 3: Export results with search hits and partially indexed items in locations with search hits, with no additional options, as .msg files for each message

The following example shows how to export results with search hits and partially indexed items in locations with search hits, with no additional options selected, as .msg files for each message.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result3"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/export-result3-cli-snippets.md)]
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
``` http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('4bf812e0-44ad-4856-a302-b4ea79725573')
```

### Example 4: Export results with partially indexed items in all targeted locations, with all additional options, as .eml files for each message

The following example shows how to export results with partially indexed items in all targeted locations, with all additional options selected, as .eml files for each message.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result4"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 4",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations, nonresponsiveLocations",
  "additionalOptions": "teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments",
  "exportFormat": "eml"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/export-result4-cli-snippets.md)]
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
``` http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('05b5c707-ed0d-4f5c-bbfd-e4941137baf1')
```

### Example 5: Export results with partially indexed items in search hit locations, with cloud attachments, as .eml files for each message

The following example shows how to export results with partially indexed items in search hit locations, with cloud attachments, as .eml files for each message.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_result5"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult
Content-Type: application/json

{
  "displayName": "Export 5",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations",
  "additionalOptions": "cloudAttachments",
  "exportFormat": "eml"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-result5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/export-result5-cli-snippets.md)]
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
``` http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/beta/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('d488f23e-f3cb-4a1c-9b9f-88ac4342f534')
```
