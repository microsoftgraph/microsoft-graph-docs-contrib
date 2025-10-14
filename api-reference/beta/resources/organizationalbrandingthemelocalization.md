---
title: "organizationalBrandingThemeLocalization resource type"
description: "Contains details of the theme's branding localizations."
author: "AlexanderMars"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# organizationalBrandingThemeLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource that supports managing language-specific theme branding. While you can't change your original configuration's language, this resource allows you to create a new configuration for a different language.

Inherits from [organizationalBrandingProperties](organizationalbrandingproperties.md).


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
|accountResetCredentials|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description**|
|backgroundImage|Stream|**TODO: Add Description**|
|backgroundImageRelativeUrl|String|**TODO: Add Description**|
|bannerLogo|Stream|**TODO: Add Description**|
|bannerLogoRelativeUrl|String|**TODO: Add Description**|
|cannotAccessYourAccount|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description**|
|cdnHosts|String collection|**TODO: Add Description**|
|contentCustomization|[contentCustomization](../resources/contentcustomization.md)|**TODO: Add Description**|
|customCSS|Stream|**TODO: Add Description**|
|customCSSRelativeUrl|String|**TODO: Add Description**|
|favicon|Stream|**TODO: Add Description**|
|faviconRelativeUrl|String|**TODO: Add Description**|
|forgotMyPassword|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description**|
|headerBackgroundColor|String|**TODO: Add Description**|
|headerLogo|Stream|**TODO: Add Description**|
|headerLogoRelativeUrl|String|**TODO: Add Description**|
|locale|String|**TODO: Add Description**|
|loginPageLayoutConfiguration|[loginPageLayoutConfiguration](../resources/loginpagelayoutconfiguration.md)|**TODO: Add Description**|
|pageBackgroundColor|String|**TODO: Add Description**|
|privacyAndCookies|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description**|
|resetItNow|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description**|
|signInPageText|String|**TODO: Add Description**|
|squareLogo|Stream|**TODO: Add Description**|
|squareLogoDark|Stream|**TODO: Add Description**|
|squareLogoDarkRelativeUrl|String|**TODO: Add Description**|
|squareLogoRelativeUrl|String|**TODO: Add Description**|
|termsOfUse|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description**|
|usernameHintText|String|**TODO: Add Description**|

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

