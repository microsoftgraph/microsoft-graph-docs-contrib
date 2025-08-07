---
title: "deviceManagementReports resource type"
description: "Singleton entity that acts as a container for reporting functionality."
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

Singleton entity that acts as a container for reporting functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-cloudpkigraphservice-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-cloudpkigraphservice-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-cloudpkigraphservice-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-cloudpkigraphservice-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-cloudpkigraphservice-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-cloudpkigraphservice-devicemanagementreports.md) object.|
|[retrieveCloudPkiLeafCertificateReport action](../api/intune-cloudpkigraphservice-devicemanagementreports-retrievecloudpkileafcertificatereport.md)|Stream||
|[retrieveCloudPkiLeafCertificateSummaryReport action](../api/intune-cloudpkigraphservice-devicemanagementreports-retrievecloudpkileafcertificatesummaryreport.md)|Stream||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required Graph property|

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