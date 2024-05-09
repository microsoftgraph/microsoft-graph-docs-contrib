---
title: "contentModel: getByName"
description: "Read the properties and relationships of a contentModel object by its model name."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# contentModel: getByName

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a contentModel object by its model name. The name should be the model file full name, including its file extension. For example, exampleModel.classifier.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmodel-getbyname-permissions"
}
-->
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
The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|modelName|String|**TODO: Add Description**|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [contentModel](../resources/contentmodel.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "contentmodelthis.getbyname"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/contentModels/getByName(modelName='exampleModel.classifier')
```


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
            "displayName": "Graph API",
            "email": "graph@MICROSOFT.COM",
            "resourceVisualization": {
                 "acronym": "GR",
                 "color": "#881798"
              }
           }
    },
    "created": "2023-04-30T08:32:00Z",
    "lastModifiedBy": {
         "user": {
            "displayName": "Graph API",
            "email": "graph@MICROSOFT.COM",
            "resourceVisualization": {
                 "acronym": "GR",
                 "color": "#881798"
              }
           }
    },
    "lastModifiedDateTime": "2023-04-30T08:32:00Z",
    "modelType": "teachingMethod"
  }
}
```

