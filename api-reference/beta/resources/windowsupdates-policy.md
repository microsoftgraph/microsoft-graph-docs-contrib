---
title: "windows update policy resource type"
description: "An abstract type that governs the update deployment settings content for an associated deployment audience, which can consist of one or more Microsoft Entra groups."
author: "andredm7"
ms.date: 01/12/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# Windows Update Policy Resource Type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that governs the update deployment settings content for an associated deployment audience, which can consist of one or more Microsoft Entra groups.

Base type of [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md). 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/adminwindowsupdates-list-updatepolicies.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) collection|Get a list of the policy objects and their properties.|
|[Create](../api/adminwindowsupdates-post-updatepolicies.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Create a new policy object.|
|[Get](../api/windowsupdates-policy-get.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object.|
|[Update](../api/windowsupdates-updatepolicy-update.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Update the properties of a policy object.|
|[Delete](../api/windowsupdates-updatepolicy-delete.md)|None|Delete a policy object.|
|[List applicable content](../api/windowsupdates-policy-list-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection| Get a list of the applicableContent objects and their properties.|
|[Create applicable content](../api/windowsupdates-policy-post-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md)|Create a new applicableContent object.|
|[List approvals](../api/windowsupdates-policy-list-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Get a list of the policyApproval objects and their properties.|
|[Create policy approval](../api/windowsupdates-policy-post-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new policyApproval object.|
|[List rings](../api/windowsupdates-policy-list-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Get a list of ring objects and their properties.|
|[Create ring](../api/windowsupdates-policy-post-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Create a new ring object.|
|[Delete ring](../api/windowsupdates-ring-delete.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Delete a ring object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.contentApprovalRule](../resources/windowsupdates-contentapprovalrule.md) collection| The approved rule of the policy that determines which published content matches the rule on an ongoing basis.|
|createdDateTime|DateTimeOffset| The date and time the policy is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String| The policy description. The maximum length is 1,500 characters. |
|displayName|String| The policy display name. The maximum length is 200 characters. |
|id|String| The policy unique identifier.|
|lastModifiedDateTime|DateTimeOffset|The date and time the policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableContent|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|TODO|
|approvals|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Represents a set of quality updates policy approval types. |
|rings|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Represents a set of deployment rings that contains update deployment settings. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.policy",
  "approvalRules": [{"@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule"}],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isAutoEnrollDevices": "Boolean",
  "lastModifiedDateTime": "String (timestamp)"
}
```

