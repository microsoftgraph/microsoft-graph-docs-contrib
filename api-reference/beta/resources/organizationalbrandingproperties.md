---
title: "organizationalBrandingProperties resource type"
description: "Contains details of the organization's branding."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# organizationalBrandingProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List organizationalBrandingProperties](../api/organizationalbrandingproperties-list.md)|[organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) collection|Get a list of the [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) objects and their properties.|
|[Create organizationalBrandingProperties](../api/organizationalbrandingproperties-create.md)|[organizationalBrandingProperties](../resources/organizationalbrandingproperties.md)|Create a new [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.|
|[Get organizationalBrandingProperties](../api/organizationalbrandingproperties-get.md)|[organizationalBrandingProperties](../resources/organizationalbrandingproperties.md)|Read the properties and relationships of an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.|
|[Update organizationalBrandingProperties](../api/organizationalbrandingproperties-update.md)|[organizationalBrandingProperties](../resources/organizationalbrandingproperties.md)|Update the properties of an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.|
|[Delete organizationalBrandingProperties](../api/organizationalbrandingproperties-delete.md)|None|Deletes an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.|

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
| backgroundColor | String | Color that will appear in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. |
| backgroundImage | Stream | Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster. |
| backgroundImageRelativeUrl | String | A relative URL for the **backgroundImage** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. |
| bannerLogo | Stream | A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo. |
| bannerLogoRelativeUrl | String | A relative url for the **bannerLogo** property that is combined with a CDN base URL from the **cdnList** to provide the read-only version served by a CDN. Read-only. |
| cdnList | String collection | A list of base URLs for all available CDN providers that are serving the assets of the current resource. Several CDN providers are used at the same time for high availability of read requests. Read-only. |
| id | String | An identifier that represents the locale specified in the ISO 639-1 standard, for example English is `en-us` or `en`. The **id** for the default /branding is always the String types `0` or `default`. Read-only. <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported. |
| signInPageText | String | Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters. |
| squareLogo | Stream | A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo. |
| squareLogoRelativeUrl | String | A relative url for the **squareLogo** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. |
| usernameHintText | String | String that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organizationalBrandingProperties",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalBranding",
  "id": "String (identifier)",
  "backgroundColor": "String",
  "backgroundImage": "Stream",
  "backgroundImageRelativeUrl": "String",
  "bannerLogo": "Stream",
  "bannerLogoRelativeUrl": "String",
  "cdnList": [
    "String"
  ],
  "signInPageText": "String",
  "squareLogo": "Stream",
  "squareLogoRelativeUrl": "String",
  "usernameHintText": "String"
}
```

