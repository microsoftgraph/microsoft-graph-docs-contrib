# managedDevice resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Devices that are managed or pre-enrolled through Intune
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDevices](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_manageddevice_list.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_manageddevice.md) collection|List properties and relationships of the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_manageddevice.md) objects.|
|[Get managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_manageddevice_get.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_manageddevice.md)|Read properties and relationships of the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_manageddevice.md) object.|
|[Update managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_manageddevice_update.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_manageddevice.md)|Update the properties of a [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_manageddevice.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "String (identifier)"
}
```



