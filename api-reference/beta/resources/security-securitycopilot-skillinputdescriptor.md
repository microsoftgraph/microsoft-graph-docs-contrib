---
title: "skillInputDescriptor resource type"
description: "Defines the capabilities of a skill in Security Copilot."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# skillInputDescriptor resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the capabilities of a skill in Security Copilot. For more information, see the [Security Copilot Agent manifest](/copilot/security/developer/agent-manifest).

**NOTE** This object is currently unsupported.

Inherits from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security-securitycopilot-skillvariabledescriptor.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultValue|String|Unsupported.|
|description|String| Unsupported. Inherited from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security-securitycopilot-skillvariabledescriptor.md).|
|isRequired|Boolean|Unsupported.|
|name|String|Unsupported. Inherited from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security-securitycopilot-skillvariabledescriptor.md).|
|placeholderValue|String|Unsupported.|
|type|[microsoft.graph.security.securityCopilot.skillTypeDescriptor](../resources/security-securitycopilot-skilltypedescriptor.md)|Unsupported. Inherited from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security-securitycopilot-skillvariabledescriptor.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityCopilot.skillInputDescriptor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.skillInputDescriptor",
  "name": "String",
  "description": "String",
  "type": {
    "@odata.type": "microsoft.graph.security.securityCopilot.skillTypeDescriptor"
  },
  "isRequired": "Boolean",
  "defaultValue": "String",
  "placeholderValue": "String"
}
```

