---
title: "autonomousSystem resource type"
description: "Represents data assigned in an autonomous system."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# autonomousSystem resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data assigned in an autonomous system.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the autonomous system.|
|number|Int32|The autonomous system number, assigned by IANA.|
|organization|String|The name of the autonomous system organization.   |
|value|String|A displayable value for these autonomous system details.|

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
  "number": "Int32",
  "organization": "String",
  "value": "String"
}
```
