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

Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.

## Properties

| Property                     | Type                                                                                             | Description                                                             |
| :--------------------------- | :----------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------- |
| accidentalDeletionPrevention | [onPremisesAccidentalDeletionPrevention](../resources/onpremisesaccidentaldeletionprevention.md) | Contains the accidental deletion prevention configuration for a tenant. |

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
  }
}
```
