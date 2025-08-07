---
title: "deviceManagementReports resource type"
description: "DeviceManagementReports class for Reporting V2"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementReports resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

DeviceManagementReports class for Reporting V2

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-remoteassistance-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-remoteassistance-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md) object.|
|[getRemoteAssistanceSessionsReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancesessionsreport.md)|Stream||
|[getRemoteAssistanceMonitorActiveSessionsReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancemonitoractivesessionsreport.md)|Stream||
|[getRemoteAssistanceMonitorTotalSessionsReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancemonitortotalsessionsreport.md)|Stream||
|[getRemoteAssistanceMonitorAvgSessionTimeReport action](../api/intune-remoteassistance-devicemanagementreports-getremoteassistancemonitoravgsessiontimereport.md)|Stream||

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