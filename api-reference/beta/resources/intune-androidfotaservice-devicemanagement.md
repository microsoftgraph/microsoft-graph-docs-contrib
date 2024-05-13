---
title: "deviceManagement resource type"
description: "Singleton that acts as container for a collection of Resource Access entities."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton that acts as container for a collection of Resource Access entities.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-androidfotaservice-devicemanagement-get.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-androidfotaservice-devicemanagement-update.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|zebraFotaConnector|[zebraFotaConnector](../resources/intune-androidfotaservice-zebrafotaconnector.md)|The singleton ZebraFotaConnector associated with account.|
|zebraFotaArtifacts|[zebraFotaArtifact](../resources/intune-androidfotaservice-zebrafotaartifact.md) collection|The Collection of ZebraFotaArtifacts.|
|zebraFotaDeployments|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) collection|Collection of ZebraFotaDeployments associated with account.|
|reports|[deviceManagementReports](../resources/intune-androidfotaservice-devicemanagementreports.md)|Reports singleton|

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
  "@odata.type": "#microsoft.graph.deviceManagement"
}
```