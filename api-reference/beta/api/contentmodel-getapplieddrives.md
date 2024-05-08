---
title: "contentModel: getAppliedDrives"
description: "List all the applied document libraries of a contentModel."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# contentModel: getAppliedDrives

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the contentModelUsage information of an applied contentModel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmodel-getapplieddrives-permissions"
}
-->
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
<!-- {
  "blockType": "request",
  "name": "contentmodelthis.getapplieddrives"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/contentModels/{contentModelId}/getAppliedDrives
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(oneDrive.contentModelUsage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "createdBy": {
           "@odata.type": "microsoft.graph.identitySet"
            "user": {
                "displayName": "Graph API",
                "email": "graph@MICROSOFT.COM",
                "resourceVisualization": {
                    "acronym": "TL",
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
                    "acronym": "TL",
                    "color": "#881798"
                  }
              }
        },
      "lastModifiedDateTime": "2023-05-31T20:31:51Z",
      "modelVersion": "1.0",
      "driveId": "00000000-0000-0000-0000-000000000000",
      "siteId": "84560312-34d4-405c-a7bd-9c5bc1abf9e0"
    }
  ]
}
```

