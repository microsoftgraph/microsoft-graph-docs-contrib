---
title: "Update deployment policy settings content"
description: "Represents an entity that governs the update deployment settings content to an associated deployment audience which can be one or more Microsoft Entra groups."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# Update policy deployment settings content type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment settings content to an associated deployment audience which can be one or more Microsoft Entra groups.

This is an abstract type.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/adminwindowsupdates-list-updatepolicies.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) collection|Get a list of the policy objects and their properties.|
|[Create](../api/adminwindowsupdates-post-updatepolicies.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Create a new policy object.|
|[Get](../api/windowsupdates-policy-get.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object.|
|[Update](../api/windowsupdates-updatepolicy-update.md)|[microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|Update the properties of a policy object.|
|[Delete](../api/windowsupdates-updatepolicy-delete.md)|None|Delete a policy object.|
|[List applicableContent](../api/windowsupdates-policy-list-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection| Get a list of the applicableContent objects and their properties.|
|[Create applicableContent](../api/windowsupdates-policy-post-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md)|Create a new applicableContent object.|
|[List approvals](../api/windowsupdates-policyapproval-list.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Get a list of the policyApproval objects and their properties.|
|[Create policyApproval](../api/windowsupdates-policyapproval-post.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new policyApproval object.|
|[List rings](../api/windowsupdates-policy-list-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Get a list of ring objects and their properties.|
|[Create ring](../api/windowsupdates-policy-post-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Create a new ring object.|
|[Delete ring](../api/windowsupdates-policy-delete-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Delete a ring object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.contentApprovalRule](../resources/windowsupdates-contentapprovalrule.md) collection| The policy's approved rule to determine which published content matches the rule on an ongoing basis.|
|createdDateTime|DateTimeOffset| The date and time the policy is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only.|
|description|String| The policy description. |
|displayName|String| The policy display name. |
|id|String| The policy unique identifier. Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the policy was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection| Represents content applicable for offering to the related collection of devices. |
|approvals|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Represents a set of Quality Updates policy approval types. |
|rings|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Represents a set of deployment rings containing update deployment settings. |

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
  "displayName": "String",
  "description": "String",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule"
    }
  ],
  "isAutoEnrollDevices": "Boolean",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

