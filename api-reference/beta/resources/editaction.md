---
author: daspek
description: "The presence of the EditAction resource on an itemActivity indicates that the activity edited an item."
ms.date: 09/14/2017
title: EditAction
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# EditAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **EditAction** resource on an [**itemActivity**][activity] indicates that the activity edited an item.

**Note**: While this resource is empty today, in future API revisions it may be populated with additional properties.

[activity]: itemactivity.md

## Properties

None. This facet is a null or not-null value and contains no properties.

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.editAction"
}-->

```json
{
}
```
## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The EditAction object provides information about an activity that edited an item.",
  "keywords": "activities,activity,action,edit,modify",
  "section": "documentation",
  "tocPath": "Resources/EditAction",
  "suppressions": []
}
-->


