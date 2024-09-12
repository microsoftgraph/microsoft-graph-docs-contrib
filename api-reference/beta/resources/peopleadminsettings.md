---
title: "peopleAdminSettings resource type"
description: "Represents a setting to control people-related admin settings in the tenant."
author: "rwaithera"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
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

## Properties

| Property | Type   | Description                                                                                     |
|:---------|:-------|:------------------------------------------------------------------------------------------------|
| id       | String | The unique identifier for the **peopleAdminSettings** object. Inherited from [entity](entity.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|itemInsights|[insightsSettings](../resources/insightssettings.md)|Administrator settings that manage the support for item insights in an organization.|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection|A collection of the properties an administrator defined as visible on the Microsoft 365 profile card.|
|photoUpdateSettings|[photoUpdateSettings](../resources/photoupdatesettings.md)|Administrator settings that manage the support for item photo updates in an organization.|
|pronouns|[pronounsSettings](../resources/pronounssettings.md)|Administrator settings that manage the support of pronouns in an organization.|
|namePronunciation|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Administrator settings that manage the support of name pronunciation in an organization.|

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
