---
title: "profilePropertySetting resource type"
description: "Represents a collection of profile property configuration settings defined by an administrator for an organization."
author: "rwaithera"
ms.date: 05/02/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
---

# profilePropertySetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration data for property-level settings configured by an administrator. 

>**Note:** When configuring prioritizedSourceUrls setting, the name property **MUST** be empty to differentiate it from other property-level settings in the collection which have a name property, that is, only one configuration without a name is allowed per collection.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/peopleadminsettings-list-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md) collection|Get a list of the profilePropertySetting objects and their properties.|
|[Create](../api/peopleadminsettings-post-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Create a new profilePropertySetting object.|
|[Get](../api/profilepropertysetting-get.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Read the properties and relationships of a profilePropertySetting object.|
|[Update](../api/profilepropertysetting-update.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Update the properties of a profilePropertySetting object.|
|[Delete](../api/peopleadminsettings-delete-profilepropertysettings.md)|None|Delete a profilePropertySetting object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|organizationAllowedAudiences|A privacy setting reflecting the allowed audience for the configured property.The possible values are: `me`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|id|String|System-generated guid.  Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isUserOverrideForAudienceEnabled|Boolean|Defines if a user is allowed to override the tenant admin privacy setting|
|name|String|Name of the property-level setting.|
|prioritizedSourceUrls|String collection|A collection of priority profile source URLs ordered in the order of data precedence in an organization.|

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
  "id": "String (identifier)",
  "name": "String",
  "allowedAudiences": "String",
  "isUserOverrideForAudienceEnabled": "Boolean",
  "prioritizedSourceUrls": [
    "String"
  ]
}
```

