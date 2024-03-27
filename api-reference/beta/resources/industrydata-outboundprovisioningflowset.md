---
title: "outboundProvisioningFlowSet resource type"
description: "Represents a collection of outbound provisioning flows used to configure how school data sync populates data in Microsoft 365 and Entra ID."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# outboundProvisioningFlowSet resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of outbound provisioning flows used to configure how school data sync populates data in Microsoft 365 and Entra ID. A flow set may specify a filter based on a subset of available organizations (schools) or may include all of the organizations in the inbound data. There may be multiple outboundProvisioningFlowSets, allowing different configurations for different organizations. Each outbound provisioning flow set does not need to include every provisioning flow type.

Outbound provisioning flow set may contain no more than one (1) of each provisioning flow configuration that is being configured: [userProvisioningFlow](../resources/industrydata-userprovisioningflow.md), [classGroupProvisioingFlow](../resources/industrydata-classgroupprovisioningflow.md), [securityGroupProvisioingFlow](../resources/industrydata-securityprovisioningflow.md), [administrativeUnitProvisioingFlow](../resources/industrydata-administrativeunitprovisioningflow.md).

## Methods

| Method                                                                                                                | Return type                                                                                                                     | Description                                                                                                                                                             |
| :-------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List outboundProvisioningFlowSet objects](../api/industrydata-industrydataroot-list-outboundprovisioningflowsets.md) | [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) collection | Get a list of the [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) objects and their properties.    |
| [Create outboundProvisioningFlowSet](../api/industrydata-industrydataroot-post-outboundprovisioningflowsets.md)       | [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md)            | Create a new [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.                               |
| [Get outboundProvisioningFlowSet](../api/industrydata-outboundprovisioningflowset-get.md)                             | [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md)            | Read the properties and relationships of a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object. |
| [Update outboundProvisioningFlowSet](../api/industrydata-outboundprovisioningflowset-update.md)                       | [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md)            | Update the properties of a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.                 |
| [Delete outboundProvisioningFlowSet](../api/industrydata-industrydataroot-delete-outboundprovisioningflowsets.md)     | None                                                                                                                            | Delete a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.                                   |
| [List provisioningFlows](../api/industrydata-outboundprovisioningflowset-list-provisioningflows.md)                   | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) collection                       | Get the provisioningFlow resources from the provisioningFlows navigation property.                                                                                      |
| [Create provisioningFlow](../api/industrydata-outboundprovisioningflowset-post-provisioningflows.md)                  | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)                                  | Create a new provisioningFlow object.                                                                                                                                   |

## Properties

| Property             | Type                                                                       | Description                                                                                                                                                                                                                                |
| :------------------- | :------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime      | DateTimeOffset                                                             | The date and time when the flowSet was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.               |
| displayName          | String                                                                     | The display name of the flowSet provided by the caller                                                                                                                                                                                     |
| filter               | [microsoft.graph.industryData.filter](../resources/industrydata-filter.md) | The collection of provisioning filters applicable to all the flows under the given flowSet                                                                                                                                                 |
| id                   | String                                                                     | The unique identifier for the flowSet. Inherited from [entity](../resources/entity.md).                                                                                                                                                    |
| lastModifiedDateTime | DateTimeOffset                                                             | The date and time when the flowSet was most recently changed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |

## Relationships

| Relationship      | Type                                                                                                      | Description                                                                       |
| :---------------- | :-------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------- |
| provisioningFlows | [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) collection | A flow that provisions relevant records of a given entity type in the M365 tenant |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.outboundProvisioningFlowSet",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "filter": {
    "@odata.type": "microsoft.graph.industryData.filter"
  }
}
```
