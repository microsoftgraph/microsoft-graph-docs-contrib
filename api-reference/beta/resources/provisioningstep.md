---
title: "provisioningStep resource type"
description: "Describes the steps taken to perform an action. "
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# provisioningStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the steps taken to perform an action.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|Summary of what occurred during the step.|
|details|[detailsInfo](detailsinfo.md)|Details of what occurred during the step.|
|name|String|Name of the step.|
|provisioningStepType|provisioningStepType| Type of step. The possible values are: `import`, `scoping`, `matching`, `processing`, `referenceResolution`, `export`, `unknownFutureValue`.|
|status|provisioningResult| Status of the step. The possible values are: `success`, `warning`,  `failure`, `skipped`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningStep",
  "baseType": null
}-->

```json
{
  "description": "String",
  "details": {
    "@odata.type": "microsoft.graph.detailsInfo"
  },
  "name": "String",
  "provisioningStepType": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningStep resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


