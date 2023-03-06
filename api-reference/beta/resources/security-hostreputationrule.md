---
title: "hostReputationRule resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostReputationRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A rule that is used (in combination with other rules) to determine the Reputation of a [Hostname](../resources/security-hostname.md) or [IP Address](../resources/security-ipaddress.md). Eacth `hostReputationRule` only applies within the parent [hostReputation](../resources/security-hostreputation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the rule which gives more context|
|relatedDetailsUrl|String| link to a web page with details related to this rule|
|name|String|A name of the rule|
|severity|microsoft.graph.security.hostReputationRuleSeverity|An indication of the serverity this rule has against the reputation score.The possible values are: `unknown`, `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostReputationRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostReputationRule",
  "name": "String",
  "description": "String",
  "severity": "String",
  "relatedDetailsUrl": "String"
}
```

