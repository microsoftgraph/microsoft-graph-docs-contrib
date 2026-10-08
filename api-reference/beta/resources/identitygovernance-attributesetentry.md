---
title: "attributeSetEntry resource type"
description: "Represents a key-value pair in an attribute set, used to define the attributes of a provisioning object subject."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# attributeSetEntry resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key-value pair in an attribute set. This object is configured in the **attributeSetEntries** property of the [provisioningObjectWorkflowSubject](../resources/identitygovernance-provisioningobjectworkflowsubject.md) resource.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|The name (key) of the attribute.|
|value|String|The value of the attribute.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.attributeSetEntry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.attributeSetEntry",
  "name": "String",
  "value": "String"
}
```
