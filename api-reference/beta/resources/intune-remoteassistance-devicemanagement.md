---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-remoteassistance-devicemanagement-get.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-remoteassistance-devicemanagement-update.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|[getAllowedRemoteAssistanceActions function](../api/intune-remoteassistance-devicemanagement-getallowedremoteassistanceactions.md)|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)||
|[reportRemoteAssistance action](../api/intune-remoteassistance-devicemanagement-reportremoteassistance.md)|None|A post call to submit the reporting payload|
|[reportRemoteHelpSessionStartTime action](../api/intune-remoteassistance-devicemanagement-reportremotehelpsessionstarttime.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String||

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteAssistanceSettings|[remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md)|The remote assistance settings singleton|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/intune-remoteassistance-remoteassistancepartner.md) collection|The remote assist partners.|
|reports|[deviceManagementReports](../resources/intune-remoteassistance-devicemanagementreports.md)|Reports singleton|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```