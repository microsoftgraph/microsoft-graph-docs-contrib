---
title: "List customDataProvidedResourceUploadSession objects"
description: "Get a list of the customDataProvidedResourceUploadSession objects and their properties."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List customDataProvidedResourceUploadSession objects

Namespace: microsoft.graph

Get a list of the [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accesspackageresource-list-uploadsessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageresource-list-uploadsessions-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions
```

## Optional query parameters

This method supports the `$expand`, `$filter`, `$top`, `$skip`, `$orderby`, `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following example queries for nested `$filter` and `$orderby` are supported for the **files** relationship of type [customDataProvidedResourceFile](../resources/customdataprovidedresourcefile.md).

|Property|Operators|Example|
|:---|:---|:---|
|name|`eq`, `ne`|`$expand=files($filter=name eq 'building-a-access.csv')`|
|size|`eq`, `ne`, `gt`, `ge`, `lt`, `le`|`$expand=files($filter=size gt 1000000)`|
|uploadedDateTime|`eq`, `ne`, `gt`, `ge`, `lt`, `le`|`$expand=files($filter=uploadedDateTime ge 2026-01-01T00:00:00Z)`|

The **name**, **size**, and **uploadedDateTime** properties also support `$orderby` as shown in the following examples.

Get an upload session with files sorted by **uploadedDateTime**:

```http
GET /identityGovernance/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions?$expand=files($orderby=uploadedDateTime desc)
```

Get an upload session with files filtered by **size** (larger than 1 MB):

```http
GET /identityGovernance/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions?$expand=files($filter=size gt 1000000)
```

Get an upload session with files sorted by **name**:

```http
GET /identityGovernance/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions?$expand=files($orderby=name asc)
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
<!-- {
  "blockType": "request",
  "name": "list_customdataprovidedresourceuploadsession"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customDataProvidedResourceUploadSession",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs('3c9f2b1e-8a4d-4e7f-9d2a-6b3e1c7f5a9d')/resources('15eeb4df-bd15-4d8b-9679-e75791dbc1d9')/uploadSessions",
  "value": [
    {
      "@odata.type": "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
      "id": "2fa3bc17-de50-4f48-91f0-dd4aede5c424",
      "referenceId": "6ddffb12-922b-4825-93c3-9457dc2c1f81",
      "status": "complete",
      "isUploadDone": true,
      "createdDateTime": "2026-03-24T21:34:56.220345Z",
      "stats": {
        "filesUploaded": 1,
        "totalBytesUploaded": 10331
      },
      "data": {
        "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
        "reviewDefinitionId": "a89003b1-d457-4b8a-b060-42a3b6ad6c44",
        "reviewInstanceId": "6ddffb12-922b-4825-93c3-9457dc2c1f81"
      }
    }
  ]
}
```
