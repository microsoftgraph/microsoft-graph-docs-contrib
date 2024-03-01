---
title: "userProvisioningFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# userProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userProvisioningFlow objects](../api/industrydata-userprovisioningflow-list.md)|[microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) collection|Get a list of the [microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) objects and their properties.|
|[Get userProvisioningFlow](../api/industrydata-userprovisioningflow-get.md)|[microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md)|Read the properties and relationships of a [microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) object.|
|[Update userProvisioningFlow](../api/industrydata-userprovisioningflow-update.md)|[microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md)|Update the properties of a [microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) object.|
|[Delete userProvisioningFlow](../api/industrydata-userprovisioningflow-delete.md)|None|Delete a [microsoft.graph.industryData.userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) object.|
|[reset](../api/industrydata-userprovisioningflow-reset.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|createUnmatchedUsers|Boolean|**TODO: Add Description**|
|creationOptions|[microsoft.graph.industryData.userCreationOptions](../resources/industrydata-usercreationoptions.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|managementOptions|[microsoft.graph.industryData.userManagementOptions](../resources/industrydata-usermanagementoptions.md)|**TODO: Add Description**|
|readinessStatus|microsoft.graph.industryData.readinessStatus|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.|

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
``` json
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

