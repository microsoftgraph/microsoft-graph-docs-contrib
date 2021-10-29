---
title: "teamsDeviceUsageUserCounts resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsDeviceUsageUserCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsDeviceUsageUserCounts](../api/teamsdeviceusageusercounts-list.md)|[teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) collection|Get a list of the [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) objects and their properties.|
|[Get teamsDeviceUsageUserCounts](../api/teamsdeviceusageusercounts-get.md)|[teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md)|Read the properties and relationships of a [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) object.|
|[Update teamsDeviceUsageUserCounts](../api/teamsdeviceusageusercounts-update.md)|[teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md)|Update the properties of a [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) object.|
|[Delete teamsDeviceUsageUserCounts](../api/teamsdeviceusageusercounts-delete.md)|None|Deletes a [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|androidPhone|Int64|**TODO: Add Description**|
|chromeOS|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|ios|Int64|**TODO: Add Description**|
|linux|Int64|**TODO: Add Description**|
|mac|Int64|**TODO: Add Description**|
|reportDate|Date|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|web|Int64|**TODO: Add Description**|
|windows|Int64|**TODO: Add Description**|
|windowsPhone|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsDeviceUsageUserCounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsDeviceUsageUserCounts",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "web": "Integer",
  "windowsPhone": "Integer",
  "androidPhone": "Integer",
  "ios": "Integer",
  "mac": "Integer",
  "windows": "Integer",
  "chromeOS": "Integer",
  "linux": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

