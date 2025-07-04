---
title: "peopleAdminSettings resource type"
description: "Represents a setting to control people-related admin settings in the tenant."
author: "rwaithera"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
ms.date: 09/12/2024
---

# peopleAdminSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a setting to control people-related admin settings in the tenant.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/peopleadminsettings-get.md) | [peopleAdminSettings](../resources/peopleadminsettings.md) | Retrieve the properties and relationships of a [peopleAdminSettings](../resources/peopleadminsettings.md) object. |
|[List item insights](../api/peopleadminsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object. |
|[List pronoun settings](../api/peopleadminsettings-list-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md) collection|Get the properties of the [pronounsSettings](../resources/pronounssettings.md) resource for an organization.|
|[List profile card properties](../api/peopleadminsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a collection of [profileCardProperty](../resources/profilecardproperty.md) resources for an organization. |
|[Create profile card property](../api/peopleadminsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new [profileCardProperty](../resources/profilecardproperty.md) for an organization. |
|[List photo update settings](../api/peopleadminsettings-list-photoupdatesettings.md)|[photoUpdateSettings](../resources/photoupdatesettings.md) collection|Get the properties of the [photoUpdateSettings](../resources/photoupdatesettings.md) resource for an organization.|
|[Create photo update setting](../api/peopleadminsettings-post-photoupdatesettings.md)|[photoUpdateSettings](../resources/photoupdatesettings.md)|Create a new [photoUpdateSettings](../resources/photoupdatesettings.md) for an organization.|
|[Delete photo update setting](../api/peopleadminsettings-delete-photoupdatesettings.md)|None|Delete a [photoUpdateSettings](../resources/photoupdatesettings.md) object.|
|[List profile sources](../api/peopleadminsettings-list-profilesources.md)|[profileSource](../resources/profilesource.md) collection|Get a list of the [profileSource](../resources/profilesource.md) objects and their properties, which represent both external data sources and out-of-the-box Microsoft data sources configured for user profiles in an organization.|
|[Create profile source](../api/peopleadminsettings-post-profilesources.md)|[profileSource](../resources/profilesource.md)|Create a new [profileSource](../resources/profilesource.md) object.|
|[List profile property settings](../api/peopleadminsettings-list-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md) collection|Get a collection of [profilePropertySetting](../resources/profilepropertysetting.md) objects that define the configuration for user profile properties in an organization.|
|[Create profile property setting](../api/peopleadminsettings-post-profilepropertysettings.md)|[profilePropertySetting](../resources/profilepropertysetting.md)|Create a new [profilePropertySetting](../resources/profilepropertysetting.md) object.|

## Properties

| Property | Type   | Description                                                                                     |
|:---------|:-------|:------------------------------------------------------------------------------------------------|
| id       | String | The unique identifier for the **peopleAdminSettings** object. Inherited from [entity](entity.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|itemInsights|[insightsSettings](../resources/insightssettings.md)|Administrator settings that manage the support for item insights in an organization.|
|namePronunciation|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Administrator settings that manage the support of name pronunciation in an organization.|
|photoUpdateSettings|[photoUpdateSettings](../resources/photoupdatesettings.md)|Administrator settings that manage the support for item photo updates in an organization.|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection|A collection of the properties an administrator defined as visible on the Microsoft 365 profile card.|
|profileSources|[profileSource](../resources/profilesource.md) collection|A collection of profile source settings configured by an administrator in an organization.|
|profilePropertySettings|[profilePropertySetting](../resources/profilepropertysetting.md) collection|A collection of profile property configuration settings defined by an administrator for an organization.|
|pronouns|[pronounsSettings](../resources/pronounssettings.md)|Administrator settings that manage the support of pronouns in an organization.|

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
