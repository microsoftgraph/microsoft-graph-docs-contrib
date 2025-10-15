---
title: "statusBase resource type"
description: "Describes the status of the provisioning summary event."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# statusBase resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!CAUTION] 
> The statusBase API is deprecated and stopped returning data on December 31, 2021. Going forward, use the new [provisioningStatusInfo](provisioningstatusinfo.md) type.

Describes the status of the provisioning summary event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|status|provisioningResult| Possible values are: `success`, `warning`, `failure`, `skipped`, `unknownFutureValue`. Supports `$filter` (`eq`, `contains`).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.statusBase",
  "baseType": null
}-->

```json
{
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "statusBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


