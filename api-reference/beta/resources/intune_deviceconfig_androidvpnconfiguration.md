# androidVpnConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

By providing the configurations in this profile you can instruct the Android device to connect to desired VPN endpoint. By specifying the authentication method and security types expected by VPN endpoint you can make the VPN connection seamless for end user.

Inherits from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidVpnConfigurations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_androidvpnconfiguration_list.md)|[androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md) collection|List properties and relationships of the [androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md) objects.|
|[Get androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_androidvpnconfiguration_get.md)|[androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md)|Read properties and relationships of the [androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md) object.|
|[Create androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_androidvpnconfiguration_create.md)|[androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md)|Create a new [androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md) object.|
|[Delete androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_androidvpnconfiguration_delete.md)|None|Deletes a [androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md).|
|[Update androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_androidvpnconfiguration_update.md)|[androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md)|Update the properties of a [androidVpnConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidvpnconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationgroupassignment_list.md)|[deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|List properties and relationships of the [deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) objects.|
|[List deviceConfigurationDeviceStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationdevicestatus_list.md)|[deviceConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|List properties and relationships of the [deviceConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) objects.|
|[List deviceConfigurationUserStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationuserstatus_list.md)|[deviceConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|List properties and relationships of the [deviceConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationuserstatus.md) objects.|
|[Get deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationdeviceoverview_get.md)|[deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Read properties and relationships of the [deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object.|
|[Get deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_deviceconfigurationuseroverview_get.md)|[deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Read properties and relationships of the [deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) object.|
|[List settingStateDeviceSummaries](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_settingstatedevicesummary_list.md)|[settingStateDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_settingstatedevicesummary.md) collection|List properties and relationships of the [settingStateDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_settingstatedevicesummary.md) objects.|
|[Get androidCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_androidcertificateprofilebase_get.md)|[androidCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidcertificateprofilebase.md)|Read properties and relationships of the [androidCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidcertificateprofilebase.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|assignmentStatus|String|Read-only. DateTime the object was last modified. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|assignmentProgress|String|Read-only. DateTime the object was last modified. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|assignmentErrorMessage|String|Read-only. DateTime the object was last modified. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|connectionName|String|Connection name displayed to the user.|
|connectionType|String|Connection type. Possible values are: `ciscoAnyConnect`, `pulseSecure`, `f5EdgeClient`, `dellSonicWallMobileConnect`, `checkPointCapsuleVpn`, `citrix`.|
|role|String|Role when connection type is set to Pulse Secure.|
|realm|String|Realm when connection type is set to Pulse Secure.|
|servers|[vpnServer](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_vpnserver.md) collection|List of VPN Servers on the network. Make sure end users can access these network locations. This collection can contain a maximum of 500 elements.|
|fingerprint|String|Fingerprint is a string that will be used to verify the VPN server can be trusted, which is only applicable when connection type is Check Point Capsule VPN.|
|customData|[keyValue](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_keyvalue.md) collection|Custom data when connection type is set to Citrix. This collection can contain a maximum of 25 elements.|
|authenticationMethod|String|Authentication method. Possible values are: `certificate`, `usernameAndPassword`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_deviceconfiguration.md)|
|identityCertificate|[androidCertificateProfileBase](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_androidcertificateprofilebase.md)|Identity certificate for client authentication when authentication method is certificate.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidVpnConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidVpnConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "assignmentStatus": "String",
  "assignmentProgress": "String",
  "assignmentErrorMessage": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "connectionName": "String",
  "connectionType": "String",
  "role": "String",
  "realm": "String",
  "servers": [
    {
      "@odata.type": "microsoft.graph.vpnServer",
      "description": "String",
      "ipAddressOrFqdn": "String",
      "address": "String",
      "isDefaultServer": true
    }
  ],
  "fingerprint": "String",
  "customData": [
    {
      "@odata.type": "microsoft.graph.keyValue",
      "key": "String",
      "value": "String"
    }
  ],
  "authenticationMethod": "String"
}
```



