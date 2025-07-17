---
title: "settingTemplateValue resource type"
description: "Represents an individual template setting definition, including the default value for the setting, if the setting is not instantiated."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# settingTemplateValue resource type

Namespace: microsoft.graph

Represents an individual template setting definition, including the default value for the setting, if the setting is not instantiated.

### Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|defaultValue|String| Default value for the setting. |
|description|String| Description of the setting. |
|name|String| Name of the setting. |
|type|String| Type of the setting. |

### JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settingTemplateValue"
}-->

```json
{
  "defaultValue": "String",
  "description": "String",
  "name": "String",
  "type": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "settingTemplateValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

