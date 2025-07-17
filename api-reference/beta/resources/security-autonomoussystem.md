---
title: "autonomousSystem resource type"
description: "Represents data assigned in an autonomous system."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# autonomousSystem resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

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

The following JSON representation shows the resource type.
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
