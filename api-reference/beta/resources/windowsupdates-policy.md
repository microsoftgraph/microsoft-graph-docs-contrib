---
title: "Windows update policy resource type"
description: "An abstract type that governs the update deployment settings content for an associated deployment audience."
author: "andredm7"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# policy resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that governs the update deployment settings content for an associated deployment audience. This audience can consist of one or more Microsoft Entra groups.

Base type of [policy](../resources/windowsupdates-policy.md). 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/adminwindowsupdates-list-policies.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) collection|Get a list of the policy objects and their properties.|
|[Create](../api/adminwindowsupdates-post-policies.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Create a new policy object.|
|[Get](../api/windowsupdates-policy-get.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object.|
|[Update](../api/windowsupdates-updatepolicy-update.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Update the properties of a policy object.|
|[Delete](../api/windowsupdates-updatepolicy-delete.md)|None|Delete a policy object.|
|[List applicable content](../api/windowsupdates-policy-list-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection| List [applicable update content](../resources/windowsupdates-applicablecontent.md) to offer to Microsoft Entra groups, Windows Autopatch groups, or both.|
|[List approvals](../api/windowsupdates-policy-list-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Get a list of the [policyApproval](../resources/windowsupdates-policyapproval.md) objects and their properties.|
|[Create policy approval](../api/windowsupdates-policy-post-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[List rings](../api/windowsupdates-policy-list-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Get a list of the [ring](../resources/windowsupdates-ring.md) objects and their properties.|
|[Create ring](../api/windowsupdates-policy-post-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Create a new [ring](../resources/windowsupdates-ring.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.contentApprovalRule](../resources/windowsupdates-contentapprovalrule.md) collection| The approved rule of the policy that determines which published content matches the rule on an ongoing basis.|
|createdDateTime|DateTimeOffset| The date and time when the policy is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String| The policy description. The maximum length is 1,500 characters. |
|displayName|String| The policy display name. The maximum length is 200 characters. |
|id|String| The policy unique identifier.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableContent|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|Represents content applicable for offering to the related collection of devices.|
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
  "lastModifiedDateTime": "String (timestamp)"
}
```

