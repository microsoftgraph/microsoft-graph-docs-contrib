---
title: "organizationalBranding resource type"
description: "Contains details of the organization's branding."
author: "AlexanderMars"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# organizationalBranding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!NOTE]
>Adding custom branding requires you to use Azure Active Directory Premium 1, Premium 2, or Basic editions, or to have a Microsoft 365 license. For more information about licensing and editions, see [Sign up for Azure AD Premium](/azure/active-directory/fundamentals/active-directory-get-started-premium).<br><br>Azure AD Premium and Basic editions are available for customers in China using the worldwide instance of Azure Active Directory. Azure AD Premium and Basic editions aren't currently supported in the Azure service operated by 21Vianet in China. For more information, talk to us using the [Azure Active Directory Forum](https://feedback.azure.com/forums/169401-azure-active-directory/).

Contains details about the organization's branding.

Organizations can customize their Azure AD sign-in pages which appear when users sign in to their organization's tenant-specific apps, or when Azure AD identifies the user's tenant from their username. A developer can also read the company's branding information and customize their app experience to tailor it specifically for the signed-in user using their company's branding.

Companies can add different branding based on locale. Locale serves as a key in all requests.

>**Note:** Branding is exposed as a property under organization with a collection of locale-specific localizations. **organizationalBrandingProperties** is an abstract class which defines properties for **organizationalBranding**.

Inherits from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List organizationalBrandings](../api/organizationalbranding-list.md)|[organizationalBranding](../resources/organizationalbranding.md) collection|Get a list of the [organizationalBranding](../resources/organizationalbranding.md) objects and their properties.|
|[Create organizationalBranding](../api/organizationalbranding-create.md)|[organizationalBranding](../resources/organizationalbranding.md)|Create a new [organizationalBranding](../resources/organizationalbranding.md) object.|
|[Get organizationalBranding](../api/organizationalbranding-get.md)|[organizationalBranding](../resources/organizationalbranding.md)|Read the properties and relationships of an [organizationalBranding](../resources/organizationalbranding.md) object.|
|[Update organizationalBranding](../api/organizationalbranding-update.md)|[organizationalBranding](../resources/organizationalbranding.md)|Update the properties of an [organizationalBranding](../resources/organizationalbranding.md) object.|
|[Delete organizationalBranding](../api/organizationalbranding-delete.md)|None|Deletes an [organizationalBranding](../resources/organizationalbranding.md) object.|
|[List localizations](../api/organizationalbranding-list-localizations.md)|[organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) collection|Get the organizationalBrandingLocalization resources from the localizations navigation property.|
|[Create organizationalBrandingLocalization](../api/organizationalbranding-post-localizations.md)|[organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md)|Create a new organizationalBrandingLocalization object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backgroundColor|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|backgroundImage|Stream|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|backgroundImageRelativeUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|bannerLogo|Stream|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|bannerLogoRelativeUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|cdnList|String collection|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customAccountResetCredentialsUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customCannotAccessYourAccountText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customCannotAccessYourAccountUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customForgotMyPasswordText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customPrivacyAndCookiesText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customPrivacyAndCookiesUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customResetItNowText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customTermsOfUseText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|customTermsOfUseUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|favicon|Stream|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|faviconRelativeUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|headerBackgroundColor|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|id|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|loginPageTextVisibilitySettings|[loginPageTextVisibilitySettings](../resources/loginpagetextvisibilitysettings.md)|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|signInPageText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|squareLogo|Stream|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|squareLogoRelativeUrl|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|
|usernameHintText|String|**TODO: Add Description** Inherited from [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organizationalBranding",
  "baseType": "Microsoft.DirectoryServices.organizationalBrandingProperties",
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