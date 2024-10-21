---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
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
|[Get deviceManagement](../api/intune-multidevicepivotservice-devicemanagement-get.md)|[deviceManagement](../resources/intune-multidevicepivotservice-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-multidevicepivotservice-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-multidevicepivotservice-devicemanagement-update.md)|[deviceManagement](../resources/intune-multidevicepivotservice-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-multidevicepivotservice-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceInventoryEntities|[deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) collection|The collection of entities in the Inventory Catalog, such as BitLocker, CPU, or disk data. Data for an entity is collected from managed devices who are compliant with an Inventory Policy that configures that entity.|
|deviceInventoryQueryRequests|[deviceInventoryQueryRequest](../resources/intune-multidevicepivotservice-deviceinventoryqueryrequest.md) collection|Represents a KQL-style query request that was submitted from Intune Pivot Multi-Device, including metadata about the query request, processing status, and error message (if applicable).|

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
