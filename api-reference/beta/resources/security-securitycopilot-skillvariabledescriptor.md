---
title: "skillVariableDescriptor resource type"
description: "Security Copilot Skill Variable Descriptor"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: resourcePageType
---

# skillVariableDescriptor resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources related to the skillVariableDescriptor resource type.

**NOTE** This is currently unsupported in beta.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Unsupported|
|name|String|Unsupported|
|type|[microsoft.graph.security.securityCopilot.skillTypeDescriptor](../resources/security.securitycopilot-skilltypedescriptor.md)|Unsupported|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityCopilot.skillVariableDescriptor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.skillVariableDescriptor",
  "name": "String",
  "description": "String",
  "type": {
    "@odata.type": "microsoft.graph.security.securityCopilot.skillTypeDescriptor"
  }
}
```

