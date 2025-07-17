---
title: "directorySettingTemplate resource type"
description: "Directory setting templates represent system-defined settings available to the tenant."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# directorySettingTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Directory setting templates represent system-defined settings available to the tenant. [Directory settings](directorysetting.md) can be created based on the available **directorySettingTemplates**, and values changed from their preset defaults. Directory setting templates can't be created, updated, or deleted. These settings can represent tenant-wide settings, or can represent specific entity settings. Currently, the only templates available for groups apply to Microsoft 365 groups, and include settings such as whether users can create groups or invite guests from outside the organization to become members of a group.

For more information about the Microsoft 365 groups-specific settings, see [group (directory) settings](/graph/group-directory-settings).

> [!TIP]
> The `/v1.0` version of this resource is named [groupSettingTemplate](/graph/api/resources/groupsettingtemplate?view=graph-rest-1.0&preserve-view=true).

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[Get](../api/directorysettingtemplate-get.md) | [directorySettingTemplate](directorysettingtemplate.md) |Read the specific properties of one of the system defined directorySettingTemplate objects.|
|[List](../api/directorysettingtemplate-list.md) | [Collection of directorySettingTemplate](directorysettingtemplate.md) |List all of the system defined directorySettingTemplate objects.|

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|description|string|Description of the template. Read-only.|
|displayName|string|Display name of the template. Read-only. |
|id|string| Unique identifier for the template. Read-only.|
|values|[settingTemplateValue](settingtemplatevalue.md) collection| Collection of settingTemplateValues that list the set of available settings, defaults, and types that make up this template. Read-only. |

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorySettingTemplate"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "values": [{"@odata.type": "microsoft.graph.settingTemplateValue"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directorySettingTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


