---
title: "Get documentSetVersion"
description: "Read the properties and relationships of a documentSetVersion object."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Get documentSetVersion
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [documentSetVersion](../resources/documentsetversion.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All|
|Delegated (personal Microsoft account)| Not supported. |
|Application| Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All, Sites.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{siteId}/lists/{listId}/items/{itemId}/documentSetVersions/{documentSetVersionId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [documentSetVersion](../resources/documentsetversion.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_documentsetversion"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/items/{itemId}/documentSetVersions/{documentSetVersionId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.documentSetVersion"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "1",
    "lastModifiedDateTime": "2022-04-05T04:53:42Z",
    "comment": "v1",
    "createdDateTime": "2022-04-05T04:53:42Z",
    "shouldCaptureMinorVersion": false,
    "lastModifiedBy": {
        "user": {
            "displayName": "Tenant Admin User",
            "email": "admin@contoso.sharepoint.com"
        }
    },
    "items": [
        {
            "itemId": "a5d83ae7-8c3e-4a2c-bc3e-8f276db857bf",
            "versionId": "1.0"
        }
    ],
    "createdBy": {
        "user": {
            "displayName": "Tenant Admin User",
            "email": "admin@contoso.sharepoint.com"
        }
    }
}
```

