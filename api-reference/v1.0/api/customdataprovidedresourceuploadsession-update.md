---
title: "Update customDataProvidedResourceUploadSession"
description: "Update the properties of a customDataProvidedResourceUploadSession object."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update customDataProvidedResourceUploadSession

Namespace: microsoft.graph

Update the properties of a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) created for an [accessPackageResource](../resources/accesspackageresource.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdataprovidedresourceuploadsession-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdataprovidedresourceuploadsession-update-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isUploadDone|Boolean|Whether the upload session is completed. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object in the response body. The only allowed update is to set **isUploadDone** to `true`.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_customdataprovidedresourceuploadsession"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
Content-Type: application/json

{
  "isUploadDone": true
}
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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs('3c9f2b1e-8a4d-4e7f-9d2a-6b3e1c7f5a9d')/resources('15eeb4df-bd15-4d8b-9679-e75791dbc1d9')/uploadSessions/$entity",
  "@odata.type": "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "id": "0b64df22-1a83-472c-9556-6c3dc41742b9",
  "referenceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8",
  "status": "complete",
  "isUploadDone": true,
  "createdDateTime": "2026-04-01T18:24:07.1484627Z",
  "stats": {
    "filesUploaded": 1,
    "totalBytesUploaded": 2394
  },
  "data": {
    "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
    "reviewDefinitionId": "f5744a40-bca0-4506-a286-a8afac513d1c",
    "reviewInstanceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8"
  },
  "files": [
    {
      "id": "22125c79-b0fe-4553-8229-6556d85b2561",
      "name": "generated_test_data_20.csv",
      "size": 2394,
      "uploadedDateTime": "2026-04-01T18:42:07.7890258Z"
    }
  ]
}
```
