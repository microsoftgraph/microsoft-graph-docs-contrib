---
title: "profileSource resource type"
description: "Represents the configuration data of a profile source created by an organization administrator"
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
toc.keywords: [ source attribution, connector source ]
---

# profileSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration data of a profile source created by an organization administrator. This configuration represents the source of profile data in some end-user understandable way. 

For more information about how to configure a profile source for an organization, see [Manage profile source settings for an organization using the Microsoft Graph API](/graph/profilesource-configure-settings).


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/peopleadminsettings-list-profilesources.md)|[profileSource](../resources/profilesource.md) collection|Get a list of the profileSource objects and their properties.|
|[Create](../api/peopleadminsettings-post-profilesources.md)|[profileSource](../resources/profilesource.md)|Create a new profileSource object.|
|[Get](../api/profilesource-get.md)|[profileSource](../resources/profilesource.md)|Read the properties and relationships of a profileSource object.|
|[Update](../api/profilesource-update.md)|[profileSource](../resources/profilesource.md)|Update the properties of a profileSource object.|
|[Delete](../api/peopleadminsettings-delete-profilesources.md)|None|Delete a profileSource object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the profile source intended to inform users on the profile source name.|
|id|String|System-generated guid. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|kind|String|Type of the profile source.|
|localizations|[profileSourceLocalization](../resources/profilesourcelocalization.md) collection|Alternative localized labels an administrator specifies.|
|sourceId|String|Profile source identifier used as an [alternate-key](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/alternate-key.md).|
|webUrl|String|Web URL of the profile source that takes users to the page view of profile data.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profileSource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.profileSource",
  "id": "String (identifier)",
  "sourceId": "String",
  "kind": "String",
  "displayName": "String",
  "webUrl": "String",
  "localizations": [
    {
      "@odata.type": "microsoft.graph.profileSourceLocalization"
    }
  ]
}
```

