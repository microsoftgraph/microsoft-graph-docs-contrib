---
title: "ruleBasedSubjectSet resource type"
description: "A type that's derived from subjectSet specifying the rules to define the subjects that are the scope of a lifecycle workflow triggerAndScopeBasedConditions configuration."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# ruleBasedSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A type that's derived from [subjectSet](../resources/subjectset.md) and specifies the rules to define the subjects that are the scope of a lifecycle workflow triggerAndScopeBasedConditions configuration.

Inherits from [subjectSet](../resources/subjectset.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|rule|String|The rule for the subject set.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
  "rule": "String"
}
```
