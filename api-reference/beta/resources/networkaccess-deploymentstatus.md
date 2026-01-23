---
title: "deploymentStatus resource type"
description: "Represents the status of a deployment performed through the Global Secure Access services"
author: cagautham
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# deploymentStatus resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a [deployment](../resources/networkaccess-deployment.md) performed through the Global Secure Access services.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deploymentStage|microsoft.graph.networkaccess.deploymentStage|Indicates the current stage of the deployment. The possible values are: `pending`, `inProgress`, `failed`, `succeeded`, `unknownFutureValue`.|
|message|String|Provides additional information or context about the deployment status, such as error details or progress updates.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.deploymentStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.deploymentStatus",
  "deploymentStage": "String",
  "message": "String"
}
```



