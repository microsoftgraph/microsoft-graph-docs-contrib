---
title: "Create customDataProvidedResourceUploadSession"
description: "Create a new customDataProvidedResourceUploadSession object."
author: "jaylenemartinez0"
ms.date: 04/01/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create customDataProvidedResourceUploadSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object. Only one upload session is allowed per reference instance (for example, access review instance) and [customDataProvidedResource](../resources/customdataprovidedresource.md) pair. Once you create an upload session, upload files, and complete the session, the data is processed and you cannot create another upload session for that same pair. If you encounter errors with files uploaded or need to start fresh, you can [delete the active upload session](accesspackageresource-delete-uploadsessions.md) to create a new one.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
POST /identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customDataProvidedResourceUploadSessionRequest](../resources/customdataprovidedresourceuploadsessionrequest.md) object.

You can specify the following properties when creating a **customDataProvidedResourceUploadSession**.

|Property|Type|Description|
|:---|:---|:---|
|source|String|The name of the Custom Data Provided Resource for which the customer is uploading data. Required.|
|type|String| The odata type representing the columns of the CSV that are expected to be uploaded in this session. The possible values are: `accessReviewDataUploadTriggerCallbackData`. Required.|
|data|[accessReviewResourceDataUploadSessionContextData](../resources/accessreviewresourcedatauploadsessioncontextdata.md)| Contains information about the access review definition and access review instance for which the data is being uploaded. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customdataprovidedresourceuploadsession_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions
Content-Type: application/json

{
  "source": "BuildingAccessData",
  "type":  "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
  "data": {
      "accessReviewId": "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b",
      "accessReviewInstanceId": "6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customdataprovidedresourceuploadsession-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customdataprovidedresourceuploadsession-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customdataprovidedresourceuploadsession-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customdataprovidedresourceuploadsession-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customdataprovidedresourceuploadsession-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customdataprovidedresourceuploadsession-from--python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/catalogs('3c9f2b1e-8a4d-4e7f-9d2a-6b3e1c7f5a9d')/accessPackageResources('15eeb4df-bd15-4d8b-9679-e75791dbc1d9')/uploadSessions/$entity",
  "id": "0b64df22-1a83-472c-9556-6c3dc41742b9",
  "referenceId": "ca24f9b9-5917-4971-9b5b-07aae0aa74e8",
  "status": "active",
  "isUploadDone": false,
  "createdDateTime": "2026-04-01T18:24:07.148406Z",
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
  },
  "files": []
}
```

