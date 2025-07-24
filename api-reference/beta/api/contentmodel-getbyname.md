---
title: "contentModel: getByName"
description: "Read the properties and relationships of a contentModel object by its model name."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 08/06/2024
---

# contentModel: getByName

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [contentModel](../resources/contentmodel.md) object by its model name. The name should be the full model filename, including the file extension; for example, `exampleModel.classifier`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "contentmodel_getbyname" } -->
[!INCLUDE [permissions-table](../includes/permissions/contentmodel-getbyname-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{sitesId}/contentModels/getByName
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|modelName|String|The full model file name, including the file extention.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [contentModel](../resources/contentmodel.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "contentmodelthis.getbyname"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/contentModels/getByName(modelName='BenefitChangeNotice.classifier')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/contentmodelthisgetbyname-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/contentmodelthisgetbyname-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/contentmodelthisgetbyname-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/contentmodelthisgetbyname-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/contentmodelthisgetbyname-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/contentmodelthisgetbyname-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentModel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "ede4bb84-6c94-4c39-8acf-3d9dbb667fba",
    "name":"BenefitChangeNotice",
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
    "lastModifiedDateTime": "2023-04-30T08:32:00Z",
    "modelType": "teachingMethod"
  }
}
```

