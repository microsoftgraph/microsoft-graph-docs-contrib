# iosLobAppProvisioningConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This topic provides descriptions of the declared methods, properties and relationships exposed by the IOS Lob App Provisioning Configuration resource.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosLobAppProvisioningConfigurations](../api/intune_apps_ioslobappprovisioningconfiguration_list.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|List properties and relationships of the [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) objects.|
|[Get iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_get.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Read properties and relationships of the [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Create iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_create.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Create a new [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Delete iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_delete.md)|None|Deletes a [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md).|
|[Update iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_update.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Update the properties of a [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[assign action](../api/intune_apps_ioslobappprovisioningconfiguration_assign.md)|None|Not yet documented|
|[List appProvisioningConfigGroupAssignments](../api/intune_apps_ioslobappprovisioningconfiguration_list_appprovisioningconfiggroupassignment.md)|[appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) collection|Get the appProvisioningConfigGroupAssignments from the groupAssignments navigation property.|
|[List managedDeviceMobileAppProvisioningConfigurationDeviceStatuses](../api/intune_apps_ioslobappprovisioningconfiguration_list_manageddevicemobileappprovisioningconfigurationdevicestatus.md)|[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) collection|Get the managedDeviceMobileAppProvisioningConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List managedDeviceMobileAppConfigurationUserStatuses](../api/intune_apps_ioslobappprovisioningconfiguration_list_manageddevicemobileappconfigurationuserstatus.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|Get the managedDeviceMobileAppConfigurationUserStatuses from the userStatuses navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|expiration|DateTimeOffset|Optional profile expiration date ime.|
|payloadFileName|String|Payload file name (*.mobileprovision | *.xml).|
|payload|Binary|Payload. (UTF8 encoded byte array)|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[appProvisioningConfigGroupAssignment](../resources/intune_apps_appprovisioningconfiggroupassignment.md) collection|The associated group assignments.|
|deviceStatuses|[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) collection|List of ManagedDeviceMobileAppProvisioningConfigurationDeviceStatus.|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|List of ManagedDeviceMobileAppConfigurationUserStatus.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosLobAppProvisioningConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosLobAppProvisioningConfiguration",
  "id": "String (identifier)",
  "expiration": "String (timestamp)",
  "payloadFileName": "String",
  "payload": "binary",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```



