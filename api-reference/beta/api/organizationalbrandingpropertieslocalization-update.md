---
title: "Update localized organizationalbrandingproperties"
description: "Update the properties of the organizationalbrandingproperties object for a specific localization."
localization_priority: Normal
author: "kexia"
ms.prod: ""
doc_type: "apiPageType"
---

# Update Localized organizationalbrandingproperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the organizationalbrandingproperties object for a specific localization.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{id}/branding/localizations/{locale}/{property name}
PUT /organization/{id}/branding/localizations/{locale}/{property name}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|backgroundColor|String||
|backgroundImage|Stream||
|bannerLogo|Stream||
|signInPageText|String||
|squareLogo|Stream||
|usernameHintText|String||


## Response

If successful, this method returns a `204 OK` response code.

## Examples

### Use case: Setting BannerLogo for the fr localization using PUT

The following request updates the banner logo for the fr localization. Using PUT, if the fr localization does not exist, "404 not found" is returned. If the payload contains an id property or Content-Language header, and they don't match id in URL, a Bad Request is returned.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PUT https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/bannerLogo
Content-Type: image/jpeg
Binary data for the image
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 204 NO CONTENT
```

### Use case: Update BannerLogo for the fr localization using PATCH

The following request updates the banner logo for the fr localization.  Using PATCH, if the specified localization does not already exist, it is created and the property is written to it.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
{
    "backgroundColor":"#00000F",
    "signInPageText": "fr"
}
```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 204 No Content
```



### Use case: Override default branding value with a blank string

If the value of a property in a localization is null, the value will be inherited from the default branding. To prevent this from happening, set an empty string or string containing only whitespace in the localized branding.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
{
    "signInPageText": "French sign-in text.",
    "usernameHintText":" "
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 204 No Content
```

Following this request, usernameHintText for the fr localization will be empty instead of inheriting the value from default branding.

### Use case: Replace French localization with PUT

To make an update on localization using PUT, we should add all properties in body along with the property that needs to be updated as PUT replaces existing object with the new one. The other properties which are not in the payload body of PUT will be set to NULL. Here in example below, only backgroundColor property is retained and signInPageText is updated while others are set to null.
If the specified localization does not already exist, PUT to the URL specifying that localization creates it.
If the payload contains an id property or a Content-Language header, and they don't match id in URL, we throw Bad request.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PUT https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
{
    "backgroundColor":"#00000F",
    "signInPageText": "fr"
}
```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update organizationalbrandingproperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->