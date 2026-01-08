---
title: "profilePropertySetting resource type"
description: "Represents a collection of configuration data for property-level settings configured by an administrator."
author: "rwaithera"
ms.date: 05/02/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
---

# profilePropertySetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of configuration data for property-level settings configured by an administrator.

> [!NOTE]
> When you configure the **prioritizedSourceUrls** setting, the **name** property *must* be empty to differentiate it from other property-level settings in the collection that have a **name** property. Only one configuration without a name is allowed per collection.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/peopleadminsettings-list-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md) collection|Get a collection of [profilePropertySetting](../resources/profilepropertysetting.md) objects that define the configuration for user profile properties in an organization.|
|[Create](../api/peopleadminsettings-post-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Create a new [profilePropertySetting](../resources/profilepropertysetting.md) object.|
|[Get](../api/profilepropertysetting-get.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Read the properties and relationships of a [profilePropertySetting](../resources/profilepropertysetting.md) object.|
|[Update](../api/profilepropertysetting-update.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Update the properties of a [profilePropertySetting](../resources/profilepropertysetting.md) object.|
|[Delete](../api/profilepropertysetting-delete.md)|None|Delete a [profilePropertySetting](../resources/profilepropertysetting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|organizationAllowedAudiences|A privacy setting that reflects the allowed audience for the configured property. The possible values are: `me`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|id|String|System generated GUID. Inherited from [entity](../resources/entity.md).|
|isUserOverrideForAudienceEnabled|Boolean|Defines whether a user is allowed to override the tenant admin privacy setting.|
|name|String|Name of the property-level setting.|
|prioritizedSourceUrls|String collection|A collection of prioritized profile source URLs ordered by data precedence within an organization.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profilePropertySetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.profilePropertySetting",
  "allowedAudiences": "String",
  "id": "String (identifier)",
  "isUserOverrideForAudienceEnabled": "Boolean",
  "name": "String",
  "prioritizedSourceUrls": ["String"]
}
```

