---
title: "administrativeUnitProvisioningFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# administrativeUnitProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List administrativeUnitProvisioningFlow objects](../api/industrydata-administrativeunitprovisioningflow-list.md)|[microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) collection|Get a list of the [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) objects and their properties.|
|[Get administrativeUnitProvisioningFlow](../api/industrydata-administrativeunitprovisioningflow-get.md)|[microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md)|Read the properties and relationships of a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.|
|[Update administrativeUnitProvisioningFlow](../api/industrydata-administrativeunitprovisioningflow-update.md)|[microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md)|Update the properties of a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.|
|[Delete administrativeUnitProvisioningFlow](../api/industrydata-administrativeunitprovisioningflow-delete.md)|None|Delete a [microsoft.graph.industryData.administrativeUnitProvisioningFlow](../resources/industrydata-administrativeunitprovisioningflow.md) object.|
|[reset](../api/industrydata-administrativeunitprovisioningflow-reset.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|creationOptions|[microsoft.graph.industryData.adminUnitCreationOptions](../resources/industrydata-adminunitcreationoptions.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|readinessStatus|microsoft.graph.industryData.readinessStatus|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.|

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
``` json
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

