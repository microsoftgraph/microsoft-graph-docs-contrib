# managedDevice resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Devices that are managed or pre-enrolled through Intune
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDevices](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_manageddevice_list.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_manageddevice.md) collection|List properties and relationships of the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_manageddevice.md) objects.|
|[Get managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_manageddevice_get.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_manageddevice.md)|Read properties and relationships of the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_manageddevice.md) object.|
|[List deviceConfigurationStates](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationstate_list.md)|[deviceConfigurationState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationstate.md) collection|List properties and relationships of the [deviceConfigurationState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationstate.md) objects.|
|[List deviceCompliancePolicyStates](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancepolicystate_list.md)|[deviceCompliancePolicyState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancepolicystate.md) collection|List properties and relationships of the [deviceCompliancePolicyState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancepolicystate.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfigurationStates|[deviceConfigurationState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationstate.md) collection|Device configuration states for this device.|
|deviceCompliancePolicyStates|[deviceCompliancePolicyState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancepolicystate.md) collection|Device compliance policy states for this device.|

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



