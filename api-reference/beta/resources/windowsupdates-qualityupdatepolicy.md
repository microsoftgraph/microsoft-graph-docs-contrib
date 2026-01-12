---
title: "qualityUpdatePolicy resource type"
description: "Represents an entity that governs the Quality Update deployment settings content to an associated deployment audience which can be one or more Microsoft Entra groups."
author: "andredm7"
ms.date: 01/12/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# qualityUpdatePolicy resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the Quality Update deployment settings content to an associated deployment audience which can be one or more Microsoft Entra groups.

Inherits from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-qualityupdatepolicy-list.md)|[microsoft.graph.windowsUpdates.qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) collection|Get a list of the qualityUpdatePolicy objects and their properties.|
|[Get](../api/windowsupdates-qualityupdatepolicy-get.md)|[microsoft.graph.windowsUpdates.qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) object.|
|[Update](../api/windowsupdates-qualityupdatepolicy-update.md)|[microsoft.graph.windowsUpdates.qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md)|Update the properties of a qualityUpdatePolicy object.|
|[Delete](../api/windowsupdates-qualityupdatepolicy-delete.md)|None|Delete a qualityUpdatePolicy object.|
|[List applicableContent](../api/windowsupdates-policy-list-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection| Get a list of the applicableContent objects and their properties.|
|[Create applicableContent](../api/windowsupdates-policy-post-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md)|Create a new applicableContent object.|
|[List approvals](../api/windowsupdates-policy-list-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection| Get a list of the policyApproval objects and their properties.|
|[Create policyApproval](../api/windowsupdates-policy-post-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new policyApproval object.|
|[List rings](../api/windowsupdates-policy-list-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Get a list of the ring objects and their properties.|
|[Create ring](../api/windowsupdates-policy-post-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Create a new ring object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.contentApprovalRule](../resources/windowsupdates-contentapprovalrule.md) collection| The policy's approved rule to determine which published content matches the rule on an ongoing basis. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|
|createdDateTime|DateTimeOffset|  The date and time the Quality Update policy is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|
|description|String| The Quality Update policy description. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|
|displayName|String| The Quality Update policy display name. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|
|id|String| The Quality Update policy unique identifier. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset| The date and time the Quality Update policy was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection| Represents content applicable for offering to the related collection of devices. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|
|approvals|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|Represents a set of Quality Updates policy approval types. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|
|rings|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection| Represents a set of deployment rings containing update deployment settings. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "baseType": "microsoft.graph.windowsUpdates.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
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

