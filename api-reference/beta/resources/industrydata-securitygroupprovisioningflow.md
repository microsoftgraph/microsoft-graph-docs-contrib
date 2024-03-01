---
title: "securityGroupProvisioningFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# securityGroupProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityGroupProvisioningFlow objects](../api/industrydata-securitygroupprovisioningflow-list.md)|[microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) collection|Get a list of the [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) objects and their properties.|
|[Get securityGroupProvisioningFlow](../api/industrydata-securitygroupprovisioningflow-get.md)|[microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md)|Read the properties and relationships of a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.|
|[Update securityGroupProvisioningFlow](../api/industrydata-securitygroupprovisioningflow-update.md)|[microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md)|Update the properties of a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.|
|[Delete securityGroupProvisioningFlow](../api/industrydata-securitygroupprovisioningflow-delete.md)|None|Delete a [microsoft.graph.industryData.securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.|
|[reset](../api/industrydata-securitygroupprovisioningflow-reset.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
|creationOptions|[microsoft.graph.industryData.securityGroupCreationOptions](../resources/industrydata-securitygroupcreationoptions.md)|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.industryData.securityGroupProvisioningFlow",
  "baseType": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->
``` json
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

