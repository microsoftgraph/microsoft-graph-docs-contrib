---
title: "identityLifecycle resource type"
description: "Represents the lifecycle state, including attestation and compliance information, of an identity governed by lifecycle policies."
author: "siaggarwal-ops"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# identityLifecycle resource type

Namespace: microsoft.graph.identityGovernance

Represents the lifecycle state of an identity governed by lifecycle policies, including its attestation status, compliance issues, and effective governing policy.

You can't create instances of this abstract type directly. Instead, use the following derived type:

- [userIdentityLifecycle](../resources/identitygovernance-useridentitylifecycle.md)
- [agentIdentityLifecycle](../resources/identitygovernance-agentidentitylifecycle.md)

Instances are differentiated by the **@odata.type** property. This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the identity lifecycle state. Inherited from [entity](../resources/entity.md).|
|lastAttestationDateTime|DateTimeOffset|The date and time when the identity was last attested. This value can be null if the identity hasn't yet been attested.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|complianceIssues|[microsoft.graph.identityGovernance.complianceIssue](../resources/identitygovernance-complianceissue.md) collection|The collection of compliance issues that describe why the identity is currently non-compliant with its governing policy.|
|effectiveGoverningPolicy|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md)|The highest-priority lifecycle policy that currently governs the identity. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.identityLifecycle",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.identityLifecycle",
  "id": "String (identifier)",
  "lastAttestationDateTime": "String (timestamp)"
}
```
