---
title: "contentModel: addToDrive"
description: "Automatically process new documents in the SharePoint libraries."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 08/13/2024
---

# contentModel: addToDrive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Apply a [contentModel](../resources/contentmodel.md) to SharePoint document libraries. For an existing model that's already trained, this action automatically processes new documents that are added to the SharePoint libraries.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmodel-addtodrive-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentmodel-addtodrive-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /sites/{sitesId}/contentModels/{contentModelId}/addToDrive
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|driveId|String|The model applied to drive ID.|



## Response

If successful, this action returns a `200 OK` response code and a [contentModelUsage](../resources/contentmodelusage.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "contentmodelthis.addtodrive"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/contentModels/17139234-22d4-205c-e7bd-1c5bc1ab19e0/addToDrive
Content-Type: application/json

{
  "driveId": "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/contentmodelthisaddtodrive-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/contentmodelthisaddtodrive-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/contentmodelthisaddtodrive-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/contentmodelthisaddtodrive-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/contentmodelthisaddtodrive-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/contentmodelthisaddtodrive-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentModelUsage"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "createdBy": {
        "user": {
          "displayName": "Travis Li",
          "email": "travisli@microsoft.com",
          "resourceVisualization": {
                "acronym": "TL",
                "color": "#881798"
            }
          }
  },
  "createdDateTime": "2023-04-30T08:32:00Z",
  "lastModifiedBy": {
        "user": {
          "displayName": "Travis Li",
          "email": "travisli@microsoft.com",
          "resourceVisualization": {
                "acronym": "TL",
                "color": "#881798"
            }
          }
  },
  "lastModifiedDateTime": "2023-05-31T20:31:51Z",
  "modelVersion": "1.0",
  "driveId": "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
  "modelId": "17139234-22d4-205c-e7bd-1c5bc1ab19e0"
}
```

