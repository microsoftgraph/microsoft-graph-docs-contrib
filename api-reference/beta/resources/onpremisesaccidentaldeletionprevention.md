---
title: "onPremisesAccidentalDeletionPrevention resource type"
description: "Contains the accidental deletion prevention configuration for a tenant."
author: dhanyahk
ms.reviewer: sgupta, abhishek.badjatya, dhanyahk
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 10/03/2024
---

# onPremisesAccidentalDeletionPrevention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the accidental deletion prevention configuration for a tenant. This configuration is geared at administrators who accidentally make an on-premises Active Directory change which results in deleting a large number of items on Microsoft Entra ID.

## Properties

| Property                      | Type                                                     | Description                                                                                                                                             |
| :---------------------------- | :------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| alertThreshold                | Int32                                                    | Threshold value which triggers accidental deletion prevention. The threshold is either an absolute number of objects or a percentage number of objects. |
| synchronizationPreventionType | onPremisesDirectorySynchronizationDeletionPreventionType | The status of the accidental deletion prevention feature. The possible values are: `disabled`, `enabledForCount`, `enabledForPercentage`, `unknownFutureValue`.               |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesAccidentalDeletionPrevention"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesAccidentalDeletionPrevention",
  "synchronizationPreventionType": "String",
  "alertThreshold": "Integer"
}
```
