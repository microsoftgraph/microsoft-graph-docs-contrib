---
title: "organizationalBrandingThemeLocalization resource type"
description: "Contains details of the theme's branding localizations."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# organizationalBrandingThemeLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource that supports managing language-specific branding for an [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object. While you can't change your original configuration's language, this resource allows you to create a new configuration for a different language.  

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/organizationalbrandingtheme-list-localizations.md)|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) collection|Get a list of the organizationalBrandingThemeLocalization objects and their properties.|
|[Create](../api/organizationalbrandingtheme-post-localizations.md)|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md)|Create a new organizationalBrandingThemeLocalization object.|
|[Get](../api/organizationalbrandingthemelocalization-get.md)|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md)|Read the properties and relationships of [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object.|
|[Update](../api/organizationalbrandingthemelocalization-update.md)|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md)|Update the properties of an organizationalBrandingThemeLocalization object.|
|[Delete](../api/organizationalbrandingtheme-delete-localizations.md)|None|Delete an organizationalBrandingThemeLocalization object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accountResetCredentials|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" and "Reset it now" hyperlinks of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A destination URL can be updated. Optional.|
|backgroundImage|Stream|Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster. Optional.|
|backgroundImageRelativeUrl|String|A relative url for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|bannerLogo|Stream|A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG not larger than 245 x 36 pixels. We recommend using a transparent image with no padding around the logo. Optional.|
|bannerLogoRelativeUrl|String|A relative url for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|cannotAccessYourAccount|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|cdnHosts|String collection|A list of available CDN base urls that are serving the assets of the current resource. There are several CDNs used to provide redundancy hence eliminating Single Point of Failure for blob properties of this resource. Read-only. Optional.|
|contentCustomization|[contentCustomization](../resources/contentcustomization.md)|Represents the various content options to be customized throughout the authentication flow for a tenant. <br/><br/>**NOTE:** Supported by Microsoft Entra ID for customer tenants only. Optional.|
|customCSS|Stream|CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25KB. Optional.|
|customCSSRelativeUrl|String|A relative url for the customCSS property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|favicon|Stream|A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant. Optional.|
|faviconRelativeUrl|String|A relative url for the favicon property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|forgotMyPassword|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Forgot my password" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|headerBackgroundColor|String|The RGB color to apply to customize the color of the header. Optional.|
|headerLogo|Stream|A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 245 x 36 pixels. We recommend using a transparent image with no padding around the logo. Optional.|
|headerLogoRelativeUrl|String|A relative url for the headerLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|locale|String|An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2". The portion "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. You can't create the default branding by setting the value of **locale** to the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported.|
|loginPageLayoutConfiguration|[loginPageLayoutConfiguration](../resources/loginpagelayoutconfiguration.md)|Represents the layout configuration to be displayed on the login page for a tenant. Optional.|
|pageBackgroundColor|String|Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. Optional.|
|privacyAndCookies|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Privacy & cookies" hyperlink in the footer of sign-in page that can be customized for a theme. A destination URL and a display text can be updated. Optional.|
|resetItNow|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Reset it now" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|signInPageText|String|Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters. Optional.|
|squareLogo|Stream|A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Optional.|
|squareLogoRelativeUrl|String|A relative url for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|squareLogoDark|Stream|A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Optional.|
|squareLogoDarkRelativeUrl|String|A relative url for the squareLogoDark property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|termsOfUse|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents the Terms of Use hyperlink that can be customized in the footer of the login page for a theme. A destination URL and a display text can be updated. Optional.|  
|usernameHintText|String| A string that appears as the hint in the username text box on the sign-in screen. This text must be Unicode, contain no links or code, and can't exceed 64 characters. Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "locale",
  "@odata.type": "microsoft.graph.organizationalBrandingThemeLocalization",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
  "locale": "String (identifier)",
  "accountResetCredentials": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "backgroundImage": "Stream",
  "backgroundImageRelativeUrl": "String",
  "bannerLogo": "Stream",
  "bannerLogoRelativeUrl": "String",
  "cannotAccessYourAccount": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "cdnHosts": [
    "String"
  ],
  "contentCustomization": {
    "@odata.type": "microsoft.graph.contentCustomization"
  },
  "customCSS": "Stream",
  "customCSSRelativeUrl": "String",
  "favicon": "Stream",
  "faviconRelativeUrl": "String",
  "forgotMyPassword": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "headerBackgroundColor": "String",
  "headerLogo": "Stream",
  "headerLogoRelativeUrl": "String",
  "loginPageLayoutConfiguration": {
    "@odata.type": "microsoft.graph.loginPageLayoutConfiguration"
  },
  "pageBackgroundColor": "String",
  "privacyAndCookies": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "resetItNow": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "signInPageText": "String",
  "squareLogo": "Stream",
  "squareLogoRelativeUrl": "String",
  "squareLogoDark": "Stream",
  "squareLogoDarkRelativeUrl": "String",
  "termsOfUse": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "usernameHintText": "String"
}
```

