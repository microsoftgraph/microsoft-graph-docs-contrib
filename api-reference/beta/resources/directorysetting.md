---
title: "directorySetting resource type"
description: "Directory settings can be created based on the available directorySettingTemplates, and changed from their preset defaults."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# directorySetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Directory settings define the configurations that can be used to customize the tenant-wide and object-specific restrictions and allowed behavior. For examples, you can block word lists for group display names or define whether guests are allowed to be group owners.

By default, all entities inherit the preset defaults. To change the default settings, you must create a new settings object using the [directorySettingTemplates](directorysettingtemplate.md). When the same setting is defined at both the tenant-wide and to a specific group, the entity-level setting overrides the tenant-wide setting. For example, the tenant-wide setting might allow existing members of groups to invite guests; but an individual group setting can override and not allow the operation.

Group-specific settings apply to only Microsoft 365 groups.

> [!TIP]
> The `/v1.0` version of this resource is named [groupSetting](/graph/api/resources/groupsetting?view=graph-rest-1.0&preserve-view=true).

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List](../api/group-list-settings.md) | [directorySetting](directorysetting.md) collection |List properties of all setting objects.|
|[Create](../api/group-post-settings.md) | [directorySetting](directorysetting.md) |Create a setting object based on a directorySettingTemplate.|
|[Get](../api/directorysetting-get.md) | [directorySetting](directorysetting.md) |Read properties of a specific setting object.|
|[Update](../api/directorysetting-update.md) | [directorySetting](directorysetting.md)    |Update a setting object. Only settingValues can be changed in an update.|
|[Delete](../api/directorysetting-delete.md) | None |Delete a setting object. |

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|displayName|string|Display name of this group of settings, which comes from the associated template. Read-only.|
|id|string| Unique identifier for these settings. Read-only.|
|templateId|string| Unique identifier for the template used to create this group of settings. Read-only.|
|values|[settingValue](settingvalue.md) collection| Collection of name-value pairs corresponding to the name and defaultValue properties in the referenced [directorySettingTemplates](directorysettingtemplate.md) object.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorySetting"
}-->

```json
{
  "displayName": "string",
  "id": "string (identifier)",
  "templateId": "string",
  "values": [{"@odata.type": "microsoft.graph.settingValue"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directorySetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


