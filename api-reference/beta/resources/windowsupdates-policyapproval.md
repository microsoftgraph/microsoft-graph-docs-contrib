---
title: "policyApproval resource type"
description: "Represents a set of policy approval types for quality updates."
author: "andredm7"
ms.date: 01/12/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# policyApproval resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of policy approval types for quality updates.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-policy-list-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|Get a list of the [policyApproval](../resources/windowsupdates-policyapproval.md) objects and their properties.|
|[Create](../api/windowsupdates-policy-post-approvals.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[Get](../api/windowsupdates-policyapproval-get.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Read the properties and relationships of a [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[Update](../api/windowsupdates-policyapproval-update.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Update the properties of a [policyApproval](../resources/windowsupdates-policyapproval.md) object.|
|[Delete](../api/windowsupdates-policyapproval-delete.md)|None|Delete a [policyApproval](../resources/windowsupdates-policyapproval.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset| The date and time the policy approval is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String| The unique identifier for the policy approval. Read-only.|
|lastModifiedDateTime|DateTimeOffset| The date and time the policy approval was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

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
  "catalogEntryId": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String"
}
```

