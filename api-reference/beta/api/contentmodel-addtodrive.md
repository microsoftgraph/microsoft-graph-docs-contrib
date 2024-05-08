---
title: "contentModel: addToDrive"
description: "If a content model is properly trained or configured, users use this API to apply the model to document libraries. New documents in the libraries are automatically processed by the model."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# contentModel: addToDrive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

If a content model is properly trained or configured, users use this API to apply the model to document libraries. New documents in the libraries are automatically processed by the model.

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
|driveId|String|model applied to drive Id|



## Response

If successful, this action returns a `200 OK` response code and a [contentModelUsage](../resources/contentmodelusage.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "contentmodelthis.addtodrive"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/{sitesId}/contentModels/{contentModelId}/addToDrive
Content-Type: application/json

{
  "driveId": "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.contentModelUsage"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
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
  "createdDateTime": "2023-05-31T20:31:51Z",
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
  "lastModifiedDateTime": "2023-05-31T20:31:51Z",
  "modelVersion": "1.0",
  "driveId": "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
  "modelId": "17139234-22d4-205c-e7bd-1c5bc1ab19e0"
}
```

