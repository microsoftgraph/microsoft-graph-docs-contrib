---
title: "agentIdentityLifecycle resource type"
description: "Represents the lifecycle state of an agent identity, including its attestation status, compliance issues, and effective governing policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# agentIdentityLifecycle resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the lifecycle state of an agent identity, including its attestation status, compliance issues, and effective governing policy.

Inherits from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md).


## Methods
For the list of operations, see the methods of the [identityLifecycle](../resources/identitygovernance-identitylifecycle.md) base type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the agent identity lifecycle state. Inherited from [entity](../resources/entity.md).|
|lastAttestationDateTime|DateTimeOffset|The date and time when the agent identity was last attested. This value can be null if the identity hasn't yet been attested. Inherited from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|complianceIssues|[microsoft.graph.identityGovernance.complianceIssue](../resources/identitygovernance-complianceissue.md) collection|The collection of compliance issues that describe why the agent identity is currently non-compliant with its governing policy. Inherited from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md).|
|effectiveGoverningPolicy|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md)|The highest-priority lifecycle policy that currently governs the agent identity. Supports `$expand`. Inherited from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.agentIdentityLifecycle",
  "baseType": "microsoft.graph.identityGovernance.identityLifecycle",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.agentIdentityLifecycle",
  "id": "String (identifier)",
  "lastAttestationDateTime": "String (timestamp)"
}
```
