---
title: "contentApproval resource type"
description: "Approves content to be deployed according to policy."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# contentApproval resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Approves content to be deployed according to policy.


Inherits from [complianceChange](../resources/windowsupdates-compliancechange.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentApprovals](../api/windowsupdates-updatepolicy-list-compliancechanges-contentapproval.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) collection|Get a list of the [contentApproval](../resources/windowsupdates-contentapproval.md) objects and their properties.|
|[Create contentApproval](../api/windowsupdates-updatepolicy-post-compliancechanges-contentapproval.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Create a new [contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Get contentApproval](../api/windowsupdates-contentapproval-get.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Read the properties and relationships of a [contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Update contentApproval](../api/windowsupdates-contentapproval-update.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Update the properties of a [contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Delete contentApproval](../api/windowsupdates-contentapproval-delete.md)|None|Delete a [contentApproval](../resources/windowsupdates-contentapproval.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.windowsUpdates.deployableContent](../resources/windowsupdates-deployablecontent.md)|Specifies what content to deploy. Deployable content should be provided as one of the following derived types: [catalogContent](../resources/windowsupdates-catalogcontent.md)|
|createdDateTime|DateTimeOffset|The date and time when created. Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings governing how to deploy **content**.|
|id|String|The unique identifier for the compliance change. Returned by default. Key. Not nullable. Read-only. Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|
|isRevoked|Boolean|Set to **true** to revoke the change and prevent further application. Revoking a compliance change is a final action. Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|
|revokedDateTime|DateTimeOffset|Date and time the compliance change was revoked. Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deployments|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md) collection|Deployments created as a result of applying the approval.|
|updatePolicy|[updatePolicy](../resources/windowsupdates-updatepolicy.md)|The policy this compliance change is a member of. Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval",
  "baseType": "microsoft.graph.windowsUpdates.complianceChange",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)",
  "content": {
    "@odata.type": "microsoft.graph.windowsUpdates.deployableContent"
  },
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  }
}
```

