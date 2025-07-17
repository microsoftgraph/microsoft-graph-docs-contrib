---
title: "administrativeUnitProvisioningFlow resource type"
description: "Represents the parameters that school data sync uses to create administrative units from your inbound data."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# administrativeUnitProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters that school data sync uses to create administrative units from your inbound data. Administrative units provide a grouping construct for delegated IT administration and scoped role assignments. Scoped role assignments allow admins to manage a subset of the broader Microsoft 365 directory.

administrativeUnitProvisioningFlow is defined within an [outboundProvisioningFlowSet](industrydata-outboundprovisioningflowset.md) that may specify a filter based on a subset of available organizations (schools) or may include all of the organizations in the inbound data.

There may be multiple administrativeUnitProvisioningFlows, defined within separate outboundProvsioningFlowSets allowing different configurations for different organizations.

Inherits from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).

## Methods

| Method                                                                                                            | Return type                                                                                                                                   | Description                                                                                                                                                                           |
| :---------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Get](../api/industrydata-administrativeunitprovisioningflow-get.md)           | [microsoft.graph.industryData.administrativeUnitProvisioningFlow](industrydata-administrativeunitprovisioningflow.md)            | Read the properties and relationships of an administrativeunitprovisioningflow object. |
| [Update](../api/industrydata-administrativeunitprovisioningflow-update.md)     | [microsoft.graph.industryData.administrativeUnitProvisioningFlow](industrydata-administrativeunitprovisioningflow.md)            | Update the properties of an administrativeunitprovisioningflow object.                 |
| [Delete](../api/industrydata-administrativeunitprovisioningflow-delete.md)    | None                                                                                                                                          | Delete an administrativeunitprovisioningflow object. |

## Properties

| Property             | Type                                                                                                           | Description                                                                                                                                                                                                         |
| :------------------- | :------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| createdDateTime      | DateTimeOffset                                                                                                 | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| creationOptions      | [microsoft.graph.industryData.adminUnitCreationOptions](industrydata-adminunitcreationoptions.md) | The different attribute choices for the administrative units to be provisioned.                                                                                                                                      |
| id                   | String                                                                                                         | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| lastModifiedDateTime | DateTimeOffset                                                                                                 | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| readinessStatus      | microsoft.graph.industryData.readinessStatus                                                                   | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.administrativeUnitProvisioningFlow",
  "baseType": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "String (identifier)",
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.adminUnitCreationOptions"
  }
}
```
