# deviceConfigurationGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device configuration group assignment.

Inherits from [deviceConfigurationAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationassignment.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationgroupassignment_list.md)|[deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|List properties and relationships of the [deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) objects.|
|[Get deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationgroupassignment_get.md)|[deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md)|Read properties and relationships of the [deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.|
|[Create deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationgroupassignment_create.md)|[deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md)|Create a new [deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.|
|[Delete deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationgroupassignment_delete.md)|None|Deletes a [deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md).|
|[Update deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationgroupassignment_update.md)|[deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md)|Update the properties of a [deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.|
|[Get deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfiguration_get.md)|[deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|Read properties and relationships of the [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationassignment.md)|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|
|excludeGroup|Boolean|Indicates if this group is should be excluded. Defaults that the group should be included|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfiguration|[deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|The navigation link to the Device Configuration being targeted. Inherited from [deviceConfigurationAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationassignment.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String",
  "excludeGroup": true
}
```



