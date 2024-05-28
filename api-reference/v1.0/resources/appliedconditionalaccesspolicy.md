---
title: "appliedConditionalAccessPolicy resource type"
description: "Indicates the attributes related to applied conditional access policy or policies that are triggered by the corresponding sign-in activity."
ms.localizationpriority: medium
author: "dhanyahk"
ms.subservice: entra-monitoring-health
doc_type: resourcePageType
---

# appliedConditionalAccessPolicy resource type

Namespace: microsoft.graph

Indicates the attributes related to applied conditional access policy or policies that are triggered by the corresponding sign-in activity.

## Properties

| Property   | Type    |Description|
|:---------------|:--------|:----------|
|displayName|String|Refers to the Name of the conditional access policy (example: "Require MFA for Salesforce").|
|enforcedGrantControls|String collection|Refers to the grant controls enforced by the conditional access policy (example: "Require multifactor authentication").|
|enforcedSessionControls|String collection|Refers to the session controls enforced by the conditional access policy (example: "Require app enforced controls").|
|id|String|An identifier of the conditional access policy. Supports `$filter` (`eq`).|
|result|appliedConditionalAccessPolicyResult| Indicates the result of the CA policy that was triggered. Possible values are: `success`, `failure`, `notApplied` (policy isn't applied because policy conditions weren't met), `notEnabled` (This is due to the policy in a disabled state), `unknown`, `unknownFutureValue`, `reportOnlySuccess`, `reportOnlyFailure`, `reportOnlyNotApplied`, `reportOnlyInterrupted`.  You must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `reportOnlySuccess`, `reportOnlyFailure`, `reportOnlyNotApplied`, `reportOnlyInterrupted`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
}-->

```json
{
  "displayName": "String",
  "enforcedGrantControls": ["String"],
  "enforcedSessionControls": ["String"],
  "id": "String",
  "result": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appliedConditionalAccessPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

