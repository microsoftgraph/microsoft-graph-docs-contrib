---
title: "featureUpdatePolicy resource type"
description: "Represents an entity that governs the feature update deployment settings content for an associated deployment audience."
author: "arorariya"
ms.date: 09/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# featureUpdatePolicy resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the feature update deployment settings content for an associated deployment audience. This audience can consist of one or more Microsoft Entra groups.

Inherits from [policy](../resources/windowsupdates-policy.md).

## Methods

This resource is part of a polymorphic collection managed by the [policy resource](../resources/windowsupdates-policy.md) base type. Operations are performed through the base type endpoints.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md) collection|The rules that determine how matching feature update content is approved. Inherited from [policy](../resources/windowsupdates-policy.md).|
|createdDateTime|DateTimeOffset| The date and time when the feature update policy is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|
|description|String| The feature update policy description. The maximum length is 1,500 characters. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). |
|displayName|String| The feature update policy display name. The maximum length is 200 characters. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). |
|id|String| The policy unique identifier. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the feature update policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableCatalogs|[microsoft.graph.windowsUpdates.applicableCatalog](../resources/windowsupdates-applicablecatalog.md) collection|The feature update catalog entries that apply to devices targeted by the policy. Inherited from [policy](../resources/windowsupdates-policy.md).|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection|The existing applicable-content collection. For feature update applicability, use **applicableCatalogs**. Inherited from [policy](../resources/windowsupdates-policy.md).|
|approvals|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Represents a set of feature updates policy approval types. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). |
|rings|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Represents a set of deployment rings that contains update deployment settings. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.featureUpdatePolicy",
  "baseType": "microsoft.graph.windowsUpdates.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdatePolicy",
  "approvalRules": [{"@odata.type": "microsoft.graph.windowsUpdates.approvalRule"}],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
