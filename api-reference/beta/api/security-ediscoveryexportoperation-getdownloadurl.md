---
title: "ediscoveryExportOperation: getDownloadUrl (deprecated)"
description: "Return a download URL from where the export content is delivered as a stream."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoveryExportOperation: getDownloadUrl (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


> [!CAUTION]
> The **getDownloadUrl** method is deprecated and will stop returning data on April 30th, 2023. Please use the new **exportFileMetadata** property returned by the [Get caseOperation](../api/security-caseoperation-get.md) API instead.


If an Azure blob URL is not provided in export action, the export operation exports the files to an internal store. Contents of this store can be fetched by calling into this function. This returns a download URL where the zipped content is delivered as a stream.


## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryexportoperation_getdownloadurl" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryexportoperation-getdownloadurl-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/operations/{eDiscoveryCaseOperationId}/microsoft.graph.security.ediscoveryExportOperation/getDownloadUrl
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a String in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryexportoperationthis.getdownloadurl"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/operations/c5ae226f457547a582ef0eb6dbfaee25/microsoft.graph.security.ediscoveryExportOperation/getDownloadUrl
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryexportoperationthisgetdownloadurl-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.String"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: text/plain

{
    "https://sdfpkgg0021.blob.edproxy.aed01.ediscovery.outlook.com/packaging120g37c10016472cb0abf28fac5800b0/6dec1a1c-0577-424f-819c-9542edc47f5a.zip?{SASToken}"
}
```

