---
title: "openNetworkAzureSecurityGroupFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# openNetworkAzureSecurityGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List openNetworkAzureSecurityGroupFindings](../api/opennetworkazuresecuritygroupfinding-list.md)|[openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) collection|Get a list of the [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) objects and their properties.|
|[Get openNetworkAzureSecurityGroupFinding](../api/opennetworkazuresecuritygroupfinding-get.md)|[openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md)|Read the properties and relationships of an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object.|
|[Update openNetworkAzureSecurityGroupFinding](../api/opennetworkazuresecuritygroupfinding-update.md)|[openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md)|Update the properties of an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object.|
|[Delete openNetworkAzureSecurityGroupFinding](../api/opennetworkazuresecuritygroupfinding-delete.md)|None|Delete an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object.|
|[List authorizationSystemResource](../api/opennetworkazuresecuritygroupfinding-list-securitygroup.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the securityGroup navigation property.|
|[Add authorizationSystemResource](../api/opennetworkazuresecuritygroupfinding-post-securitygroup.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add securityGroup by posting to the securityGroup collection.|
|[Remove authorizationSystemResource](../api/opennetworkazuresecuritygroupfinding-delete-securitygroup.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[List virtualMachines](../api/opennetworkazuresecuritygroupfinding-list-virtualmachines.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the virtualMachines navigation property.|
|[Add authorizationSystemResource](../api/opennetworkazuresecuritygroupfinding-post-virtualmachines.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add virtualMachines by posting to the virtualMachines collection.|
|[Remove virtualMachines](../api/opennetworkazuresecuritygroupfinding-delete-virtualmachines.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inboundPorts|[inboundPorts](../resources/inboundports.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|securityGroup|[authorizationSystemResource](../resources/authorizationsystemresource.md)|**TODO: Add Description**|
|virtualMachines|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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

