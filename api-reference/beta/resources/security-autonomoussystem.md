---
title: "autonomousSystem resource type"
description: "This represents data assigned in an Autonomous System."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# autonomousSystem resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This represents data assigned in an Autonomous System.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the Autonomous System.|
|number|Int32|The Autonomous System Number, assigned by IANA.|
|organization|String|The Automous System Organization name.   |
|value|String|A displayable value for these Autonomous System details.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.autonomousSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.autonomousSystem",
  "name": "String",
  "number": "Integer",
  "organization": "String",
  "value": "String"
}
```

