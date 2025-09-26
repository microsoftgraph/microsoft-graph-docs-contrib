---
title: "policyApproval resource type"
description: "Set of Quality Updates Policy Approval types"
author: "andredm7"
ms.date: 09/25/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# policyApproval resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set of Quality Updates policy approval types.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-policyapproval-list.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|Get a list of the policyApproval objects and their properties. Use no policyapprovalID to get a list of all policy approvals|
|[Create](../api/windowsupdates-policyapproval-post.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Create a new policyApproval object.|
|[Get](../api/windowsupdates-policyapproval-get.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) object. You must use a policyapprovalID to get details.|
|[Update](../api/windowsupdates-policyapproval-update.md)|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md)|Update the properties of a policyApproval object.|
|[Delete](../api/windowsupdates-policyapproval-delete.md)|None|Delete a policyApproval object.|
|[List catalogEntry](../api/windowsupdates-policyapproval-list-catalogentry.md)|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) collection| Get a list of Catalog Entry resources from the catalog.|
|[Add catalogEntry](../api/windowsupdates-policyapproval-post-catalogentry.md)|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md)|Add catalogEntry by posting to the catalogEntry collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogEntryId|String| The unique identifier for the catalog entry. Read-only. |
|createdDateTime|DateTimeOffset| The date and time the policy approval is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only.|
|id|String| The unique identifier for the policy approval. Read-only. Inherits from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset| The date and time the policy approval was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only.|
|status|microsoft.graph.windowsUpdates.approvalStatus| The status of the catalog entry. The possible values are: `approved`, `suspended`, `unknownFutureValue`. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalogEntry|[catalogEntry](../resources/windowsupdates-catalogentry.md)| Lists the content that you can approve for deployment. Read-only.|

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
  "status": "String",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

