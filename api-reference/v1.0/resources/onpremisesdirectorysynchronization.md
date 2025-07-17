---
title: "onPremisesDirectorySynchronization resource type"
description: "A container for on-premises directory synchronization functionalities that are available for the organization."
author: dhanyahk
ms.reviewer: sgupta, abhishek.badjatya, dhanyahk
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 10/03/2024
---

# onPremisesDirectorySynchronization resource type

Namespace: microsoft.graph

A container for [on-premises directory synchronization](../resources/onpremisesdirectorysynchronization.md) functionalities that are available for the organization. Only the read and update operations are supported on this resource; create and delete aren't supported.

## Methods

| Method                                                                                           | Return type                                                                              | Description                                                                                                                                  |
| :----------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get](../api/onpremisesdirectorysynchronization-get.md)       | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | Read the properties and relationships of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object. |
| [Update](../api/onpremisesdirectorysynchronization-update.md) | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | Update the properties of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.                 |

## Properties

| Property      | Type                                                                                                               | Description                                                                                                                  |
| :------------ | :----------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------- |
| configuration | [onPremisesDirectorySynchronizationConfiguration](../resources/onpremisesdirectorysynchronizationconfiguration.md) | Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant. Nullable.|
| features      | [onPremisesDirectorySynchronizationFeature](../resources/onpremisesdirectorysynchronizationfeature.md)             | Consists of directory synchronization features that can be enabled or disabled. Not nullable.                                             |
| id            | String                                                                                                             | The unique Microsoft Entra tenant ID.                                                                                               |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremisesDirectorySynchronization",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesDirectorySynchronization",
  "id": "String (identifier)",
  "configuration": {
    "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationConfiguration"
  },
  "features": {
    "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationFeature"
  }
}
```
