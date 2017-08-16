# deviceComplianceSettingState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device compliance setting State for a given device.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceSettingStates](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancesettingstate_list.md)|[deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md) collection|List properties and relationships of the [deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md) objects.|
|[Get deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancesettingstate_get.md)|[deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md)|Read properties and relationships of the [deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md) object.|
|[Create deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancesettingstate_create.md)|[deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md)|Create a new [deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md) object.|
|[Delete deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancesettingstate_delete.md)|None|Deletes a [deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md).|
|[Update deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancesettingstate_update.md)|[deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md)|Update the properties of a [deviceComplianceSettingState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancesettingstate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity|
|platformType|String|Device platform type Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `windowsBlue`, `windowsPhoneBlue`, `blackberry`, `palm`, `fakeDevice`, `unknown`.|
|setting|String|The setting class name and property name.|
|settingName|String|The Setting Name that is being reported|
|deviceId|String|The Device Id that is being reported|
|deviceName|String|The Device Name that is being reported|
|userId|String|The user Id that is being reported|
|userEmail|String|The User email address that is being reported|
|userName|String|The User Name that is being reported|
|userPrincipalName|String|The User PrincipalName that is being reported|
|deviceModel|String|The device model that is being reported|
|state|String|The compliance state of the setting Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceSettingState"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceSettingState",
  "id": "String (identifier)",
  "platformType": "String",
  "setting": "String",
  "settingName": "String",
  "deviceId": "String",
  "deviceName": "String",
  "userId": "String",
  "userEmail": "String",
  "userName": "String",
  "userPrincipalName": "String",
  "deviceModel": "String",
  "state": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)"
}
```



