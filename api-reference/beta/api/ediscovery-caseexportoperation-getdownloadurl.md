---
title: "caseExportOperation: getDownloadUrl"
description: "Returns the download URL "
author: "mahage-msft"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: apiPageType
ms.topic: reference
---

# caseExportOperation: getDownloadUrl

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the download URL for an export when the export is ready.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ediscovery_caseexportoperation_getdownloadurl" } -->
[!INCLUDE [permissions-table](../includes/permissions/ediscovery-caseexportoperation-getdownloadurl-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /compliance/ediscovery/cases/{caseId}/operations/{operationId}/microsoft.graph.ediscovery.caseExportOperation/getDownloadUrl
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a String in the response body. The value field represents the download URL from where the export can be retrieved.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "caseexportoperation_getdownloadurl"
}
-->

``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/99e865fc-e29f-479a-ba83-9e58eb017103/operations/63926d4779c243458902328d83f61f53/microsoft.graph.ediscovery.caseExportOperation/getDownloadUrl
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/caseexportoperation-getdownloadurl-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.String"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Edm.String",
    "value": "https://nam01pkgg0052.blob.edproxy.nam01.ediscovery.outlook.com/packaging0041e27c6c924a48befe348d34066c25/d0b6d2a7-5fc5-44f0-9bca-6b9d34a9410b.zip?sv=2018-03-28&sr=c&sig=TRFQNUGFtuVO7zd39oNJjzcQYJus2TXY%2B50aed4pJJM%3D&se=2020-12-28T23%3A06%3A26Z&sp=racwdl"
}
```
