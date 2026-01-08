---
title: "deviceManagementReports resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementReports resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-mam-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-mam-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-mam-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-mam-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-mam-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-mam-devicemanagementreports.md) object.|
|[getMobileApplicationManagementAppRegistrationSummaryReport action](../api/intune-mam-devicemanagementreports-getmobileapplicationmanagementappregistrationsummaryreport.md)|Stream||
|[getMobileApplicationManagementAppConfigurationReport action](../api/intune-mam-devicemanagementreports-getmobileapplicationmanagementappconfigurationreport.md)|Stream||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|

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