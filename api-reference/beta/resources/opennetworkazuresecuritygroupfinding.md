---
title: "openNetworkAzureSecurityGroupFinding resource type"
description: "View Azure open security groups."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# openNetworkAzureSecurityGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View Azure open security groups.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List openNetworkAzureSecurityGroupFinding objects](../api/opennetworkazuresecuritygroupfinding-list.md)|[openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) collection|Get a list of the [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) objects and their properties.|
|[Get openNetworkAzureSecurityGroupFinding](../api/opennetworkazuresecuritygroupfinding-get.md)|[openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md)|Read the properties and relationships of an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|inboundPorts|[inboundPorts](../resources/inboundports.md)|Contains information on inbound ports related to an open security group.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|securityGroup|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an authorization system.|
|virtualMachines|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Represents a virtual machine in an authorization system.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.openNetworkAzureSecurityGroupFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.openNetworkAzureSecurityGroupFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "inboundPorts": {
    "@odata.type": "microsoft.graph.inboundPorts"
  }
}
```

