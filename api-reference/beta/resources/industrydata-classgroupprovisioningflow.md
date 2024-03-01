---
title: "classGroupProvisioningFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# classGroupProvisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List classGroupProvisioningFlow objects](../api/industrydata-classgroupprovisioningflow-list.md)|[microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) collection|Get a list of the [microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) objects and their properties.|
|[Get classGroupProvisioningFlow](../api/industrydata-classgroupprovisioningflow-get.md)|[microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md)|Read the properties and relationships of a [microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) object.|
|[Update classGroupProvisioningFlow](../api/industrydata-classgroupprovisioningflow-update.md)|[microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md)|Update the properties of a [microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) object.|
|[Delete classGroupProvisioningFlow](../api/industrydata-classgroupprovisioningflow-delete.md)|None|Delete a [microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) object.|
|[reset](../api/industrydata-classgroupprovisioningflow-reset.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[microsoft.graph.industryData.classGroupConfiguration](../resources/industrydata-classgroupconfiguration.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md).|
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
  "@odata.type": "microsoft.graph.industryData.classGroupProvisioningFlow",
  "baseType": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->
``` json
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

