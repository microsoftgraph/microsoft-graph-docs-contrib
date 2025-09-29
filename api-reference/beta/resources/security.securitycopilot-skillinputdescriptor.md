---
title: "skillInputDescriptor resource type"
description: "*Security Copilot Skill Input Descriptor"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: resourcePageType
---

# skillInputDescriptor resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is the skillInput Descriptor object and supported properties. 

**NOTE** Currently unsupported in beta.


Inherits from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security.securitycopilot-skillvariabledescriptor.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultValue|String|Unsupported|
|description|String| Unsupported. Inherited from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security.securitycopilot-skillvariabledescriptor.md).|
|isRequired|Boolean|Unsupported|
|name|String|Unsupported. Inherited from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security.securitycopilot-skillvariabledescriptor.md).|
|placeholderValue|String|Unsupported|
|type|[microsoft.graph.security.securityCopilot.skillTypeDescriptor](../resources/security.securitycopilot-skilltypedescriptor.md)|Unsupported. Inherited from [microsoft.graph.security.securityCopilot.skillVariableDescriptor](../resources/security.securitycopilot-skillvariabledescriptor.md).|

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

