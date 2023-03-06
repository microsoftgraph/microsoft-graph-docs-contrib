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

Whether validating the reputation of a known or unknown entity, this score helps users quickly understand any detected ties to malicious or suspicious infrastructure. The platform provides quick information about the activity of these entities (such as First and Last Seen timestamps or [Autonomous System](../resources/security-autonomoussystem.md) details) and a list of rules that impact the reputation score when applicable.

Reputation data is important to understanding the trustworthiness of your own attack surface and is also useful when assessing unknown [hostNames](../resources/security-hostname.md) or [IP addresses](../resources/security-ipaddress.md) that appear in investigations. These scores will uncover any prior malicious or suspicious activity that impacted the entity, or other known indicators of compromise that should be considered.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get hostReputation](../api/security-host-get-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Read the properties and relationships of a [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object, for a given [microsoft.graph.security.host](../resources/security-host.md).|

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

