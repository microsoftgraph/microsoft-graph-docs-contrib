---
title: "classGroupProvisioningFlow resource type"
description: "Represents the parameters that school data sync uses to create class groups and teams in Microsoft 365 from your inbound data."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# classGroupProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters that school data sync uses to create class groups and teams in Microsoft 365 from your inbound data. Class groups allow users to connect, communicate, and collaborate across various Microsoft 365 applications including Teams.

classGroupProvisioningFlow is defined within an [outboundProvisioningFlowSet](industrydata-outboundprovisioningflowset.md) that may specify a filter based on a subset of available organizations (schools) or may include all of the organizations in the inbound data.

There may be multiple classGroupProvisioningFlows, defined within separate OutboundProvsioningFlowSets (editor note, hyperlink to related docs) allowing different configurations for different organizations.

Inherits from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).

## Methods

| Method                                                                                            | Return type                                                                                                                   | Description                                                                                                                                                           |
| :------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get](../api/industrydata-classgroupprovisioningflow-get.md)           | [microsoft.graph.industryData.classGroupProvisioningFlow](industrydata-classgroupprovisioningflow.md)            | Read the properties and relationships of a classgroupprovisioningflow object. |
| [Update](../api/industrydata-classgroupprovisioningflow-update.md)     | [microsoft.graph.industryData.classGroupProvisioningFlow](industrydata-classgroupprovisioningflow.md)            | Update the properties of a classgroupprovisioningflow object.                 |
| [Delete](../api/industrydata-classgroupprovisioningflow-delete.md)     | None.                                                                                                                          | Delete a classgroupprovisioningflow object.                                   |

## Properties

| Property             | Type                                                                                                         | Description                                                                                                                                                                                                         |
| :------------------- | :----------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| configuration        | [microsoft.graph.industryData.classGroupConfiguration](industrydata-classgroupconfiguration.md) | The different attribute choices for the class groups to be provisioned.                                                                                                                                              |
| createdDateTime      | DateTimeOffset                                                                                               | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| id                   | String                                                                                                       | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| lastModifiedDateTime | DateTimeOffset                                                                                               | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| readinessStatus      | microsoft.graph.industryData.readinessStatus                                                                 | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.classGroupProvisioningFlow",
  "baseType": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "String (identifier)",
  "configuration": {
    "@odata.type": "microsoft.graph.industryData.classGroupConfiguration"
  }
}
```
