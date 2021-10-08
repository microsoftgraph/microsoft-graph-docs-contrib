---
title: "organizationalBrandingProperties resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
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
|Property|Type|Description|
|:---|:---|:---|
|backgroundColor|String|**TODO: Add Description**|
|backgroundImage|Stream|**TODO: Add Description**|
|backgroundImageRelativeUrl|String|**TODO: Add Description**|
|bannerLogo|Stream|**TODO: Add Description**|
|bannerLogoRelativeUrl|String|**TODO: Add Description**|
|cdnList|String collection|**TODO: Add Description**|
|customAccountResetCredentialsUrl|String|**TODO: Add Description**|
|customCannotAccessYourAccountText|String|**TODO: Add Description**|
|customCannotAccessYourAccountUrl|String|**TODO: Add Description**|
|customForgotMyPasswordText|String|**TODO: Add Description**|
|customPrivacyAndCookiesText|String|**TODO: Add Description**|
|customPrivacyAndCookiesUrl|String|**TODO: Add Description**|
|customResetItNowText|String|**TODO: Add Description**|
|customTermsOfUseText|String|**TODO: Add Description**|
|customTermsOfUseUrl|String|**TODO: Add Description**|
|favicon|Stream|**TODO: Add Description**|
|faviconRelativeUrl|String|**TODO: Add Description**|
|headerBackgroundColor|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|loginPageTextVisibilitySettings|[loginPageTextVisibilitySettings](../resources/loginpagetextvisibilitysettings.md)|**TODO: Add Description**|
|signInPageText|String|**TODO: Add Description**|
|squareDarkLogo|Stream|**TODO: Add Description**|
|squareDarkLogoRelativeUrl|String|**TODO: Add Description**|
|squareLogo|Stream|**TODO: Add Description**|
|squareLogoRelativeUrl|String|**TODO: Add Description**|
|usernameHintText|String|**TODO: Add Description**|

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
  "@odata.type": "#microsoft.graph.organizationalBrandingProperties",
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
  "squareDarkLogo": "Stream",
  "squareDarkLogoRelativeUrl": "String",
  "squareLogo": "Stream",
  "squareLogoRelativeUrl": "String",
  "usernameHintText": "String",
  "customAccountResetCredentialsUrl": "String",
  "customCannotAccessYourAccountText": "String",
  "customCannotAccessYourAccountUrl": "String",
  "customForgotMyPasswordText": "String",
  "customPrivacyAndCookiesText": "String",
  "customPrivacyAndCookiesUrl": "String",
  "customResetItNowText": "String",
  "customTermsOfUseText": "String",
  "customTermsOfUseUrl": "String",
  "favicon": "Stream",
  "faviconRelativeUrl": "String",
  "headerBackgroundColor": "String",
  "loginPageTextVisibilitySettings": {
    "@odata.type": "microsoft.graph.loginPageTextVisibilitySettings"
  }
}
```

