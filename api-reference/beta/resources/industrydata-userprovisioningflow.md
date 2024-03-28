---
title: "userProvisioningFlow resource type"
description: "Represents the configuration parameters that allow you to automate creation and matching to Microsoft 365 users from your inbound data."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# userProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration parameters that allow you to automate creation and matching to Microsoft 365 users from your inbound data.

userProvisioningFlow is defined within an [OutboundProvisioningFlowSet](industrydata-outboundprovisioningflowset.md) that may specify a filter based on a subset of available organizations (schools) or may include all of the organizations in the inbound data.

There may be multiple userProvisioningFlows, defined within separate OutboundProvsioningFlowSets allowing different configurations for different organizations.

Inherits from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).

## Methods

| Method                                                                                | Return type                                                                                                       | Description                                                                                                                                               |
| :------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List userProvisioningFlow objects](../api/industrydata-userprovisioningflow-list.md). | [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md) collection | Get a list of the [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md) objects and their properties.    |
| [Get userProvisioningFlow](../api/industrydata-userprovisioningflow-get.md).           | [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md)            | Read the properties and relationships of a [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md) object. |
| [Update userProvisioningFlow](../api/industrydata-userprovisioningflow-update.md).     | [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md)            | Update the properties of a [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md) object.                 |
| [Delete userProvisioningFlow](../api/industrydata-userprovisioningflow-delete.md).     | None                                                                                                              | Delete a [microsoft.graph.industryData.userProvisioningFlow](industrydata-userprovisioningflow.md) object.                                   |

## Properties

| Property             | Type                                                                                                     | Description                                                                                                                                                                                                         |
| :------------------- | :------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| createdDateTime      | DateTimeOffset                                                                                           | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| createUnmatchedUsers | Boolean                                                                                                  | A boolean choice indicating whether unmatched users should be created or ignored.                                                                                                                                    |
| creationOptions      | [microsoft.graph.industryData.userCreationOptions](industrydata-usercreationoptions.md)     | The different management choices for the new users to be provisioned.                                                                                                                                                |
| id                   | String                                                                                                   | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| lastModifiedDateTime | DateTimeOffset                                                                                           | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md).                                                                                                      |
| managementOptions    | [microsoft.graph.industryData.userManagementOptions](industrydata-usermanagementoptions.md) | The different attribute choices for all the users to be considered.                                                                                                                                                  |
| readinessStatus      | microsoft.graph.industryData.readinessStatus                                                             | Inherited from [microsoft.graph.industryData.provisioningFlow](industrydata-provisioningflow.md). The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.userProvisioningFlow",
  "baseType": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "String (identifier)",
  "createUnmatchedUsers": "Boolean",
  "managementOptions": {
    "@odata.type": "microsoft.graph.industryData.userManagementOptions"
  },
  "creationOptions": {
    "@odata.type": "microsoft.graph.industryData.userCreationOptions"
  }
}
```
