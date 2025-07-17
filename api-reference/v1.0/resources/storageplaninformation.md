---
author: learafa
description: "The storagePlanInformation resource provides information about the drive's storage quota plans."
title: StoragePlanInformation
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "onedrive"
ms.date: 03/06/2024
---
# storagePlanInformation resource type

Namespace: microsoft.graph

Provides information about the drive's storage quota plans.

## Properties

| Property name     | Type      | Description                                                             |
|:------------------|:----------|:----------------------------------------------------------------------- |
| **upgradeAvailable**  | Boolean   | Indicates whether there are higher storage quota plans available. Read-only. |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
   "@odata.type": "microsoft.graph.storagePlanInformation",
} -->

```json
{
  "upgradeAvailable": true
}

```

<!--
{
  "type": "#page.annotation",
  "description": "storagePlanInformation resource contains information about storage quota plans that make up the drive's storage space quota.",
  "keywords": "quota,plans,upgradeAvailable",
  "section": "documentation",
  "tocPath": "Resources/StoragePlanInformation",
  "suppressions": []
}
-->


