---
title: "contentModel: getAppliedDrives"
description: "List all the contentModelUsage information of an applied contentModel."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 08/13/2024
---

# contentModel: getAppliedDrives

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [contentModelUsage](../resources/contentmodel.md) information related to a [contentModel](../resources/contentmodel.md) applied to a SharePoint document library.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "contentmodel_getapplieddrives" } -->
[!INCLUDE [permissions-table](../includes/permissions/contentmodel-getapplieddrives-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{sitesId}/contentModels/{contentModelId}/getAppliedDrives
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [contentModelUsage](../resources/contentmodelusage.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "contentmodelthis.getapplieddrives"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/contentModels/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/getAppliedDrives
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/contentmodelthisgetapplieddrives-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/contentmodelthisgetapplieddrives-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/contentmodelthisgetapplieddrives-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/contentmodelthisgetapplieddrives-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/contentmodelthisgetapplieddrives-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/contentmodelthisgetapplieddrives-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/contentmodelthisgetapplieddrives-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.contentModelUsage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

