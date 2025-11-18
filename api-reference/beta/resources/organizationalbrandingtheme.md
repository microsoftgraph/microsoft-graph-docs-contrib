---
title: "organizationalBrandingTheme resource type"
description: "Contains details of the branding themes."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# organizationalBrandingTheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the organization's branding themes.

You can create up to 5 branding themes to customize the sign-in pages that appear when users sign in to your organization's tenant-specific apps, or when Microsoft Entra External ID identifies the user's tenant from their username. The app can retrieve the branding theme information and customize the signed-in user's app experience to their company's branding. When this custom branding theme isn't available or linked to an app, the default tenant-level [organizationalBranding](../resources/organizationalbranding.md) settings apply.  

You can't change your original Theme configuration's language. However, you can add different branding based on locale. For language-specific Theme branding, see the [organizationalBrandingThemeLocalization](organizationalbrandingthemelocalization.md) object.

For more information about app-specific branding in External ID, see [Customize the sign-in experience for your application with branding themes (Preview)](/entra/external-id/customers/how-to-customize-branding-themes-apps).  

Inherits from [entity](../resources/entity.md).  

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/organizationalbranding-list-themes.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) collection|Get a list of the organizationalBrandingTheme objects and their properties.|
|[Create](../api/organizationalbranding-post-themes.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md)|Create a new organizationalBrandingTheme object.|
|[Get](../api/organizationalbrandingtheme-get.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md)|Read the properties and relationships of [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object.|
|[Update](../api/organizationalbrandingtheme-update.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md)|Update the properties of an organizationalBrandingTheme object.|
|[Delete](../api/organizationalbranding-delete-themes.md)|None|Delete an organizationalBrandingTheme object.|

## Properties


|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier that represents the theme created using custom names. Required.|
|isDefaultTheme|Boolean|Indicates whether the theme is set as the default branding theme for the entire tenant and includes all applications within the tenant. When set to `true`, this theme is automatically applied to any application that does not have a specific theme assigned. This property is useful for enforcing consistent branding across multiple apps without configuring each one individually. Optional.|  
|name|String|The name of the branding theme. Up to 120 characters. Required.| 

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) collection|Represents a locale-based branding theme.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organizationalBrandingTheme",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalBrandingTheme",
  "id": "String (identifier)",
  "name": "String",
  "isDefaultTheme": "Boolean"
}
```

