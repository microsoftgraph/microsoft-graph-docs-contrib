---
title: "Create organizationalBrandingProperties"
description: "Create organization branding."
localization_priority: Normal
author: "kexia"
ms.prod: ""
doc_type: "apiPageType"
---

# Create organizationalBrandingProperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create organizational branding.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.Read.All, User.Read, User.Read.All, User.ReadBasic.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

A branding is created for an organization, if one does not already exist, using PUT or PATCH.

The "id" property is completely ignored on PUT/PATCH to the /branding singleton. If Content-Language is not specified, the default branding is created which corresponds to an id of 'und'. If Content-Language is specified, branding is created for that locale. 
<!-- { "blockType": "ignored" } -->

```http
PUT /organization/{id}/branding
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
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

If successful, this method returns a `201 CREATED` response code and the created [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object in the response body.

## Examples
### Use case: Create default branding and localization for en-US.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties"
}-->

```http
PUT https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Language: en-US
{
    "backgroundColor":"#FFFF33",
    "signInPageText":"Welcome",
    "usernameHintText":"hint"
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
HTTP/1.1 201 Created
Content-Language: en-US
{
    "backgroundColor":"#FFFF33",
    "backgroundImage@odata.mediaContentType":"image/*",
    "backgroundImage@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/backgroundImage",
    "backgroundImage@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/en-US/backgroundImage",
    "bannerLogo@odata.mediaContentType":"image/*",
    "bannerLogo@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo",
    "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/en-US/bannerLogo",
    "id": "und",
    "signInPageText":"Welcome",
    "squareLogo@odata.mediaContentType":"image/*",
    "squareLogo@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/squareLogo",
    "squareLogo@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/en-US/squareLogo",
    "usernameHintText":"hint"
}
```

Note: In this case, both the default branding object as well as that for en-US is created.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get organizationalBrandingProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->