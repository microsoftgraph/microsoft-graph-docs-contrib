---
title: "contentApproval resource type"
description: "Represents content approval to be deployed according to a policy."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# contentApproval resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content approval to be deployed according to a policy.

Inherits from [complianceChange](../resources/windowsupdates-compliancechange.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentApprovals](../api/windowsupdates-updatepolicy-list-compliancechanges-contentapproval.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) collection|Get a list of the [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) objects and their properties.|
|[Create contentApproval](../api/windowsupdates-updatepolicy-post-compliancechanges-contentapproval.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Create a new [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Get contentApproval](../api/windowsupdates-contentapproval-get.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Read the properties and relationships of a [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Update contentApproval](../api/windowsupdates-contentapproval-update.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Update the properties of a [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Delete contentApproval](../api/windowsupdates-contentapproval-delete.md)|None|Delete a [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.windowsUpdates.deployableContent](../resources/windowsupdates-deployablecontent.md)|Specifies what content to deploy. Deployable content should be provided as one of the following derived types: [microsoft.graph.windowsUpdates.catalogContent](../resources/windowsupdates-catalogcontent.md).|
|createdDateTime|DateTimeOffset|The date and time when a compliance change was created. Inherited from [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md).|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings for governing how to deploy **content**.|
|id|String|The unique identifier for the compliance change. Returned by default. Not nullable. Read-only. Inherited from [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md).|
|isRevoked|Boolean|`True` indicates that a compliance change is revoked, preventing further application. Revoking a compliance change is a final action. Inherited from [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md).|
|revokedDateTime|DateTimeOffset|The date and time when the compliance change was revoked. Inherited from [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deployments|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md) collection|Deployments created as a result of applying the approval.|
|updatePolicy|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md)|The policy this compliance change is a member of. Inherited from [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md).|

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
  "content": {
    "@odata.type": "microsoft.graph.windowsUpdates.deployableContent"
  },
  "createdDateTime": "String (timestamp)",
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  },
  "id": "String (identifier)",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)"
}
```
