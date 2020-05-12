---
title: "Get organizationalBrandingProperties"
description: "Retrieve the properties and relationships of an organizationalBrandingProperties object."
localization_priority: Normal
author: "kexia"
ms.prod: ""
doc_type: "apiPageType"
---

# Get organizationalBrandingProperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.Read.All, User.Read, User.Read.All, User.ReadBasic.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /organization/{id}/branding/{property name}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object in the response body.

## Examples

### Example 1: Get the default branding

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties"
}-->

```http
GET https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "backgroundColor":"#FFFF33",
  "backgroundImage@odata.mediaContentType":"image/*",
  "backgroundImage@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/backgroundImage",
  "backgroundImage@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/backgroundImage",
  "bannerLogo@odata.mediaContentType":"image/*",
  "bannerLogo@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo",
  "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo",
  "id": "und",
  "squareLogo@odata.mediaContentType":"image/*",
  "squareLogo@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/squareLogo",
  "squareLogo@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/squareLogo",
  "signInPageText":"Default",
  "usernameHintText":"DefaultHint"
}
```

Requests for /branding always return the **mediaContentType**, **mediaReadLink**, and **mediaEditLink** properties. If localization has been applied, the **mediaEditLink** is the **mediaEditLink** for the localization (which is always non-null), and the **mediaReadLink** and **mediaContentType** are the **mediaReadLink** and **mediaContentType** of the localization if the **mediaReadLink** of the localization is non-null; otherwise, the default **mediaReadLink** and **mediaContentType**.

### Example 2: Get organizational branding but no branding configured

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties"
}-->

```http
GET https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 404 NOT FOUND
```

### Example 3: Get organizational branding for the French localization
The Accept-Langauge header is used to apply a particular localization to the branding. Properties that are null in the specified localization are returned from the default branding. If the Accept-Language header is specified in the request, the response will include the Content-Language header, unless it is `und`.

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties"
}-->

```http
GET https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Accept-Language:fr
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 200 OK
Content-Language:fr

{
    "backgroundColor":"#00000F",
    "backgroundImage@odata.mediaContentType":"image/*",
    "backgroundImage@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/backgroundImage",
    "backgroundImage@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/backgroundImage",
    "bannerLogo@odata.mediaContentType":"image/*",
    "bannerLogo@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo",
    "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/bannerLogo",
    "id": "und",
    "squareLogo@odata.mediaContentType":"image/*",
    "squareLogo@odata.mediaReadLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/squareLogo",
    "squareLogo@odata.mediaEditLink": "https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/squareLogo",
    "signInPageText":"Default",
    "usernameHintText":"DefaultHint"
}
```

### Use case: Get BannerLogo from the French localization
Returns BannerLogo from the fr localization if it exists. If the localization does not exist, returns the default BannerLogo.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties"
}-->

```http
GET https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo
Accept-Language: fr
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 200
<Image>
```

### Use case: Get BannerLogo but no BannerLogo configured
Requesting a property that exists neither on the default branding nor  the language specified in the Accept-Language header returns 204 No Content.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties"
}-->

```http
GET https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo
Accept-Language: de
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 204 NO CONTENT
```
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get organizationalBrandingProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
