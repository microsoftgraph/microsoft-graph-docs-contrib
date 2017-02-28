# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_devices_devicemanagement_get.md)|[deviceManagement](../resources/intune_devices_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_devices_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_devices_devicemanagement_update.md)|[deviceManagement](../resources/intune_devices_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_devices_devicemanagement.md) object.|
|[List remoteActionAudits](../api/intune_devices_devicemanagement_list_remoteactionaudit.md)|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) collection|Get the remoteActionAudits from the remoteActionAudits navigation property.|
|[Create remoteActionAudit](../api/intune_devices_devicemanagement_create_remoteactionaudit.md)|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md)|Create a new [remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) by posting to the remoteActionAudits collection.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|remoteActionAudits|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|

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



