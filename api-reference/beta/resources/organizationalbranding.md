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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!NOTE]
>Adding custom branding requires you to use Azure Active Directory Premium 1, Premium 2, or Basic editions, or to have a Microsoft 365 license. For more information about licensing and editions, see [Sign up for Azure AD Premium](/azure/active-directory/fundamentals/active-directory-get-started-premium).<br><br>Azure AD Premium and Basic editions are available for customers in China using the worldwide instance of Azure Active Directory. Azure AD Premium and Basic editions aren't currently supported in the Azure service operated by 21Vianet in China. For more information, talk to us using the [Azure Active Directory Forum](https://feedback.azure.com/forums/169401-azure-active-directory/).

Contains details about the organization's branding.

Organizations can customize their Azure AD sign-in pages which appear when users sign in to their organization's tenant-specific apps, or when Azure AD identifies the user's tenant from their username. A developer can also read the company's branding information and customize their app experience to tailor it specifically for the signed-in user using their company's branding.

Companies can add different branding based on locale. Locale serves as a key in all requests.

Contains details about the organization's branding. Inherits from [organizationalBrandingProperties](organizationalbrandingproperties.md).

Organizations can customize their Azure Active Directory (Azure AD) sign-in pages which appear when users sign in to their organization's tenant-specific apps, or when Azure AD identifies the user's tenant from their username. A developer can also read the company's branding information and customize their app experience to tailor it specifically for the signed-in user using their company's branding.

You can't change your original configuration's language from your default language. However, companies can also add different branding based on locale. For language-specific branding, see the [organizationalBrandingLocalization](organizationalbrandingproperties.md) object.

>[!NOTE]
>Adding custom branding requires you to have either Azure Active Directory (Azure AD) Premium 1, Premium 2, or Office 365 (for Office 365 apps) licenses. For more information about licensing and editions, see [Sign up for Azure AD Premium](/azure/active-directory/fundamentals/active-directory-get-started-premium).
>
>Azure AD Premium editions are available for customers in China using the worldwide instance of Azure Active Directory. Azure AD Premium editions aren't currently supported in the Azure service operated by 21Vianet in China. For more information, talk to us using the [Azure Active Directory Forum](https://feedback.azure.com/forums/169401-azure-active-directory/).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List organizationalBrandings](../api/organizationalbranding-list-localizations.md)|[organizationalBranding](../resources/organizationalbrandinglocalization.md) collection|Get a list of the [organizationalBranding](../resources/organizationalbrandinglocalization.md) objects and their properties.|
|[Create organizationalBranding](../api/organizationalbranding-post-localizations.md)|[organizationalBranding](../resources/organizationalbrandinglocalization.md)|Create a new [organizationalBranding](../resources/organizationalbrandinglocalization.md) object.|
|[Get organizationalBranding](../api/organizationalbranding-get.md)|[organizationalBranding](../resources/organizationalbranding.md)|Read the properties and relationships of an [organizationalBranding](../resources/organizationalbranding.md) object.|
|[Update organizationalBranding](../api/organizationalbranding-update.md)|[organizationalBranding](../resources/organizationalbranding.md)|Update the properties of an [organizationalBranding](../resources/organizationalbranding.md) object.|
|[Delete organizationalBranding](../api/organizationalbrandinglocalization-delete.md)|None|Deletes an [organizationalBranding](../resources/organizationalbrandinglocalization.md) object.|

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| This is an id, inherited from microsoft.graph.entity, is the locale specifying the ISO 639 standard for language, for example English is "en-us" or "en". Going forward if we expose functionality to have multiple brandings for one locale, this can be changed. Note that id for Default /branding is always '0' or and 'default' until we have keyless singletons. Read-only.|
|cdnList|String| A list of available CDN base urls that are serving the assets of the current resource. There are several CDNs used to provide redundancy hence eliminating Single Point of Failure for blob properties of this resource. Read-only.|
|backgroundColor|String| Color that will appear in place of the background image in low-bandwidth connections. The primary color of your banner logo or your organization color is recommended to be used here. Specify this in hexadecimal (for example, white is #FFFFFF).|
|backgroundImage|Stream| Image that appears as the background of the sign in page. .png or .jpg not larger than 1920x1080 and smaller than 300kb. A smaller image will reduce bandwidth requirements and make page loads more performant.|
|backgroundImageRelativeUrl|String| A relative url for the backgroundImage above that is combined with a CDN base url in cdnList to provide the version served by a CDN. Read-only.|
|bannerLogo|Stream| A banner version of your company logo which appears appears on the sign-in page. .png or .jpg no larger than 36x245px. We recommend using a transparent image with no padding around the logo.|
|bannerLogoRelativeUrl|String| A relative url for the bannerLogo above that is combined with a CDN base url in cdnList to provide the read only version served by a CDN. Read-only.|
|signInPageText|String| Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.|
|squareLogo|Stream| Square version of your company logo. This appears in Windows 10 out-of-box (OOBE) experiences and when Windows Autopilot is enabled for deployment. .png or .jpg no larger than 240x240px and no more than 10kb in size. We recommend using a transparent image with no padding around the logo.|
|squareLogoRelativeUrl|String| A relative url for the squareLogo above that is combined with a CDN base url in cdnList to provide the version served by a CDN. Read-only.|
|squareDarkLogo|Stream| Square Dark version of your company logo. This appears in Windows 10 out-of-box (OOBE) experiences and when Windows Autopilot is enabled for deployment. .png or .jpg no larger than 240x240px and no more than 10kb in size. We recommend using a transparent image with no padding around the logo.|
|squareDarkLogoRelativeUrl|String| A relative url for the squareDarkLogo above that is combined with a CDN base url in cdnList to provide the version served by a CDN. Read-only.|
|usernameHintText|String| String that shows as the hint in the username textbox on the sign in screen. This text must be Unicode, without links or code, and can't exceed 64 characters.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) collection|Add different branding based on locale|

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
  "bannerLogo": "Stream",
  "signInPageText": "String",
  "squareLogo": "Stream",
  "usernameHintText": "String"
}
```