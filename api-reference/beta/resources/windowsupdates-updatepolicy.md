---
title: "updatePolicy resource type"
description: "Entity that governs the deployment of content to an associated deploymentAudience."
author: "*ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# updatePolicy resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that governs the deployment of content to an associated deploymentAudience.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List updatePolicies](../api/adminwindowsupdates-list-updatepolicies.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) collection|Get a list of the [updatePolicy](../resources/windowsupdates-updatepolicy.md) objects and their properties.|
|[Create updatePolicy](../api/adminwindowsupdates-post-updatepolicies.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md)|Create a new [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.|
|[Get updatePolicy](../api/windowsupdates-updatepolicy-get.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md)|Read the properties and relationships of an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.|
|[Update updatePolicy](../api/windowsupdates-updatepolicy-update.md)|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md)|Update the properties of an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.|
|[Delete updatePolicy](../api/adminwindowsupdates-delete-updatepolicies.md)|None|Delete an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.|
|[List deploymentAudience](../api/windowsupdates-deployment-list-audience.md)|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md) collection|Get the deploymentAudience resources from the audience navigation property.|
|[Add deploymentAudience](../api/windowsupdates-updatepolicy-post-audience.md)|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Add audience by posting to the audience collection.|
|[Remove deploymentAudience](../api/windowsupdates-updatepolicy-delete-audience.md)|None|Remove a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.|
|[List complianceChanges](../api/windowsupdates-updatepolicy-list-compliancechanges.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) collection|Get the complianceChange resources from the complianceChanges navigation property.|
|[Create complianceChange](../api/windowsupdates-updatepolicy-post-compliancechanges.md)|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md)|Create a new complianceChange object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|complianceChangeRules|[microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md) collection|collection|Rules governing the automatic creation of compliance changes.|
|createdDateTime|DateTimeOffset|The date and time when created.|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings governing how to deploy **content**.|
|id|String|Unique identifier.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|audience|[deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Specifies the audience to target.|
|complianceChanges|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) collection|collection|Compliance changes like content approvals which result in the automatic creation of deployments using the policy's **audience** and **deploymentSettings**.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.updatePolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
  "audience": { "@odata.type": "microsoft.graph.windowsUpdates.deploymentAudience" },
  "complianceChangeRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.contentApprovalRule"
    }
  ],
  "complianceChanges": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.complianceChange"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  },
  "id": "String (identifier)"
}
```

