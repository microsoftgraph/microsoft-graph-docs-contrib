---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device and app management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device and app management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-policyset-devicemanagement-get.md)|[deviceManagement](../resources/intune-policyset-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-policyset-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-policyset-devicemanagement-update.md)|[deviceManagement](../resources/intune-policyset-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-policyset-devicemanagement.md) object.|
|[getAssignmentFiltersStatusDetails action](../api/intune-policyset-devicemanagement-getassignmentfiltersstatusdetails.md)|[assignmentFilterStatusDetails](../resources/intune-policyset-assignmentfilterstatusdetails.md)||
|[evaluateAssignmentFilter action](../api/intune-policyset-devicemanagement-evaluateassignmentfilter.md)|Stream||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignmentFilters|[deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) collection|The list of assignment filters|

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
