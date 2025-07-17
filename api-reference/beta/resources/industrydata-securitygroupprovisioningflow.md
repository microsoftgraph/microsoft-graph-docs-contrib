---
title: "securityGroupProvisioningFlow resource type"
description: "Represents the parameters that school data sync uses to create security groups and teams in Microsoft 365 from your inbound data."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# securityGroupProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters that school data sync uses to create security groups and teams in Microsoft 365 from your inbound data. Security groups provide a grouping construct for use within various identity management, application management, and device management scenarios in Microsoft 365.

securityGroupProvisioningFlow is defined within an [outboundProvisioningFlowSet](industrydata-outboundprovisioningflowset.md) that may specify a filter based on a subset of available organizations (schools) or may include all of the organizations in the inbound data.

There may be multiple securityGroupProvisioningFlows, defined within separate outboundProvsioningFlowSets allowing different configurations for different organizations.

Inherits from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).

## Methods

| Method                                                                                                  | Return type                                                                                                                         | Description                                                                                                                                                                 |
| :------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get](../api/industrydata-securitygroupprovisioningflow-get.md)           | [microsoft.graph.industryData.securityGroupProvisioningFlow](industrydata-securitygroupprovisioningflow.md)            | Read the properties and relationships of a securitygroupprovisioningflow object. |
| [Update](../api/industrydata-securitygroupprovisioningflow-update.md)     | [microsoft.graph.industryData.securityGroupProvisioningFlow](industrydata-securitygroupprovisioningflow.md)            | Update the properties of a securitygroupprovisioningflow object.                 |
| [Delete](../api/industrydata-securitygroupprovisioningflow-delete.md)     | None                                                                                                                                | Delete a securitygroupprovisioningflow object.                                   |

## Properties

| Property             | Type                                                                                                                   | Description                                                                                                                                                                                                         |
| :------------------- | :--------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| createdDateTime      | DateTimeOffset                                                                                                         | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| creationOptions      | [microsoft.graph.industryData.securityGroupCreationOptions](industrydata-securitygroupcreationoptions.md) | The different attribute choices for the class groups to be provisioned.                                                                                                                                              |
| id                   | String                                                                                                                 | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| lastModifiedDateTime | DateTimeOffset                                                                                                         | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| readinessStatus      | microsoft.graph.industryData.readinessStatus                                                                           | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.securityGroupProvisioningFlow",
  "baseType": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "String (identifier)",
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.securityGroupCreationOptions"
  }
}
```
