---
title: "payloadCompatibleAssignmentFilter resource type"
description: "A class containing the properties used for Payload Compatible Assignment Filter."
author: "dougeby"
ms.localizationpriority: medium
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
|createdDateTime|DateTimeOffset|Creation time of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|displayName|String|DisplayName of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|description|String|Description of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Platform type of the devices on which the Assignment Filter will be applicable. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md). Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`.|
|rule|String|Rule definition of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
|roleScopeTags|String collection|RoleScopeTags of the Assignment Filter. Inherited from [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md)|
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
  "payloadType": "String"
}
```



