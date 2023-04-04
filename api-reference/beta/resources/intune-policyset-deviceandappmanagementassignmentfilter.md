---
title: "deviceAndAppManagementAssignmentFilter resource type"
description: "A class containing the properties used for Assignment Filter."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceAndAppManagementAssignmentFilter resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for Assignment Filter.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementAssignmentFilters](../api/intune-policyset-deviceandappmanagementassignmentfilter-list.md)|[deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) collection|List properties and relationships of the [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) objects.|
|[Get deviceAndAppManagementAssignmentFilter](../api/intune-policyset-deviceandappmanagementassignmentfilter-get.md)|[deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|Read properties and relationships of the [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) object.|
|[Create deviceAndAppManagementAssignmentFilter](../api/intune-policyset-deviceandappmanagementassignmentfilter-create.md)|[deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|Create a new [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) object.|
|[Delete deviceAndAppManagementAssignmentFilter](../api/intune-policyset-deviceandappmanagementassignmentfilter-delete.md)|None|Deletes a [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md).|
|[Update deviceAndAppManagementAssignmentFilter](../api/intune-policyset-deviceandappmanagementassignmentfilter-update.md)|[deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|Update the properties of a [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) object.|
|[validateFilter action](../api/intune-policyset-deviceandappmanagementassignmentfilter-validatefilter.md)|[assignmentFilterValidationResult](../resources/intune-policyset-assignmentfiltervalidationresult.md)|Not yet documented|
|[enable action](../api/intune-policyset-deviceandappmanagementassignmentfilter-enable.md)|None|Not yet documented|
|[getState function](../api/intune-policyset-deviceandappmanagementassignmentfilter-getstate.md)|[assignmentFilterState](../resources/intune-policyset-assignmentfilterstate.md)|Not yet documented|
|[getPlatformSupportedProperties function](../api/intune-policyset-deviceandappmanagementassignmentfilter-getplatformsupportedproperties.md)|[assignmentFilterSupportedProperty](../resources/intune-policyset-assignmentfiltersupportedproperty.md) collection|Not yet documented|
|[getSupportedProperties function](../api/intune-policyset-deviceandappmanagementassignmentfilter-getsupportedproperties.md)|[assignmentFilterSupportedProperty](../resources/intune-policyset-assignmentfiltersupportedproperty.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the Assignment Filter.|
|createdDateTime|DateTimeOffset|Creation time of the Assignment Filter.|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the Assignment Filter.|
|displayName|String|DisplayName of the Assignment Filter.|
|description|String|Description of the Assignment Filter.|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Platform type of the devices on which the Assignment Filter will be applicable. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`.|
|rule|String|Rule definition of the Assignment Filter.|
|roleScopeTags|String collection|RoleScopeTags of the Assignment Filter.|
|payloads|[payloadByFilter](../resources/intune-policyset-payloadbyfilter.md) collection|Associated assignments for a specific filter|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignmentFilter",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "platform": "String",
  "rule": "String",
  "roleScopeTags": [
    "String"
  ],
  "payloads": [
    {
      "@odata.type": "microsoft.graph.payloadByFilter",
      "payloadId": "String",
      "payloadType": "String",
      "groupId": "String",
      "assignmentFilterType": "String"
    }
  ]
}
```
