---
title: "deployment resource type (for networkAccess)"
description: "Represents a deployment event within the Global Secure Access services, including its configuration, status, and related data."
author: cagautham
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# deployment resource type (for networkAccess)

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a deployment event within the Global Secure Access services, including its configuration, status, and related data.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-deployments-list.md)|[microsoft.graph.networkaccess.deployment](../resources/networkaccess-deployment.md) collection|Retrieve a list of logs that include the status of deployments performed through the Global Secure Access services.|
|[Get](../api/networkaccess-deployments-get.md)|[microsoft.graph.networkaccess.deployment](../resources/networkaccess-deployment.md)|Retrieve a specific deployment by filtering the list endpoint with the deployment ID. Individual deployment retrieval is performed by applying a filter to the list deployments API.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[microsoft.graph.networkaccess.deploymentConfiguration](../resources/networkaccess-deploymentconfiguration.md)|Specifies the configuration details associated with the deployment, such as the type of configuration change being applied.|
|deploymentEndDateTime|DateTimeOffset|Indicates the date and time when the deployment was completed.|
|initiatedBy|String|Identifies the user or system that initiated the deployment.|
|lastModifiedDateTime|DateTimeOffset|Specifies the date and time when the deployment was last modified.|
|requestId|String|A unique identifier for the deployment request. Primary key.|
|status|[microsoft.graph.networkaccess.deploymentStatus](../resources/networkaccess-deploymentstatus.md)|Represents the current status of the deployment, including its stage and any related messages. Supports `$filter` (`eq`) for **status/deploymentState**. For example, `status/deploymentStage eq 'succeeded'`.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "requestId",
  "@odata.type": "microsoft.graph.networkaccess.deployment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.deployment",
  "requestId": "String (identifier)",
  "status": {
    "@odata.type": "microsoft.graph.networkaccess.deploymentStatus"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "initiatedBy": "String",
  "deploymentEndDateTime": "String (timestamp)",
  "configuration": {
    "@odata.type": "microsoft.graph.networkaccess.deploymentConfiguration"
  }
}
```




