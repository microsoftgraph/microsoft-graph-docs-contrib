---
title: "failureInfo resource type"
description: "The failureInfo type"
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# failureInfo resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about why a call or portion of a call failed.

The failure can be of two types: 

- Call setup failure
- Mid-call drop

If one or more media streams have any of these failures, that failure is propagated at the segment level. If one or more segments have any of these failures, that failure is propagated at the session level.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|reason|String|Classification of why a call or portion of a call failed.|
|stage|microsoft.graph.callRecords.failureStage|The stage when the failure occurred. The possible values are: `unknown`, `callSetup`, `midcall`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.failureInfo",
  "baseType": null
}-->

```json
{
  "reason": "String",
  "stage": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "failureInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


