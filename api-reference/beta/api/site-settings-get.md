---
title: "Get a Site's Settings"
description: "Returns the metadata for a sitePage in the site pages list in a site"
author: k-tsoi
ms.localizationpriority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Get the settings of a site
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the settings of the [site]. This resource is currently only available on SharePoint and OneDrive for Business.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged) |
|:--------------------------------------|:--------------------------------------------|
|Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
|Delegated (personal Microsoft account) | Not supported.                              |
|Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{sitesId}/settings
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

If successful, this method returns a `200 OK` response code and a [siteSettings](../resources/siteSettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_siteSettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/settings
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
  "languageTag": "String",
  "timeZone": "String"
  }
}
```

[site]: ../resources/site.md