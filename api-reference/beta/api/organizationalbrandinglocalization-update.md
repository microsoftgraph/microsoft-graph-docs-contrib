---
title: "Update organizationalBrandingLocalization"
description: "Update the properties of an organizationalBrandingLocalization object."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update organizationalBrandingLocalization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object for a specific localization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/branding/localizations/{organizationalBrandingLocalizationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply *only* the values for properties that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values.

The following table specifies the properties that can be updated. 

|Property|Type|Description|
|:---|:---|:---|
| backgroundColor | String | Color that will appear in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. |
| backgroundImage | Stream | Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster. |
| bannerLogo | Stream | A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo. |
| signInPageText | String | Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters. |
| squareLogo | Stream | A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo.|
| usernameHintText | String | String that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters. |

## Response

If successful, this method returns a `200 OK` response code and an updated [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object in the response body.

## Examples

### Example 1: Setting **bannerLogo** for the fr localization using PUT

The following request updates the banner logo for the fr localization. Using PUT, if the fr localization does not exist, "404 not found" is returned. If the payload contains an id property or Content-Language header, and they don't match id in URL, a Bad Request is returned.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandinglocalization"
}-->

```http
PUT https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/bannerLogo
Content-Type: image/jpeg

<Image>
```


#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 NO CONTENT
```

### Example 2: Update **bannerLogo** for the fr localization using PATCH

The following request updates the banner logo for the fr localization.  Using PATCH, if the specified localization does not already exist, it is created and the property is written to it.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandinglocalization6"
}-->

```http
PATCH https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
Content-Type: application/json

{
    "backgroundColor":"#00000F",
    "signInPageText": "fr"
}
```


#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```



### Example 3: Override default branding value with a blank string

If the value of a property in a localization is null, the value will be inherited from the default branding. To prevent this from happening, set an empty string or string containing only whitespace in the localized branding.

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandinglocalization7"
}-->

```http
PATCH https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
Content-Type: application/json

{
    "signInPageText": "French sign-in text.",
    "usernameHintText":" "
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

Following this request, usernameHintText for the fr localization will be empty instead of inheriting the value from default branding.

### Example 4: Replace French localization with PUT

To make an update on localization using PUT, we should add all properties in body along with the property that needs to be updated as PUT replaces existing object with the new one. The other properties which are not in the payload body of PUT will be set to NULL. Here in example below, only backgroundColor property is retained and signInPageText is updated while others are set to null.
If the specified localization does not already exist, PUT to the URL specifying that localization creates it.
If the payload contains an id property or a Content-Language header, and they don't match id in URL, we throw Bad request.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandinglocalization8"
}-->

```http
PUT https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr
Content-Type: application/json

{
    "backgroundColor":"#00000F",
    "signInPageText": "fr"
}
```


#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
