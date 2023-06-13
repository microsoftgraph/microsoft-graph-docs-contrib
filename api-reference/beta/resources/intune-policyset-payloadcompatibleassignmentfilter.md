---
title: "payloadCompatibleAssignmentFilter resource type"
description: "A class containing the properties used for Payload Compatible Assignment Filter."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# payloadCompatibleAssignmentFilter resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for Payload Compatible Assignment Filter.


Inherits from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List payloadCompatibleAssignmentFilters](../api/intune-policyset-payloadcompatibleassignmentfilter-list.md)|[payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md) collection|List properties and relationships of the [payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md) objects.|
|[Get payloadCompatibleAssignmentFilter](../api/intune-policyset-payloadcompatibleassignmentfilter-get.md)|[payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md)|Read properties and relationships of the [payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md) object.|
|[Create payloadCompatibleAssignmentFilter](../api/intune-policyset-payloadcompatibleassignmentfilter-create.md)|[payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md)|Create a new [payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md) object.|
|[Delete payloadCompatibleAssignmentFilter](../api/intune-policyset-payloadcompatibleassignmentfilter-delete.md)|None|Deletes a [payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md).|
|[Update payloadCompatibleAssignmentFilter](../api/intune-policyset-payloadcompatibleassignmentfilter-update.md)|[payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md)|Update the properties of a [payloadCompatibleAssignmentFilter](../resources/intune-policyset-payloadcompatibleassignmentfilter.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|createdDateTime|DateTimeOffset|The creation time of the assignment filter. The value cannot be modified and is automatically populated during new assignment filter process. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the Assignment Filter. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z' Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|displayName|String|The name of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|description|String|Optional description of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Indicates filter is applied to which flatform. Possible values are android,androidForWork,iOS,macOS,windowsPhone81,windows81AndLater,windows10AndLater,androidWorkProfile, unknown, androidAOSP,androidMobileApplicationManagement, iOSMobileApplicationManagement. Default filter will be applied to 'unknown'. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md). Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|rule|String|Rule definition of the assignment filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|roleScopeTags|String collection|Indicates role scope tags assigned for the assignment filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|payloads|[payloadByFilter](../resources/intune-policyset-payloadbyfilter.md) collection|Indicates associated assignments for a specific filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|assignmentFilterManagementType|[assignmentFilterManagementType](../resources/intune-policyset-assignmentfiltermanagementtype.md)|Indicates filter is applied to either 'devices' or 'apps' management type. Possible values are devices, apps. Default filter will be applied to 'devices' Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md). Possible values are: `devices`, `apps`, `unknownFutureValue`.|
|payloadType|[assignmentFilterPayloadType](../resources/intune-policyset-assignmentfilterpayloadtype.md)|PayloadType of the Assignment Filter. Possible values are: `notSet`, `enrollmentRestrictions`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.payloadCompatibleAssignmentFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.payloadCompatibleAssignmentFilter",
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
  "assignmentFilterManagementType": "String",
  "payloadType": "String"
}
```
