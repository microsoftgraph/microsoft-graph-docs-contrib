---
title: "Get customDataProvidedResourceUploadSession"
description: "Read the properties and relationships of customDataProvidedResourceUploadSession object."
author: "jaylenemartinez0"
ms.date: 04/01/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get customDataProvidedResourceUploadSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdataprovidedresourceuploadsession-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdataprovidedresourceuploadsession-get-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_customdataprovidedresourceuploadsession"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-customdataprovidedresourceuploadsession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-customdataprovidedresourceuploadsession-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-customdataprovidedresourceuploadsession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-customdataprovidedresourceuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-customdataprovidedresourceuploadsession-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-customdataprovidedresourceuploadsession-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---
### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customDataProvidedResourceUploadSession"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/catalogs('3c9f2b1e-8a4d-4e7f-9d2a-6b3e1c7f5a9d')/accessPackageResources('15eeb4df-bd15-4d8b-9679-e75791dbc1d9')/uploadSessions/$entity",
  "id": "0b64df22-1a83-472c-9556-6c3dc41742b9",
  "referenceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8",
  "status": "active",
  "isUploadDone": false,
  "createdDateTime": "2026-04-01T18:24:07.1484627Z",
  "source": "BuildingAccessDataTIP",
  "type": "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
  "stats": {
    "filesUploaded": 0,
    "totalBytesUploaded": 0
  },
  "data": {
    "@odata.type": "#microsoft.graph.accessReviewResourceDataUploadSessionContextData",
    "accessReviewId": "f5744a40-bca0-4506-a286-a8afac513d1c",
    "accessReviewInstanceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8"
  }
}
```

