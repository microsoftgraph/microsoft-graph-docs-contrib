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
|createdDateTime|DateTimeOffset|The creation time of the assignment filter. The value cannot be modified and is automatically populated during new assignment filter process. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the Assignment Filter. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'|
|displayName|String|The name of the Assignment Filter.|
|description|String|Optional description of the Assignment Filter.|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Indicates filter is applied to which flatform. Possible values are android,androidForWork,iOS,macOS,windowsPhone81,windows81AndLater,windows10AndLater,androidWorkProfile, unknown, androidAOSP,androidMobileApplicationManagement, iOSMobileApplicationManagement. Default filter will be applied to 'unknown'. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|rule|String|Rule definition of the assignment filter.|
|roleScopeTags|String collection|Indicates role scope tags assigned for the assignment filter.|
|payloads|[payloadByFilter](../resources/intune-policyset-payloadbyfilter.md) collection|Indicates associated assignments for a specific filter.|
|assignmentFilterManagementType|[assignmentFilterManagementType](../resources/intune-policyset-assignmentfiltermanagementtype.md)|Indicates filter is applied to either 'devices' or 'apps' management type. Possible values are devices, apps. Default filter will be applied to 'devices'. Possible values are: `devices`, `apps`, `unknownFutureValue`.|

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
  ],
  "assignmentFilterManagementType": "String"
}
```
