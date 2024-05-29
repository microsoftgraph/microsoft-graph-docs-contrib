---
title: "triggerAttribute resource type"
description: "An abstract type that defines the trigger attribute, which is changed to activate a workflow using an attributeChangeTrigger."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# triggerAttribute resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that defines the trigger attribute, which is changed to activate a workflow using an [attributeChangeTrigger](../resources/identitygovernance-attributechangetrigger.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the trigger attribute that is changed to trigger an [attributeChangeTrigger](../resources/identitygovernance-attributechangetrigger.md) workflow.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.triggerAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.triggerAttribute",
  "name": "String"
}
```

