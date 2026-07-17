---
title: "customDataProvidedResourceUploadSession: uploadFile"
description: "Upload a file in a customDataProvidedResourceUploadSession"
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# customDataProvidedResourceUploadSession: uploadFile

Namespace: microsoft.graph

Upload a file in a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) created for an [accessPackageResource](../resources/accesspackageresource.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdataprovidedresourceuploadsession-uploadfile-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdataprovidedresourceuploadsession-uploadfile-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}/uploadFile
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|multipart/form-data; boundary={your-boundary}. Required.|

## Request body

The body can contain a multipart message as shown in the example.
The columns in the CSV should match the following required properties: `principalId`, `principalType`, `permissionId`, `permissionName`, `permissionDescription`, `permissionType`.

## Response

If successful, this action returns a `200 OK` response code and a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "customdataprovidedresourceuploadsessionthis.uploadfile"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}/uploadFile
Content-Type: multipart/form-data; boundary=MyPartBoundary198374

--MyPartBoundary198374
Content-Disposition: form-data; name="file"; filename="building-access-data.csv"
Content-Type: application/octet-stream

principalId,principalType,permissionId,permissionName,permissionDescription,permissionType
550e8400-e29b-41d4-a716-446655440000,user,6ba7b810-9dad-11d1-80b4-00c04fd430c8,Access,Physical access to building,Physical
7c9e6679-7425-40de-944b-e07fc1f90ae7,user,6ba7b810-9dad-11d1-80b4-00c04fd430c9,Reserve,Book conference room,Administrative
--MyPartBoundary198374--
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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "@odata.type": "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "id": "0b64df22-1a83-472c-9556-6c3dc41742b9",
  "referenceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8",
  "status": "active",
  "isUploadDone": false,
  "createdDateTime": "2026-04-01T18:24:07.1484627Z",
  "stats": {
    "filesUploaded": 1,
    "totalBytesUploaded": 198374
  },
  "data": {
    "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
    "reviewDefinitionId": "f5744a40-bca0-4506-a286-a8afac513d1c",
    "reviewInstanceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8"
  },
  "files": [
    {
      "id": "22125c79-b0fe-4553-8229-6556d85b2561",
      "name": "valid.csv",
      "size": 198374,
      "uploadedDateTime": "2026-04-01T18:42:07.7890258Z"
    }
  ]
}
```
