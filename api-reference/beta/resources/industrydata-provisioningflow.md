---
title: "provisioningFlow resource type"
description: "A flow that provisions relevant records of a given entity type in the M365 tenant."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# provisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A flow that provisions relevant records of a given entity type in the M365 tenant.
This is an abstract type.

## Methods

| Method                                                                                                     | Return type                                                                                               | Description                                                                                                                                       |
| :--------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------ |
| [List provisioningFlow objects](../api/industrydata-outboundprovisioningflowset-list-provisioningflows.md) | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) collection | Get a list of the [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) objects and their properties.    |
| [Create provisioningFlow](../api/industrydata-outboundprovisioningflowset-post-provisioningflows.md)       | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)            | Create a new [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.                               |
| [Get provisioningFlow](../api/industrydata-provisioningflow-get.md)                                        | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)            | Read the properties and relationships of a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object. |
| [Update provisioningFlow](../api/industrydata-provisioningflow-update.md)                                  | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)            | Update the properties of a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.                 |
| [Delete provisioningFlow](../api/industrydata-outboundprovisioningflowset-delete-provisioningflows.md)     | None                                                                                                      | Delete a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.                                   |
| [reset](../api/industrydata-provisioningflow-reset.md)                                                     | None                                                                                                      | Force to reprocess all provisioning data                                                                                                          |

## Properties

| Property             | Type                                         | Description                                                                                                                                                                                                                                          |
| :------------------- | :------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime      | DateTimeOffset                               | The date and time when the provisioning flow was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.               |
| id                   | String                                       | The unique identifier for the provisioning flow. Inherited from [entity](../resources/entity.md).                                                                                                                                                    |
| lastModifiedDateTime | DateTimeOffset                               | The date and time when the provisioning flow was most recently changed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| readinessStatus      | microsoft.graph.industryData.readinessStatus | The state of the activity from creation through to ready to do work. The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.                                                                            |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.provisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "String (identifier)"
}
```
