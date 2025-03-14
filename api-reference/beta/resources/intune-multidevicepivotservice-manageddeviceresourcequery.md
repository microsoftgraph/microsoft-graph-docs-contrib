---
title: "managedDeviceResourceQuery resource type"
description: "Singleton entity that acts as a container for all resource graph query functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedDeviceResourceQuery resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all resource graph query functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get managedDeviceResourceQuery](../api/intune-multidevicepivotservice-manageddeviceresourcequery-get.md)|[managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md)|Read properties and relationships of the [managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md) object.|
|[Update managedDeviceResourceQuery](../api/intune-multidevicepivotservice-manageddeviceresourcequery-update.md)|[managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md)|Update the properties of a [managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md) object.|
|[initiateQuery action](../api/intune-multidevicepivotservice-manageddeviceresourcequery-initiatequery.md)|[managedDeviceResourceQueryResponse](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryresponse.md)||
|[retrieveQueryStatus function](../api/intune-multidevicepivotservice-manageddeviceresourcequery-retrievequerystatus.md)|[managedDeviceResourceQueryResponse](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryresponse.md)||
|[retrieveQueryResult action](../api/intune-multidevicepivotservice-manageddeviceresourcequery-retrievequeryresult.md)|[managedDeviceResourceQueryResult](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryresult.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceResourceQuery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceResourceQuery"
}
```
