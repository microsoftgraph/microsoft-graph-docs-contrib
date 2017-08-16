# iosLobAppProvisioningConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This topic provides descriptions of the declared methods, properties and relationships exposed by the IOS Lob App Provisioning Configuration resource.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosLobAppProvisioningConfigurations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_ioslobappprovisioningconfiguration_list.md)|[iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|List properties and relationships of the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md) objects.|
|[Get iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_ioslobappprovisioningconfiguration_get.md)|[iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md)|Read properties and relationships of the [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Create iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_ioslobappprovisioningconfiguration_create.md)|[iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md)|Create a new [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Delete iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_ioslobappprovisioningconfiguration_delete.md)|None|Deletes a [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md).|
|[Update iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_ioslobappprovisioningconfiguration_update.md)|[iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md)|Update the properties of a [iosLobAppProvisioningConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[assign action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_ioslobappprovisioningconfiguration_assign.md)|None|Not yet documented|
|[List mobileAppProvisioningConfigGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappprovisioningconfiggroupassignment_list.md)|[mobileAppProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) collection|List properties and relationships of the [mobileAppProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) objects.|
|[List managedDeviceMobileAppConfigurationDeviceStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfigurationdevicestatus_list.md)|[managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) objects.|
|[List managedDeviceMobileAppConfigurationUserStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_manageddevicemobileappconfigurationuserstatus_list.md)|[managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|expirationDateTime|DateTimeOffset|Optional profile expiration date and time.|
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
|groupAssignments|[mobileAppProvisioningConfigGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) collection|The associated group assignments.|
|deviceStatuses|[managedDeviceMobileAppConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|The list of device installation states for this mobile app configuration.|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|The list of user installation states for this mobile app configuration.|

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
  "expirationDateTime": "String (timestamp)",
  "payloadFileName": "String",
  "payload": "binary",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```



