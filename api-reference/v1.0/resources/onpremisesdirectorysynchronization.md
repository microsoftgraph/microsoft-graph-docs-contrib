---
title: "onPremisesDirectorySynchronization resource type"
description: "A container for on-premises directory synchronization functionalities that are available for the organization."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# onPremisesDirectorySynchronization resource type

Namespace: microsoft.graph

A container for on-premises directory synchronization functionalities that are available for the organization. Only the read and update operations are supported on this resource; create and delete are not supported.

## Methods

| Method                                                                                           | Return type                                                                              | Description                                                                                                                                  |
| :----------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get onPremisesDirectorySynchronization](../api/onpremisesdirectorysynchronization-get.md)       | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | Read the properties and relationships of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object. |
| [Update onPremisesDirectorySynchronization](../api/onpremisesdirectorysynchronization-update.md) | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | Update the properties of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.                 |

## Properties

| Property      | Type                                                                                                               | Description                                                                                                                  |
| :------------ | :----------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------- |
| configuration | [onPremisesDirectorySynchronizationConfiguration](../resources/onpremisesdirectorysynchronizationconfiguration.md) | Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant. |
| features      | [onPremisesDirectorySynchronizationFeature](../resources/onpremisesdirectorysynchronizationfeature.md)             | Consists of directory synchronization features that can be enabled or disabled.                                              |
| id            | String                                                                                                             | The unique Azure AD tenant ID.                                                                                               |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
