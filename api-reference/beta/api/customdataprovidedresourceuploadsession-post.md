---
title: "Create customDataProvidedResourceFile"
description: "Create a new customDataProvidedResourceFile object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/09/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create customDataProvidedResourceFile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 Create an upload session for a "custom data provided resource". 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdataprovidedresourceuploadsession-post-files-permissions"
}[accesspackageresource-post-uploadsessions.md](accesspackageresource-post-uploadsessions.md)
-->

[!INCLUDE [permissions-table](../includes/permissions/accesspackagecatalog-update-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {[accesspackageresource-list-uploadsessions.md](accesspackageresource-list-uploadsessions.md)
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

## Request headers

|Name|Description|[accesspackageresource-list-uploadsessions.md](accesspackageresource-list-uploadsessions.md)
|:---|:---|[delete-customdataprovidedresourcefile-update.md](delete-customdataprovidedresourcefile-update.md)
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|multipart/form-data. Required.|

## Request body

In the request body, supply a JSON representation of the [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)  object.

You can specify the following properties when creating a **customDataProvidedResourceUploadSession**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|source|String|Custom Data Provided Resource Name for which the customer is uploading data. Required.|
|type|String| The odata type representing the columns of the CSV that are expected to be uploaded in this session. The possible values are: "#microsoft.graph.accessReviewDataUploadTriggerCallbackData". Required.|
|data|[accessReviewDataUploadSessionContextData](../resources/accessreviewdatauploadsessioncontextdata.md)| Contains information about the access review instance for which the data is being uploaded. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [customDataProvidedResourceFile](../resources/customdataprovidedresourcefile.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_customdataprovidedresourcefile_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions
Content-Type: application/json

{
"source": "BuildingAccessData", // CustomDataProvidedResource name
"type":  "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
    "data": {
    "accessReviewId": "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b",
    "accessReviewInstanceId": "6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b",
    }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customDataProvidedResourceFile"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
{
    "id": "23f27c15-72f9-45fe-9e9c-e3d8f75bdc44",
    "status": "Active",
    "isUploadDone": false,
    "stats": {
        "filesUploaded": 0,
        "totalBytesUploaded": 0,
    },
    "files": [],
    "createdDateTime": "2024-03-06T01:35:12.123Z",
    "expirationDateTime": "2024-03-07T01:35:12.123Z"
}
```

