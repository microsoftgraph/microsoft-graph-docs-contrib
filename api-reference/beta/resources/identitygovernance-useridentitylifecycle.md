---
title: "userIdentityLifecycle resource type"
description: "Represents lifecycle information for a user governed by lifecycle policies."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# userIdentityLifecycle resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents lifecycle information for a user governed by lifecycle policies.
Inherits from [microsoft.graph.identityGovernance.identityLifecycle](../resources/identitygovernance-identitylifecycle.md).

## Methods

Access this resource through the **lifecycle** relationship on a [user](../resources/user.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| complianceState | microsoft.graph.identityGovernance.complianceState | The user's current lifecycle-policy compliance state. The possible values are: `compliant`, `warning`, `warningNotify`, `nonCompliant`, `unknownFutureValue`. |
| id | String | The unique identifier for the lifecycle record. Inherited from [entity](../resources/entity.md). |
| lastAttestationDateTime | DateTimeOffset | The date and time of the user's latest attestation. Inherited from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md). |

## Relationships

| Relationship | Type | Description |
|:---|:---|:---|
| complianceIssues | [microsoft.graph.identityGovernance.complianceIssue](../resources/identitygovernance-complianceissue.md) collection | The user's lifecycle-policy compliance issues. Inherited from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md). |
| effectiveGoverningPolicy | [microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) | The lifecycle policy currently governing the user. Inherited from [identityLifecycle](../resources/identitygovernance-identitylifecycle.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.userIdentityLifecycle",
  "baseType": "microsoft.graph.identityGovernance.identityLifecycle",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.userIdentityLifecycle",
  "complianceState": "String",
  "id": "String (identifier)",
  "lastAttestationDateTime": "String (timestamp)"
}
```
