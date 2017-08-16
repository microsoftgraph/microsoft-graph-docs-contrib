# deviceAppManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_deviceappmanagement_get.md)|[deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_deviceappmanagement.md) object.|
|[Update deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_deviceappmanagement_update.md)|[deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_deviceappmanagement.md)|Update the properties of a [deviceAppManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_deviceappmanagement.md) object.|
|[Get windowsManagementApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_windowsmanagementapp_get.md)|[windowsManagementApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapp.md)|Read properties and relationships of the [windowsManagementApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapp.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|windowsManagementApp|[windowsManagementApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapp.md)|Windows management app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```



