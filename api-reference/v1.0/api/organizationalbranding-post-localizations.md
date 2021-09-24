---
title: "Create organizationalBrandingLocalization"
description: "Create a new organizationalBrandingLocalization object."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create organizationalBrandingLocalization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [organizationalBrandingLocalization](../resources/organizationalBrandingLocalization.md) object. This creates a localized branding and at the same time, the default branding if it doesn't exist.

The default branding is created only once. It's loaded when a localized branding isn't configured for the user's browser language. To retrieve the default branding, see [Get branding](organizationalbranding-get.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request
This request creates a new localization branding and a default branding, if one does not already exist. 
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /organization/{organizationId}/branding/localizations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

The following table shows the properties that are required when you create the [organizationalBrandingLocalization](../resources/organizationbrandinglocalization.md) object.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id | String | An identifier that represents the locale specified in the ISO 639-1 standard, for example English is `en-us` or `en`. The **id** for the default /branding is always the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported. |

If no **id** is specified, then the value of the **Content-Language** header, if specified, is used as the **id**. If neither a valid **id** nor a **Content-Language** header is specified, then an error is returned.

## Response

If successful, this method returns a `201 Created` response code and an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object in the response body.

## Examples

The following example creates a branding localization for French (`fr`) localization.

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_organizationalbrandinglocalization"
}-->
```http
POST https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations
Content-Type: application/json
{
    "backgroundColor":"#00000F",
    "id": "fr"
}
---


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingLocalization"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('29a4f813-9274-4e1b-858d-0afa98ae66d4')/branding/localizations/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/29a4f813-9274-4e1b-858d-0afa98ae66d4/directoryObjects/$/Microsoft.DirectoryServices.Organization('29a4f813-9274-4e1b-858d-0afa98ae66d4')//localizations/fr",
    "id": "fr",
    "backgroundColor": "",
    "backgroundImageRelativeUrl": null,
    "bannerLogoRelativeUrl": null,
    "cdnList": [],
    "signInPageText": "",
    "squareLogoRelativeUrl": null,
    "usernameHintText": ""
}