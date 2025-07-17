---
author: daspek
description: <decription>
ms.date: 09/14/2017
title: RestoreAction
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# RestoreAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **RestoreAction** resource on an [**itemActivity**][activity] indicates that the activity restored an item.

**Note**: While this resource is empty today, in future API revisions it may be populated with additional properties.

[activity]: itemactivity.md

## Properties

None. This facet is a null or not-null value and contains no properties.

## Relationships
None.

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.restoreAction"
}-->

```json
{
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The RestoreAction object provides information about an activity that restored an item.",
  "keywords": "activities,activity,action,restore,undelete",
  "section": "documentation",
  "tocPath": "Resources/RestoreAction",
  "suppressions": []
}
-->


