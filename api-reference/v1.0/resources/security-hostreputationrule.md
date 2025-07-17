---
title: "hostReputationRule resource type"
description: "Represents a rule that is used (in combination with other rules) to determine the reputation of a hostname or IP address."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# hostReputationRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a rule that is used (in combination with other rules) to determine the reputation of a [hostname](../resources/security-hostname.md) or [IP address](../resources/security-ipaddress.md). Each **hostReputationRule** only applies within the parent [hostReputation](../resources/security-hostreputation.md).

## Properties

| Property          | Type                                                | Description                                                                                                                                                |
| :---------------- | :-------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------- |
| description       | String                                              | The description of the rule that gives more context.                                                                                                       |
| relatedDetailsUrl | String                                              | Link to a web page with details related to this rule.                                                                                                      |
| name              | String                                              | The name of the rule.                                                                                                                                      |
| severity          | microsoft.graph.security.hostReputationRuleSeverity | Indicates the severity that this rule has against the reputation score. The possible values are: `unknown`, `low`, `medium`, `high`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostReputationRule"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.hostReputationRule",
  "description": "String",
  "name": "String",
  "relatedDetailsUrl": "String",
  "severity": "String"
}
```
