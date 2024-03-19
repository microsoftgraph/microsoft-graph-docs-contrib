---
title: "securityGroupProvisioningFlow resource type"
description: "**TODO: Add Description**"
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# securityGroupProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters that School Data Sync will use to create Security Groups and teams in Microsoft365 from your inbound data. Security Groups provide a grouping construct for use within various identity management, application management, and device management scenarios in Microsoft 365.

securityGroupProvisioningFlow is defined within an [OutboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) that may specify a filter based on a subset of available organizations (schools) or may include all of the organizations in the inbound data.

There may be multiple securityGroupProvisioningFlows, defined within separate OutboundProvsioningFlowSets allowing different configurations for different organizations.

Inherits from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).

## Methods

| Method                                                                                                  | Return type                                                                                                                         | Description                                                                                                                                                                 |
| :------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List securityGroupProvisioningFlow objects](../api/industrydata-securitygroupprovisioningflow-list.md) | [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) collection | Get a list of the [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) objects and their properties.    |
| [Get securityGroupProvisioningFlow](../api/industrydata-securitygroupprovisioningflow-get.md)           | [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md)            | Read the properties and relationships of a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object. |
| [Update securityGroupProvisioningFlow](../api/industrydata-securitygroupprovisioningflow-update.md)     | [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md)            | Update the properties of a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.                 |
| [Delete securityGroupProvisioningFlow](../api/industrydata-securitygroupprovisioningflow-delete.md)     | None                                                                                                                                | Delete a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.                                   |
| [reset](../api/industrydata-securitygroupprovisioningflow-reset.md)                                     | None                                                                                                                                | Force to reprocess all provisioning data                                                                                                                                    |

## Properties

| Property             | Type                                                                                                                   | Description                                                                                                                                                                                                         |
| :------------------- | :--------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| createdDateTime      | DateTimeOffset                                                                                                         | Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).                                                                                                      |
| creationOptions      | [microsoft.graph.industryData.securityGroupCreationOptions](../resources/industrydata-securitygroupcreationoptions.md) | The different attribute choices for the class groups to be provisioned                                                                                                                                              |
| id                   | String                                                                                                                 | Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).                                                                                                      |
| lastModifiedDateTime | DateTimeOffset                                                                                                         | Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).                                                                                                      |
| readinessStatus      | microsoft.graph.industryData.readinessStatus                                                                           | Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

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
