---
title: "organizationalBranding resource type"
description: "Contains details of the organization's branding."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# organizationalBranding resource type

Namespace: microsoft.graph

Contains details about the organization's default branding. Inherits from [organizationalBrandingProperties](organizationalbrandingproperties.md).

Organizations can customize their Azure Active Directory (Azure AD) sign-in pages which appear when users sign in to their organization's tenant-specific apps, or when Azure AD identifies the user's tenant from their username. A developer can also read the company's branding information and customize their app experience to tailor it specifically for the signed-in user using their company's branding.

You can't change your original configuration's language. However, companies can add different branding based on locale. For language-specific branding, see the [organizationalBrandingLocalization](organizationalbrandingproperties.md) object.

>[!NOTE]
>Adding custom branding requires you to have either Azure Active Directory (Azure AD) Premium 1, Premium 2, or Office 365 (for Office 365 apps) licenses. For more information about licensing and editions, see [Sign up for Azure AD Premium](/azure/active-directory/fundamentals/active-directory-get-started-premium).
>
>Azure AD Premium editions are available for customers in China using the worldwide instance of Azure Active Directory. Azure AD Premium editions aren't currently supported in the Azure service operated by 21Vianet in China. For more information, talk to us using the [Azure Active Directory Forum](https://feedback.azure.com/forums/169401-azure-active-directory/).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get organizationalBranding](../api/organizationalbranding-get.md) | [organizationalBranding](../resources/organizationalbranding.md) | Read the properties and relationships of an [organizationalBranding](../resources/organizationalbranding.md) object. |
| [Update organizationalBranding](../api/organizationalbranding-update.md) | None | Update the properties of an [organizationalBranding](../resources/organizationalbranding.md) object. |
<!--| [Delete organizationalBranding](../api/organizationalbranding-delete.md) | None | Delete an [organizationalBranding](../resources/organizationalbranding.md) object. |-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
| backgroundColor | String | Color that will appear in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| backgroundImage | Stream | Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). Returned only on `$select`. |
| backgroundImageRelativeUrl | String | A relative URL for the **backgroundImage** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| bannerLogo | Stream | A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). Returned only on `$select`. |
| bannerLogoRelativeUrl | String | A relative url for the **bannerLogo** property that is combined with a CDN base URL from the **cdnList** to provide the read-only version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| cdnList | String collection | A list of base URLs for all available CDN providers that are serving the assets of the current resource. Several CDN providers are used at the same time for high availability of read requests. Read-only. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| id | String | An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2", where "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. The **id** for the default /branding is always the String types `0` or `default`. Read-only. <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| signInPageText | String | Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| squareLogo | Stream | A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). Returned only on `$select`.|
| squareLogoRelativeUrl | String | A relative url for the **squareLogo** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| usernameHintText | String | String that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| localizations | [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) collection | Add different branding based on a locale. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organizationalBranding",
  "baseType": "microsoft.graph.organizationalBrandingProperties",
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