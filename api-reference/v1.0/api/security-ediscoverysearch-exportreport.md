---
title: "ediscoverySearch: exportReport"
description: "Export an item report from an estimated ediscoverySearch."
author: "pamehra"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 10/30/2024
---

# ediscoverySearch: exportReport

Namespace: microsoft.graph.security

Export an item report from an estimated [ediscoverySearch](../resources/security-ediscoverysearch.md). For details, see [Manage a collection estimate](/purview/ediscovery-create-draft-collection#manage-a-collection-estimate).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_exportreport" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-exportreport-permissions.md)]

[!INCLUDE [rbac-ediscovery-custodian-apis](../includes/rbac-for-apis/rbac-ediscovery-custodian-export-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportReport
POST /security/cases/ediscoveryCases('{ediscoveryCaseId}')/searches('{ediscoverySearchId}')/exportReport
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
| additionalOptions | [microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values) | The additional options for the export. Supports a subset of the values for **additionalOptions**. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`, `htmlTranscripts`, `advancedIndexing`, `allItemsInFolder`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `htmlTranscripts`, `advancedIndexing`, `allItemsInFolder`. The `advancedIndexing` value is only available if **exportCriteria** includes `partiallyIndexed`. Required. |
| cloudAttachmentVersion | microsoft.graph.security.cloudAttachmentVersion | The versions of cloud attachments to include in messages. The possible values are: `latest`, `recent10`, `recent100`, `all`, `unknownFutureValue`. The default value is `latest`. |
| description | String | The description of the export report. |
| documentVersion | microsoft.graph.security.documentVersion | The versions of files in SharePoint to include. The possible values are: `latest`, `recent10`, `recent100`, `all`, `unknownFutureValue`. The default value is `latest`. |
| displayName | String | The display name of the export report. |
| exportCriteria | [microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values) | Bitwise options that specify the portion of the estimate report to export. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`. Required.|
| exportLocation | [microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values) | Bitwise options that specify the location scope for partially indexed items. You can choose to include partially indexed items only in responsive locations with search hits or in all targeted locations. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`. The `nonresponsiveLocations` value is only available if **exportCriteria** includes `partiallyIndexed`.|

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header that includes the location of the [microsoft.graph.security.ediscoverySearchExportOperation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export. To check the status of the export operation, make a GET request to the location URL.

## Examples

### Example 1: Export a report of items with search hits only, excluding partially indexed items, without additional options

The following example shows how to export a report of items with search hits only, excluding partially indexed items, with no additional options selected.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_report1"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportReport
Content-Type: application/json

{
  "displayName": "Export 1",
  "exportCriteria": "searchHits",
  "additionalOptions": "none"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-report1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-report1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-report1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-report1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-report1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-report1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-report1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_report1"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('f57fc79d-bea8-42ac-b0be-217302d5683c')
```

### Example 2: Export a report of items with search hits and partially indexed items in all targeted locations, without additional options

The following example shows how to export a report of items with search hits and partially indexed items in all targeted locations, with no additional options selected.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_report2"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportReport
Content-Type: application/json

{
  "displayName": "Export 2",
  "exportCriteria": "searchHits, partiallyIndexed",
  "exportLocation": "responsiveLocations, nonresponsiveLocations",
  "additionalOptions": "none"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-report2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-report2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-report2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-report2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-report2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-report2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-report2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_report2"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('cbcb4807-e76e-4ef0-bd5b-e2177c13f07e')
```

### Example 3: Export a report of items with search hits and partially indexed items in locations with search hits, without additional options

The following example shows how to export a report of items with search hits and partially indexed items in locations with search hits, with no additional options selected.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "truncated": true,
  "name": "export_report3"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportReport
Content-Type: application/json

{
  "displayName": "Export 3",
  "exportCriteria": "searchHits, partiallyIndexed",
  "exportLocation": "responsiveLocations",
  "additionalOptions": "none"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-report3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-report3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-report3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-report3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-report3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-report3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-report3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_report3"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('c56f66de-b780-4efc-aa0c-4ef3271ad6b4')
```

### Example 4: Export a report of partially indexed items in all targeted locations with all additional options selected

The following example shows how to export a report of partially indexed items in all targeted locations with all additional options selected.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_report4"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportReport
Content-Type: application/json

{
  "displayName": "Export 4",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations, nonresponsiveLocations",
  "additionalOptions": "advancedIndexing, subfolderContents, allItemsInFolder, listAttachments, teamsAndYammerConversations, htmlTranscripts, cloudAttachments"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-report4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-report4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-report4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-report4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-report4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-report4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-report4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_report4"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('572d44e2-5e77-4443-a2ed-cd036bdc0304')
```

### Example 5: Export a report of partially indexed items in locations with search hits and cloud attachments

The following example shows how to export a report of partially indexed items in locations with search hits and cloud attachments, including the number of document and cloud attachment versions.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "export_report5"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportReport
Content-Type: application/json

{
  "displayName": "Export 5",
  "exportCriteria": "partiallyIndexed",
  "exportLocation": "responsiveLocations",
  "additionalOptions": "cloudAttachments",
  "cloudAttachmentVersion": "all",
  "doucmentVersion": "recent100"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/export-report5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/export-report5-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/export-report5-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/export-report5-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/export-report5-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/export-report5-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/export-report5-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "export_report5"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Length: 0
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('dbc06feb-a6a5-46a2-8e4e-534353b071e4')/operations('788159f9-f860-43f2-8fc5-0fc17df0e696')
```
