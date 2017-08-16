# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagement.md) object.|
|[List remoteActionAudits](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_remoteactionaudit_list.md)|[remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_remoteactionaudit.md) collection|List properties and relationships of the [remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_remoteactionaudit.md) objects.|
|[Create remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_remoteactionaudit_create.md)|[remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_remoteactionaudit.md)|Create a new [remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_remoteactionaudit.md) object.|
|[Get applePushNotificationCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_applepushnotificationcertificate_get.md)|[applePushNotificationCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_applepushnotificationcertificate.md)|Read properties and relationships of the [applePushNotificationCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_applepushnotificationcertificate.md) object.|
|[List deviceManagementScripts](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_devicemanagementscript_list.md)|[deviceManagementScript](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagementscript.md) collection|List properties and relationships of the [deviceManagementScript](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagementscript.md) objects.|
|[Create deviceManagementScript](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_devicemanagementscript_create.md)|[deviceManagementScript](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagementscript.md)|Create a new [deviceManagementScript](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagementscript.md) object.|
|[Get managedDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_manageddeviceoverview_get.md)|[managedDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddeviceoverview.md)|Read properties and relationships of the [managedDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddeviceoverview.md) object.|
|[List detectedApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_detectedapp_list.md)|[detectedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_detectedapp.md) collection|List properties and relationships of the [detectedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_detectedapp.md) objects.|
|[Create detectedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_detectedapp_create.md)|[detectedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_detectedapp.md)|Create a new [detectedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_detectedapp.md) object.|
|[List managedDevices](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_manageddevice_list.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddevice.md) collection|List properties and relationships of the [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddevice.md) objects.|
|[Create managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_manageddevice_create.md)|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddevice.md)|Create a new [managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddevice.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the device|
|subscriptionState|String|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|subscriptions|String|Tenant's Subscription. Possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|remoteActionAudits|[remoteActionAudit](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|applePushNotificationCertificate|[applePushNotificationCertificate](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_applepushnotificationcertificate.md)|Apple push notification certificate.|
|deviceManagementScripts|[deviceManagementScript](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|managedDeviceOverview|[managedDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddeviceoverview.md)|Device overview|
|detectedApps|[detectedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_detectedapp.md) collection|The list of detected apps associated with a device.|
|managedDevices|[managedDevice](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_manageddevice.md) collection|The list of managed devices.|

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
  "id": "String (identifier)",
  "subscriptionState": "String",
  "subscriptions": "String"
}
```



