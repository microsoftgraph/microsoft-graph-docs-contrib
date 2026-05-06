---
title: "List customDataProvidedResourceUploadSession objects"
description: "Get a list of the customDataProvidedResourceUploadSession objects and their properties."
author: "jaylenemartinez0"
ms.date: 04/01/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List customDataProvidedResourceUploadSession objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accesspackageresource-list-uploadsessions-permissions"
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
GET /identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions
```

## Optional query parameters

This method supports the `$expand`, `$filter`, `$top`, `$skip`, `$orderby`, `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

** Example queries for nested `$filter` and `$orderby` supported for the **files** relationship of type **customDataProvidedResourceUploadSession**.

|Property|Operators|Example|
|:---|:---|:---|
|name|`eq`, `ne`|`$expand=files($filter=name eq 'building-a-access.csv')`|
|size|`eq`, `ne`, `gt`, `ge`, `lt`, `le`|`$expand=files($filter=size gt 1000000)`|
|uploadedDateTime|`eq`, `ne`, `gt`, `ge`, `lt`, `le`|`$expand=files($filter=uploadedDateTime ge 2026-01-01T00:00:00Z)`|

The **name**, **size**, and **uploadedDateTime** proeprties also support `$orderby` as shown in the following examples: 

Get upload session with files sorted by **uploadedDateTime**:
```http
Get upload session with files sorted by **uploadedDateTime**:
```http
GET /identityGovernance/entitlementManagement/catalogs/{catalogId}/accessPackageResources/{resourceId}/uploadSessions/{sessionId}?$expand=files($orderby=uploadedDateTime desc)
```

Get upload session with files filtered by **size** (larger than 1MB)@
```http
GET /identityGovernance/entitlementManagement/catalogs/{catalogId}/accessPackageResources/{resourceId}/uploadSessions/{sessionId}?$expand=files($filter=size gt 1000000)
```

Get upload session with files sorted by **name**:
```http
GET /identityGovernance/entitlementManagement/catalogs/{catalogId}/accessPackageResources/{resourceId}/uploadSessions/{sessionId}?$expand=files($orderby=name asc)
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customdataprovidedresourceuploadsession"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customdataprovidedresourceuploadsession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customdataprovidedresourceuploadsession-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customdataprovidedresourceuploadsession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customdataprovidedresourceuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customdataprovidedresourceuploadsession-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customdataprovidedresourceuploadsession-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-customdataprovidedresourceuploadsession-python-snippets.md)]
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/catalogs('3c9f2b1e-8a4d-4e7f-9d2a-6b3e1c7f5a9d')/accessPackageResources('15eeb4df-bd15-4d8b-9679-e75791dbc1d9')/uploadSessions",
  "value": [
    {
      "id": "2fa3bc17-de50-4f48-91f0-dd4aede5c424",
      "referenceId": "6ddffb12-922b-4825-93c3-9457dc2c1f81",
      "status": "complete",
      "isUploadDone": true,
      "createdDateTime": "2026-03-24T21:34:56.220345Z",
      "source": "BuildingAccessData",
      "type": "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
      "stats": {
        "filesUploaded": 1,
        "totalBytesUploaded": 10331
      },
      "data": {
        "@odata.type": "#microsoft.graph.accessReviewResourceDataUploadSessionContextData",
        "accessReviewId": "a89003b1-d457-4b8a-b060-42a3b6ad6c44",
        "accessReviewInstanceId": "6ddffb12-922b-4825-93c3-9457dc2c1f81"
      },
      "files": [
        {
          "id": "330667fd-c977-4367-99ea-2eb12c42c573",
          "name": "test-data.csv",
          "size": 10331,
          "uploadedDateTime": "2026-03-24T21:34:57.1713709Z"
        }
      ]
    },
    {
      "id": "3717bbf7-6d72-4a6d-b83e-11e6038de8a1",
      "referenceId": "ec98588d-6de1-4f47-8a6b-0ad1b6192b6f",
      "status": "complete",
      "isUploadDone": true,
      "createdDateTime": "2026-03-27T21:02:25.0632085Z",
      "source": "CustomAccessData",
      "type": "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
      "stats": {
        "filesUploaded": 1,
        "totalBytesUploaded": 2415
      },
      "data": {
        "@odata.type": "#microsoft.graph.accessReviewResourceDataUploadSessionContextData",
        "accessReviewId": "170dc1f2-0622-4380-b44b-ee8bc58b975d",
        "accessReviewInstanceId": "ec98588d-6de1-4f47-8a6b-0ad1b6192b6f"
      },
      "files": [
        {
          "id": "2d66944b-6fa8-4604-a60e-d03ec4962d00",
          "name": "generated_test_data_20.csv",
          "size": 2415,
          "uploadedDateTime": "2026-03-27T21:02:58.9849683Z"
        }
      ]
    }
  ]
}
```
