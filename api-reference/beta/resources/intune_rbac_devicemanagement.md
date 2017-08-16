# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_devicemanagement.md) object.|
|[getEffectivePermissions function](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_devicemanagement_geteffectivepermissions.md)|String collection|Not yet documented|
|[List roleDefinitions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_roledefinition_list.md)|[roleDefinition](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roledefinition.md) collection|List properties and relationships of the [roleDefinition](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roledefinition.md) objects.|
|[Create roleDefinition](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_roledefinition_create.md)|[roleDefinition](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roledefinition.md)|Create a new [roleDefinition](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roledefinition.md) object.|
|[List roleAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_roleassignment_list.md)|[roleAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roleassignment.md) collection|List properties and relationships of the [roleAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roleassignment.md) objects.|
|[Create roleAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_roleassignment_create.md)|[roleAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roleassignment.md)|Create a new [roleAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roleassignment.md) object.|
|[List resourceOperations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_list.md)|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) collection|List properties and relationships of the [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) objects.|
|[Create resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_create.md)|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md)|Create a new [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|roleDefinitions|[roleDefinition](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roledefinition.md) collection|The Role Definitions.|
|roleAssignments|[roleAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_roleassignment.md) collection|The Role Assignments.|
|resourceOperations|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) collection|The Resource Operations.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



