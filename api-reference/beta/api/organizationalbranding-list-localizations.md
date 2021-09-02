---
title: "List localizations"
description: "Get the organizationalBrandingLocalization resources from the localizations navigation property."
author: "AlexanderMars"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List localizations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the organizationalBrandingLocalization resources from the localizations navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.Read.All, User.Read, User.Read.All, User.ReadBasic.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/localizations
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

If successful, this method returns a `200 OK` response code and a collection of [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_organizationalbrandinglocalization"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/branding/localizations
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.organizationalBrandingLocalization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.organizationalBrandingLocalization",
      "id": "e91971b3-71b3-e919-b371-19e9b37119e9",
      "backgroundColor": "String",
      "backgroundImage": "Stream",
      "bannerLogo": "Stream",
      "signInPageText": "String",
      "squareLogo": "Stream",
      "usernameHintText": "String",
     }
  ]
}
```

