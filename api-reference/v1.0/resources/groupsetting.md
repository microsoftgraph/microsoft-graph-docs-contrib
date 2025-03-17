---
title: "groupSetting resource type"
description: "Group settings define the configurations that can be used to customize the tenant-wide and object-specific restrictions and allowed behavior. For examples, you can block word lists for group display names or define whether guests are allowed to be group owners."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# groupSetting resource type

Namespace: microsoft.graph

Group settings define the configurations that can be used to customize the tenant-wide and object-specific restrictions and allowed behavior. For examples, you can block word lists for group display names or define whether guests are allowed to be group owners.

By default, all groups inherit the preset defaults. To change the default settings, you must create a new settings object using the [groupSettingTemplates](groupsettingtemplate.md). When the same setting is defined at both the tenant-wide and to a specific group, the group-level setting overrides the tenant-wide setting. For example, the tenant-wide setting might allow existing members of groups to invite guests; but an individual group setting can override and not allow the operation.

Group-specific settings apply to only Microsoft 365 groups.

> [!TIP]
> The `/beta` version of this resource is named [directorySetting](/graph/api/resources/directorysetting?view=graph-rest-beta&preserve-view=true).

## Methods

| Method                                          | Return Type                                | Description                                                  |
| :---------------------------------------------- | :----------------------------------------- | :----------------------------------------------------------- |
| [List](../api/group-list-settings.md)  | [groupSetting](groupsetting.md) collection | List properties of all setting objects.                      |
| [Create](../api/group-post-settings.md) | [groupSetting](groupsetting.md)            | Create a setting object based on a **groupSettingTemplate**. |
| [Get](../api/groupsetting-get.md)       | [groupSetting](groupsetting.md)            | Read properties of a specific setting object.                |
| [Update](../api/groupsetting-update.md) | [groupSetting](groupsetting.md)            | Update the setting object.                                  |
| [Delete](../api/groupsetting-delete.md) | None                                       | Delete a setting object.                                     |

## Properties

| Property    | Type                                       | Description                                                                                                                                                             |
| :---------- | :----------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| displayName | String                                     | Display name of this group of settings, which comes from the associated template.                                                                                       |
| id          | String                                     | Unique identifier for these settings. Read-only.                                                                                                                        |
| templateId  | String                                     | Unique identifier for the tenant-level [groupSettingTemplates](groupsettingtemplate.md) object that's been customized for this group-level settings object. Read-only.  |
| values      | [settingValue](settingvalue.md) collection | Collection of name-value pairs corresponding to the **name** and **defaultValue** properties in the referenced [groupSettingTemplates](groupsettingtemplate.md) object. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.groupSetting"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "templateId": "String",
  "values": [{ "@odata.type": "microsoft.graph.settingValue" }]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupSetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
