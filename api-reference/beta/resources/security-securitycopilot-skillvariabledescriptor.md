---
title: "skillVariableDescriptor resource type"
description: "Defines the capabilities of a skill in Security Copilot."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# skillVariableDescriptor resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the capabilities of a skill in Security Copilot. For more information, see the [Security Copilot Agent manifest](/copilot/security/developer/agent-manifest).

This entire resource is currently unsupported.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Unsupported.|
|name|String|Unsupported.|
|type|[microsoft.graph.security.securityCopilot.skillTypeDescriptor](../resources/security-securitycopilot-skilltypedescriptor.md)|Unsupported.|

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

