---
author: daspek
description: The presence of the VersionAction resource on an itemActivity indicates that the activity caused a new version to be created.
ms.date: 09/14/2017
title: VersionAction
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---

# VersionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **VersionAction** resource on an [**itemActivity**][activity] indicates that the activity caused a new version to be created.

[activity]: itemactivity.md

## Properties

| Property   | Type   | Description                                                  |
| :--------- | :----- | :----------------------------------------------------------- |
| newVersion | string | The name of the new version that was created by this action. |

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.versionAction"
}-->

```json
{
  "newVersion": "string"
}
```

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The VersionAction object provides information about an activity that resulted in a new item version.",
  "keywords": "activities,activity,action,version",
  "section": "documentation",
  "tocPath": "Resources/VersionAction",
  "suppressions": []
}
-->
