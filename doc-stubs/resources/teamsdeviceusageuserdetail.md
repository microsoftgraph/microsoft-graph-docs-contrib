---
title: "teamsDeviceUsageUserDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsDeviceUsageUserDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsDeviceUsageUserDetails](../api/teamsdeviceusageuserdetail-list.md)|[teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) collection|Get a list of the [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) objects and their properties.|
|[Get teamsDeviceUsageUserDetail](../api/teamsdeviceusageuserdetail-get.md)|[teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md)|Read the properties and relationships of a [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) object.|
|[Update teamsDeviceUsageUserDetail](../api/teamsdeviceusageuserdetail-update.md)|[teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md)|Update the properties of a [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) object.|
|[Delete teamsDeviceUsageUserDetail](../api/teamsdeviceusageuserdetail-delete.md)|None|Deletes a [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDate|Date|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isDeleted|Boolean|**TODO: Add Description**|
|isLicensed|Boolean|**TODO: Add Description**|
|lastActivityDate|Date|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|usedAndroidPhone|Boolean|**TODO: Add Description**|
|usedChromeOS|Boolean|**TODO: Add Description**|
|usediOS|Boolean|**TODO: Add Description**|
|usedLinux|Boolean|**TODO: Add Description**|
|usedMac|Boolean|**TODO: Add Description**|
|usedWeb|Boolean|**TODO: Add Description**|
|usedWindows|Boolean|**TODO: Add Description**|
|usedWindowsPhone|Boolean|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsDeviceUsageUserDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsDeviceUsageUserDetail",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "isLicensed": "Boolean",
  "lastActivityDate": "Date",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "usedWeb": "Boolean",
  "usedWindowsPhone": "Boolean",
  "usediOS": "Boolean",
  "usedMac": "Boolean",
  "usedAndroidPhone": "Boolean",
  "usedWindows": "Boolean",
  "usedChromeOS": "Boolean",
  "usedLinux": "Boolean",
  "reportPeriod": "String"
}
```

