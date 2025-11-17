---
title: "Get customDataProvidedResourceUploadSession"
description: "Read the properties and relationships of customDataProvidedResourceUploadSession object."
author: "pratima-cloudknox"
ms.date: 10/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get customDataProvidedResourceUploadSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object.

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
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

## Optional query parameters

None.

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
<!-- {
  "blockType": "request",
  "name": "get_customdataprovidedresourceuploadsession"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/73eb2497-3b88-4c0a-8bb3-68ba8162beff/accessPackageResources/99ab2454-3b88-4c0a-8bb3-68ba8162beff/uploadSessions/23f27c15-72f9-45fe-9e9c-e3d8f75bdc44
```


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
    "id": "23f27c15-72f9-45fe-9e9c-e3d8f75bdc44",
    "status": "Complete",
    "isUploadDone": true,
    "stats": {
        "filesUploaded": 1,
        "totalBytesUploaded": 2000000,
    },
    "files": [
      {
          "name": "building-a-access.csv",
          "size": 2000000,
          "uploadedDateTime": "2024-03-06T01:35:12.123Z"
      }
    ],
    "createdDateTime": "2024-03-06T01:35:12.123Z",
    "expirationDateTime": "2024-03-07T01:35:12.123Z"
}
```

