---
title: "provisioningStatusInfo resource type"
description: "Describes the status of the provisioning summary event."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# provisioningStatusInfo resource type

Namespace: microsoft.graph


Describes the status of the provisioning summary event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|errorInformation|[provisioningErrorInfo](provisioningErrorInfo.md)| If status isn't success/ skipped details for the error are contained in this.|
|status|provisioningResult| Possible values are: `success`, `warning`, `failure`, `skipped`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningStatusInfo",
  "baseType": null
}-->

```json
{
  "status": "String",
  "errorInformation": {
    "@odata.type": "microsoft.graph.provisioningErrorInfo"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningStatusInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


