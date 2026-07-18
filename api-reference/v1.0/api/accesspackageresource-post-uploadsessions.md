---
title: "Create customDataProvidedResourceUploadSession"
description: "Create a new customDataProvidedResourceUploadSession object."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create customDataProvidedResourceUploadSession

Namespace: microsoft.graph

Create a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object. Only one upload session is allowed per reference instance (for example, access review instance) and [accessPackageResource](../resources/accesspackageresource.md) pair. Once you create an upload session, upload files, and complete the session, the data is processed and you cannot create another upload session for that same pair. If you encounter errors with files uploaded or need to start fresh, you can [delete the active upload session](../api/accesspackageresource-delete-uploadsessions.md) to create a new one.

The following table lists the derived types of [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) that can be created. Specify the `@odata.type` in the request body to indicate the derived type.

|Derived type|Description|
|:---|:---|
|[customDataProvidedResourceAccessReviewUploadSession](../resources/customdataprovidedresourceaccessreviewuploadsession.md)|An upload session for access review scenarios.|

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdataprovidedresource-post-uploadsessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdataprovidedresource-post-uploadsessions-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [customDataProvidedResourceUploadSessionRequest](../resources/customdataprovidedresourceuploadsessionrequest.md) object, and set the `@odata.type` property to the [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) derived type that you want to create. For access review scenarios, set `@odata.type` to `#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession`.

You can specify the following properties when creating a **customDataProvidedResourceUploadSession**.

|Property|Type|Description|
|:---|:---|:---|
|data|[microsoft.graph.customDataProvidedResourcePayloads.data](../resources/customdataprovidedresourcepayloads-data.md)|Contains information about the context for which data is being uploaded. For access review scenarios, use [microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData](../resources/customdataprovidedresourcepayloads-accessreviewcontextdata.md). Required.|

## Response

If successful, this method returns a `201 Created` response code and a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_customdataprovidedresourceuploadsession_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "data": {
    "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
    "reviewDefinitionId": "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b",
    "reviewInstanceId": "15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d"
  }
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs('3c9f2b1e-8a4d-4e7f-9d2a-6b3e1c7f5a9d')/resources('15eeb4df-bd15-4d8b-9679-e75791dbc1d9')/uploadSessions/$entity",
  "@odata.type": "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "id": "0b64df22-1a83-472c-9556-6c3dc41742b9",
  "referenceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8",
  "status": "active",
  "isUploadDone": false,
  "createdDateTime": "2026-04-01T18:24:07.148406Z",
  "stats": {
    "filesUploaded": 0,
    "totalBytesUploaded": 0
  },
  "data": {
    "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
    "reviewDefinitionId": "f5744a40-bca0-4506-a286-a8afac513d1c",
    "reviewInstanceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8"
  },
  "files": []
}
```
