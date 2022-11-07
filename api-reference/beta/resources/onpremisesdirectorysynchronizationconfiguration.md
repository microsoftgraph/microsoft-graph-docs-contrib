---
title: "onPremisesDirectorySynchronizationConfiguration resource type"
description: "Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# onPremisesDirectorySynchronizationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.

## Properties

| Property                                 | Type                                                                                             | Description                                                                            |
| :--------------------------------------- | :----------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------- |
| accidentalDeletionPrevention             | [onPremisesAccidentalDeletionPrevention](../resources/onpremisesaccidentaldeletionprevention.md) | Contains the accidental deletion prevention configuration for a tenant.                |
| customerRequestedSynchronizationInterval | Duration                                                                                         | Interval of time that the customer requested the sync client waits between sync cycles. |
| synchronizationInterval                  | Duration                                                                                         | Interval of time the sync client should honor between sync cycles                      |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesDirectorySynchronizationConfiguration",
  "accidentalDeletionPrevention": {
    "@odata.type": "microsoft.graph.onPremisesAccidentalDeletionPrevention"
  },
  "synchronizationInterval": "String (duration)",
  "customerRequestedSynchronizationInterval": "String (duration)"
}
```