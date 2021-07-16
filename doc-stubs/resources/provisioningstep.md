---
title: "provisioningStep resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# provisioningStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|details|[detailsInfo](../resources/detailsinfo.md)|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|provisioningStepType|provisioningStepType|**TODO: Add Description**. Possible values are: `import`, `scoping`, `matching`, `processing`, `referenceResolution`, `export`, `unknownFutureValue`.|
|status|provisioningResult|**TODO: Add Description**. Possible values are: `success`, `failure`, `skipped`, `warning`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provisioningStep"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.provisioningStep",
  "name": "String",
  "status": "String",
  "description": "String",
  "details": {
    "@odata.type": "microsoft.graph.detailsInfo"
  },
  "provisioningStepType": "String"
}
```

