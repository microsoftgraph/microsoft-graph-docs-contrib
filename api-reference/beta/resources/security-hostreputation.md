---
title: "hostReputation resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostReputation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hostReputations](../api/security-host-list-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) collection|Get a list of the [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) objects and their properties.|
|[Create hostReputation](../api/security-host-post-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Create a new [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object.|
|[Get hostReputation](../api/security-hostreputation-get.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Read the properties and relationships of a [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object.|
|[Update hostReputation](../api/security-hostreputation-update.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Update the properties of a [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object.|
|[Delete hostReputation](../api/security-host-delete-reputation.md)|None|Delete a [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|microsoft.graph.security.hostReputationClassification|**TODO: Add Description**.The possible values are: `unknown`, `neutral`, `suspicious`, `malicious`, `unknownFutureValue`.|
|id|String|**TODO: Add Description**|
|rules|[microsoft.graph.security.hostReputationRule](../resources/security-hostreputationrule.md) collection|**TODO: Add Description**|
|score|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostReputation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostReputation",
  "id": "String (identifier)",
  "classification": "String",
  "score": "Integer",
  "rules": [
    {
      "@odata.type": "microsoft.graph.security.hostReputationRule"
    }
  ]
}
```

