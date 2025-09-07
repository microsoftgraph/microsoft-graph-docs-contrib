---
title: "processContentResponse resource type"
description: "Contains the outcome of a processContent action or a single result within a processContentAsync action."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the outcome of a processContent action or a single result within a processContentAsync action.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|policyActions|Collection([microsoft.graph.dlpActionInfo](../resources/dlpactioninfo.md))|A collection of policy actions (like DLP actions) triggered by the processed content. **NOTE**: Currently, the only policy action supported in for this resource type is `restrictAccess`.|
|processingErrors|Collection([microsoft.graph.processingError](../resources/processingerror.md))|A collection of errors encountered during the content processing.|
|protectionScopeState|microsoft.graph.security.protectionScopeState|Indicates if the applicable protection scope (policies) has changed since the last known state for the context. Possible values are `modified` and `notModified`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processContentResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.processContentResponse",
  "policyActions": [
    {
      "@odata.type": "microsoft.graph.dlpActionInfo"
    }
  ],
  "processingErrors": [
    {
      "@odata.type": "microsoft.graph.processingError"
    }
  ],
  "protectionScopeState": "String"
}
```
