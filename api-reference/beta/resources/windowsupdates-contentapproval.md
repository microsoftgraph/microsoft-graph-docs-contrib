---
title: "contentApproval resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# contentApproval resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [complianceChange](../resources/windowsupdates-compliancechange.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentApprovals](../api/windowsupdates-contentapproval-list.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) collection|Get a list of the [contentApproval](../resources/windowsupdates-contentapproval.md) objects and their properties.|
|[Get contentApproval](../api/windowsupdates-contentapproval-get.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Read the properties and relationships of a [contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Update contentApproval](../api/windowsupdates-contentapproval-update.md)|[microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md)|Update the properties of a [contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[Delete contentApproval](../api/windowsupdates-contentapproval-delete.md)|None|Delete a [contentApproval](../resources/windowsupdates-contentapproval.md) object.|
|[List deployments](../api/adminwindowsupdates-list-deployments.md)|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md) collection|Get the deployment resources from the deployments navigation property.|
|[Create deployment](../api/windowsupdates-contentapproval-post-deployments.md)|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md)|Create a new deployment object.|
|[List updatePolicy](../api/adminwindowsupdates-list-updatepolicies.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) collection|Get the updatePolicy resources from the updatePolicy navigation property.|
|[Add updatePolicy](../api/windowsupdates-contentapproval-post-updatepolicy.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md)|Add updatePolicy by posting to the updatePolicy collection.|
|[Remove updatePolicy](../api/windowsupdates-contentapproval-delete-updatepolicy.md)|None|Remove an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.windowsUpdates.deployableContent](../resources/windowsupdates-deployablecontent.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|
|isRevoked|Boolean|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|
|revokedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deployments|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md) collection|**TODO: Add Description**|
|updatePolicy|[updatePolicy](../resources/windowsupdates-updatepolicy.md)|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md)|

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

