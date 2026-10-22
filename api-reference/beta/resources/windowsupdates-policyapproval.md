---
title: "policyApproval resource type"
description: "Represents an approval of Windows update content for a policy."
author: "andredm7"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# policyApproval resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an approval of Windows update content for a policy.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvals](../api/windowsupdates-policy-list-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|Get a list of the [policyApproval](../resources/windowsupdates-policyapproval.md) objects and their properties.|
|[Create policyApproval](../api/windowsupdates-policy-post-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[Get policyApproval](../api/windowsupdates-policyapproval-get.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Read the properties and relationships of a [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[Update policyApproval](../api/windowsupdates-policyapproval-update.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Update the properties of a [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[Delete policyApproval](../api/windowsupdates-policyapproval-delete.md)|None|Delete a [policyApproval](../resources/windowsupdates-policyapproval.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvedBy|[windowsUpdates.approvedBy](../resources/enums-windowsupdates.md#approvedby-values)|Identifies who approved the content. The possible values are: `system`, `user`, `unknownFutureValue`. This property is set by the service. Read-only.|
|catalogEntryId|String|The catalog entry ID to approve.|
|createdDateTime|DateTimeOffset| The date and time the policy approval is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String| The unique identifier for the policy approval. Read-only.|
|lastModifiedDateTime|DateTimeOffset| The date and time the policy approval was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|startDateTime|DateTimeOffset|The date and time when the approved content can start being offered. If omitted when the approval is created, the service uses the current time.|
|status|[windowsUpdates.approvalStatus](../resources/enums-windowsupdates.md#approvalstatus-values)|The approval status. The possible values are: `approved`, `suspended`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalogEntry|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md)| The content that you can approve for deployment. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.policyApproval",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "approvedBy": "String",
  "catalogEntryId": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```
