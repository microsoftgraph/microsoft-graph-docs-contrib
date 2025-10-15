---
title: "organizationalBrandingTheme resource type"
description: "Contains details of the branding themes."
author: "AlexanderMars"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# organizationalBrandingTheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the organization's branding themes. Inherits from [organizationalBrandingProperties](organizationalbrandingproperties.md).

Organizations can create up to 5 branding themes and customize their Microsoft Entra sign-in pages which appear when users sign in to their organization's tenant-specific apps, or when Microsoft Entra ID identifies the user's tenant from their username. A developer can also read the branding theme information and customize their app experience to tailor it specifically for the signed-in user using their company's branding.

You can't change your original configuration's language. However, companies can add different branding based on locale. For language-specific branding, see the [organizationalBrandingLocalization](organizationalbrandingproperties.md) object.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/organizationalbranding-list-themes.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) collection|Get a list of the organizationalBrandingTheme objects and their properties.|
|[Create](../api/organizationalbranding-post-themes.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md)|Create a new organizationalBrandingTheme object.|
|[Get](../api/organizationalbrandingtheme-get.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md)|Read the properties and relationships of [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object.|
|[Update](../api/organizationalbrandingtheme-update.md)|[organizationalBrandingTheme](../resources/organizationalbrandingtheme.md)|Update the properties of an organizationalBrandingTheme object.|
|[Delete](../api/organizationalbranding-delete-themes.md)|None|Delete an organizationalBrandingTheme object.|
|[List localizations](../api/organizationalbrandingtheme-list-localizations.md)|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) collection|Get a list of the organizationalBrandingTheme objects and their properties.|
|[Create organizationalBrandingThemeLocalization](../api/organizationalbrandingtheme-post-localizations.md)|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md)|Create a new organizationalBrandingThemeLocalization object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier that represents the theme created using custom names. Required.|
|isDefaultTheme|Boolean|Indicates whether the theme is set as the default branding theme for the entire tenant and includes all applications within the tenant. When set to true, this theme is automatically applied to any application that does not have a specific theme assigned. This property is useful for enforcing consistent branding across multiple apps without configuring each one individually. Optional.|
|name|String|The name of the branding theme. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) collection|Add different branding based on a locale.|

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

