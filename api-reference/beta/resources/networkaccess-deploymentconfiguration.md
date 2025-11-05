---
title: "deploymentConfiguration resource type"
description: "Represents the configuration details for a deployment performed through the Global Secure Access services."
author: cagautham
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# deploymentConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration details for a [deployment](../resources/networkaccess-deployment.md) performed through the Global Secure Access services.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeType|String|Specifies the type of configuration change being deployed. The possible values are: `remoteNetwork`, `enrichedAuditLogsSetting`, `crossTenantAccessSettings`, `conditionalAccessSettings`, `forwardingOptions`, `forwardingProfile`, `filteringProfile`, `unknownFutureValue`.|
|operationName|String|Indicates the name of the operation being performed as part of the deployment configuration.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.deploymentConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.deploymentConfiguration",
  "operationName": "String",
  "changeType": "String"
}
```



