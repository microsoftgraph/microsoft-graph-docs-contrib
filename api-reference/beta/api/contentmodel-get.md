---
title: "Get contentModel"
description: "This API helps retrieve a content model by its Id"
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# Get contentModel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [contentModel](../resources/contentmodel.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmodel-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentmodel-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{sitesId}/contentModels/{contentModelId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [contentModel](../resources/contentmodel.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_contentmodel"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/contentModels/{contentModelId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.contentModel"
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
        "@odata.type": "microsoft.graph.identitySet"
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
        "@odata.type": "microsoft.graph.identitySet"
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

