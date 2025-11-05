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

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_deployment_logs_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-deployment-logs-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-deployments.md)|[microsoft.graph.networkaccess.deployment](../resources/networkaccess-deployment.md) collection|Retrieve a list of logs that include the status of deployments performed through the Global Secure Access services.|
|[Get](../api/networkaccess-networkaccessroot-get-deployments.md)|[microsoft.graph.networkaccess.deployment](../resources/networkaccess-deployment.md)|Retrieve a specific deployment by filtering the list endpoint with the deployment ID. Individual deployment retrieval is performed by applying a filter to the list deployments API.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[microsoft.graph.networkaccess.deploymentConfiguration](../resources/networkaccess-deploymentconfiguration.md)|Specifies the configuration details associated with the deployment, such as the type of configuration change being applied.|
|deploymentEndDateTime|DateTimeOffset|Indicates the date and time when the deployment was completed.|
|initiatedBy|String|Identifies the user or system that initiated the deployment.|
|lastModifiedDateTime|DateTimeOffset|Specifies the date and time when the deployment was last modified.|
|requestId|String|A unique identifier for the deployment request.|
|status|[microsoft.graph.networkaccess.deploymentStatus](../resources/networkaccess-deploymentstatus.md)|Represents the current status of the deployment, including its stage and any related messages.|


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




