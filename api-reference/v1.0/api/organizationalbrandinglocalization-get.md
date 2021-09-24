---
title: "Get organizationalBrandingLocalization"
description: "Read the properties and relationships of an organizationalBrandingLocalization object."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get organizationalBrandingLocalization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object. To retrieve a localization branding object, specify the value of `id` in the URL.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.Read, Organization.Read.All, User.ReadBasic.All, User.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/localizations/{organizationalBrandingLocalizationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object in the response body.

## Examples

### Example 1: Get the localized branding for a specific locale (fr)

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandinglocalization_fr"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
```


#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingLocalization"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
"@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('84841066-274d-4ec0-a5c1-276be684bdd3')/branding/localizations/$entity",
"@odata.type": "#microsoft.graph.organizationalBrandingProperties",
"@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')//localizations('fr')/fr",
"id": "fr",
"backgroundColor": "",
"backgroundImageRelativeUrl": null,
"bannerLogoRelativeUrl": null,
"cdnList": [],
"signInPageText": "Welcome",
"squareLogoRelativeUrl": null,
"usernameHintText": "hint"
}
```

### Example 2: Get the value of signInPageText for a specific locale

#### Request

The following is an example of the request. To retrieve any property of a specific locale, specify the property name as a path parameter, for example, + `/organization/{}/branding/localizations/signInPageText` or `/organization/{}/branding/localizations/bannerLogo`.

<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandinglocalization_fr_signInPageText"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/signInPageText
```


#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingLocalization"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('d69179bf-f4a4-41a9-a9de-249c0f2efb1d')/branding/localizations('fr')/signInPageText",
    "value": "Welcome"
}
```
