---
title: "deviceManagementReports resource type"
description: "DeviceManagementReports class for Reporting V2"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementReports resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

DeviceManagementReports class for Reporting V2

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-remoteassistance-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-remoteassistance-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md) object.|
|[getRemoteAssistanceSessionsReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancesessionsreport.md)|Stream|Not yet documented|
|[getRemoteAssistanceMonitorActiveSessionsReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancemonitoractivesessionsreport.md)|Stream|Not yet documented|
|[getRemoteAssistanceMonitorTotalSessionsReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancemonitortotalsessionsreport.md)|Stream|Not yet documented|
|[getRemoteAssistanceMonitorAvgSessionTimeReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancemonitoravgsessiontimereport.md)|Stream|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the entity|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementReports"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementReports",
  "id": "String (identifier)"
}
```



