---
title: "peopleAdminSettings resource type"
description: "Represents a setting to control people-related admin settings in the tenant."
author: "rwaithera"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
ms.date: 09/16/2024
---

# peopleAdminSettings resource type

Namespace: microsoft.graph

Represents a setting to control people-related admin settings in the tenant.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/peopleadminsettings-get.md) | [peopleAdminSettings](../resources/peopleadminsettings.md) | Retrieve the properties and relationships of a [peopleAdminSettings](../resources/peopleadminsettings.md) object. |
|[List item insights](../api/peopleadminsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](../resources/insightssettings.md) object to display or return item insights in an organization. |
|[List pronouns settings](../api/peopleadminsettings-list-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md) collection|Get the properties of the [pronounsSettings](../resources/pronounssettings.md) resource for an organization.|
|[List profile card properties](../api/peopleadminsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a collection of [profileCardProperty](../resources/profilecardproperty.md) resources for an organization. |
|[Create profile card property](../api/peopleadminsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new [profileCardProperty](../resources/profilecardproperty.md) for an organization. |
|[List profile sources](../api/peopleadminsettings-list-profilesources.md)|[profileSource](../resources/profilesource.md) collection|Get a list of the [profileSource](../resources/profilesource.md) objects and their properties, which represent both external data sources and out-of-the-box Microsoft data sources configured for user profiles in an organization.|
|[Create profile source](../api/peopleadminsettings-post-profilesources.md)|[profileSource](../resources/profilesource.md)|Create a new [profileSource](../resources/profilesource.md) object.|
|[List profile property settings](../api/peopleadminsettings-list-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md) collection|Get a collection of [profilePropertySetting](../resources/profilepropertysetting.md) objects that define the configuration for user profile properties in an organization.|
|[Create profile property setting](../api/peopleadminsettings-post-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Create a new [profilePropertySetting](../resources/profilepropertysetting.md) object.|

## Properties

| Property | Type   | Description                                                                                     |
|:---------|:-------|:------------------------------------------------------------------------------------------------|
| id       | String | The unique identifier for a **peopleAdminSettings** object. Inherited from [entity](entity.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|itemInsights|[insightsSettings](../resources/insightssettings.md)|Represents administrator settings that manage the support for item insights in an organization.|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection| Contains a collection of the properties an administrator has defined as visible on the Microsoft 365 profile card.|
|profilePropertySettings|[profilePropertySetting](../resources/profilepropertysetting.md) collection|A collection of profile property configuration settings defined by an administrator for an organization.|
|profileSources|[profileSource](../resources/profilesource.md) collection|A collection of profile source settings configured by an administrator in an organization.|
|pronouns|[pronounsSettings](../resources/pronounssettings.md)|Represents administrator settings that manage the support of pronouns in an organization.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.peopleAdminSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.peopleAdminSettings",
  "id": "String (identifier)"
}
```
