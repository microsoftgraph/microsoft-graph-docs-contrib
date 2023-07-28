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
| customAccountResetCredentialsUrl | String | A custom URL for resetting account credentials. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customCannotAccessYourAccountText | String | A string to replace the default "Can't access your account?" self-service password reset (SSPR) hyperlink text on the sign-in page. This text must be in Unicode format and not exceed 256 characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customCannotAccessYourAccountUrl | String | A custom URL to replace the default URL of the self-service password reset (SSPR) "Can't access your account?" hyperlink on the sign-in page. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. <br/><br/>**DO NOT USE.** Use **customAccountResetCredentialsUrl** instead. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customCSS | Stream | CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25KB. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customCSSRelativeUrl | String| A relative URL for the **customCSS** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customForgotMyPasswordText | String | A string to replace the default "Forgot my password" hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customPrivacyAndCookiesText | String | A string to replace the default "Privacy and Cookies" hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customPrivacyAndCookiesUrl | String | A custom URL to replace the default URL of the "Privacy and Cookies" hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customResetItNowText | String | A string to replace the default "reset it now" hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters. <br/><br/>**DO NOT USE:** Customization of the "reset it now" hyperlink text is currently not supported. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customTermsOfUseText | String | A string to replace the the default "Terms of Use" hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| customTermsOfUseUrl | String | A custom URL to replace the default URL of the "Terms of Use" hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128characters. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| favicon | Stream | A custom icon (favicon) to replace a default Microsoft product favicon on an Azure AD tenant. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| faviconRelativeUrl | String | A relative url for the favicon above that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| headerBackgroundColor | String | The RGB color to apply to customize the color of the header. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| headerLogo | Stream | A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| headerLogoRelativeUrl | String | A relative URL for the **headerLogo** property that is combined with a CDN base URL from the **cdnList** to provide the read-only version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| id | String | An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2", where "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. The **id** for the default /branding is always the String types `0` or `default`. Read-only. <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| loginPageLayoutConfiguration | [loginPageLayoutConfiguration](loginPageLayoutConfiguration.md) | Represents the layout configuration to be displayed on the login page for a tenant. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| loginPageTextVisibilitySettings | [loginPageTextVisibilitySettings](loginPageTextVisibilitySettings.md) | Represents the various texts that can be hidden on the login page for a tenant. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
| signInPageText | String | Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| squareLogo | Stream | A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 x 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). Returned only on `$select`.|
| squareLogoRelativeUrl | String | A relative url for the **squareLogo** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md). |
| squareLogoDark | Stream | A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md).|
| squareLogoDarkRelativeUrl | String | A relative URL for the **squareLogoDark** property that is combined with a CDN base URL from the **cdnList** to provide the version served by a CDN. Read-only. Inherited from [organizationalBrandingProperties](organizationalbrandingproperties.md). |
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
  "squareLogoDark": "Stream",
  "squareLogoDarkRelativeUrl": "String",
  "usernameHintText": "String",
  "customAccountResetCredentialsUrl": "String",
  "customCannotAccessYourAccountText": "String",
  "customCannotAccessYourAccountUrl": "String",
  "customCSS": "Stream",
  "customCSSRelativeUrl": "String",
  "customForgotMyPasswordText": "String",
  "customPrivacyAndCookiesText": "String",
  "customPrivacyAndCookiesUrl": "String",
  "customResetItNowText": "String",
  "customTermsOfUseText": "String",
  "customTermsOfUseUrl": "String",
  "favicon": "Stream",
  "faviconRelativeUrl": "String",
  "headerBackgroundColor": "String",
  "headerLogo": "Stream",
  "headerLogoRelativeUrl": "String",
  "loginPageLayoutConfiguration": {
    "@odata.type": "microsoft.graph.loginPageLayoutConfiguration"
  },
  "loginPageTextVisibilitySettings": {
    "@odata.type": "microsoft.graph.loginPageTextVisibilitySettings"
  }}
```