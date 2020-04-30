---
title: "Update organizationalbrandingproperties"
description: "Update the properties of the organizationalbrandingproperties object."
localization_priority: Normal
author: "kexia"
ms.prod: ""
doc_type: "apiPageType"
---

# Update organizationalbrandingproperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the organizationalbrandingproperties object.

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
PATCH /organization/{id}/branding/{property name}
PUT /organization/{id}/branding/{property name}
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

The id property is ignored when passed in.

## Response

If successful, this method returns a `204 OK` response code.

## Examples
### Use case: Update default branding
If the branding already exists, PATCH will replace only the specified properties, leaving unspecified properties unchanged. 
### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
{
    "signInPageText":"Default",
    "usernameHintText":"DefaultHint"
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
HTTP/1.1 204 OK
```

In this case, the values of the default /branding are updated but no values are changed on any localization.

### Use case: Update BannerLogo for default branding
The following request updates the banner logo for the default branding.
### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo
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
HTTP/1.1 204 No Content
```

### Use case: Update localized branding
If Content-Language header is specified the localization associated with Content-Language is created, if it doesn't already exist, and then updated using the specified values. The default branding is not changed.
### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Language: fr
{
    "backgroundColor":"#FFFF33"
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

Following this request, the fr localization is updated with the new value of backgroundColor, but no change is made to the default /branding.

### Use case: Replace default branding and all localizations
If the branding already exists, PUT will replace the default branding and any localizations.
### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties"
}-->

```http
PUT https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Language: fr
{
    "backgroundColor":"#FFFF33"
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

Following this request, the default branding has only the backgroundColor specified and has exactly one localization with the id fr, also with the backgroundColor set.
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update organizationalbrandingproperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->