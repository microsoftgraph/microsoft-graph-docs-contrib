---
title: "microsoftTunnelServer resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# microsoftTunnelServer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftTunnelServers](../api/intune-microsofttunnelserver-list.md)|[microsoftTunnelServer](../resources/intune-microsofttunnelserver.md) collection|Get a list of the [microsoftTunnelServer](../resources/intune-microsofttunnelserver.md) objects and their properties.|
|[Create microsoftTunnelServer](../api/intune-microsofttunnelserver-create.md)|[microsoftTunnelServer](../resources/intune-microsofttunnelserver.md)|Create a new [microsoftTunnelServer](../resources/intune-microsofttunnelserver.md) object.|
|[Get microsoftTunnelServer](../api/intune-microsofttunnelserver-get.md)|[microsoftTunnelServer](../resources/intune-microsofttunnelserver.md)|Read the properties and relationships of a [microsoftTunnelServer](../resources/intune-microsofttunnelserver.md) object.|
|[Update microsoftTunnelServer](../api/intune-microsofttunnelserver-update.md)|[microsoftTunnelServer](../resources/intune-microsofttunnelserver.md)|Update the properties of a [microsoftTunnelServer](../resources/intune-microsofttunnelserver.md) object.|
|[Delete microsoftTunnelServer](../api/intune-microsofttunnelserver-delete.md)|None|Deletes a [microsoftTunnelServer](../resources/intune-microsofttunnelserver.md) object.|
|[getHealthMetricTimeSeries](../api/intune-microsofttunnelserver-gethealthmetrictimeseries.md)|[keyValuePair](../resources/synchronization-keyvaluepair.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentImageDigest|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastCheckinDateTime|DateTimeOffset|**TODO: Add Description**|
|serverImageDigest|String|**TODO: Add Description**|
|tunnelServerHealthStatus|microsoftTunnelServerHealthStatus|**TODO: Add Description**. The possible values are: `unknown`, `healthy`, `unhealthy`, `warning`, `offline`, `upgradeInProgress`, `upgradeFailed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelServer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelServer",
  "id": "String (identifier)",
  "displayName": "String",
  "tunnelServerHealthStatus": "String",
  "lastCheckinDateTime": "String (timestamp)",
  "agentImageDigest": "String",
  "serverImageDigest": "String"
}
```

