# managedDeviceMobileAppConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An abstract class for Mobile app configuration for enrolled devices.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDeviceMobileAppConfigurations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfiguration_list.md)|[managedDeviceMobileAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfiguration.md) collection|List properties and relationships of the [managedDeviceMobileAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfiguration.md) objects.|
|[Get managedDeviceMobileAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfiguration_get.md)|[managedDeviceMobileAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfiguration.md)|Read properties and relationships of the [managedDeviceMobileAppConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfiguration.md) object.|
|[assign action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfiguration_assign.md)|None|Not yet documented|
|[List mdmAppConfigGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mdmappconfiggroupassignment_list.md)|[mdmAppConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mdmappconfiggroupassignment.md) collection|List properties and relationships of the [mdmAppConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mdmappconfiggroupassignment.md) objects.|
|[List managedDeviceMobileAppConfigurationDeviceStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfigurationdevicestatus_list.md)|[managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) objects.|
|[List managedDeviceMobileAppConfigurationUserStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfigurationuserstatus_list.md)|[managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) objects.|
|[Get managedDeviceMobileAppConfigurationDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfigurationdevicesummary_get.md)|[managedDeviceMobileAppConfigurationDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md) object.|
|[Get managedDeviceMobileAppConfigurationUserSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfigurationusersummary_get.md)|[managedDeviceMobileAppConfigurationUserSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationUserSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|targetedMobileApps|String collection|the associated app.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[mdmAppConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mdmappconfiggroupassignment.md) collection|the associated group assignments.|
|deviceStatuses|[managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|List of ManagedDeviceMobileAppConfigurationDeviceStatus.|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|List of ManagedDeviceMobileAppConfigurationUserStatus.|
|deviceStatusSummary|[managedDeviceMobileAppConfigurationDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)|App configuration device status summary.|
|userStatusSummary|[managedDeviceMobileAppConfigurationUserSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)|App configuration user status summary.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfiguration",
  "id": "String (identifier)",
  "targetedMobileApps": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```



