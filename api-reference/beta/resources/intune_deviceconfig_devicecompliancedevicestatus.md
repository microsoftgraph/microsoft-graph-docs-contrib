# deviceComplianceDeviceStatus resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

**TODO: Documentation is missing please add the `\[ODataDescription()\]` and/or `\[ODataLongDescription()\]` attributes.**
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceDeviceStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancedevicestatus_list.md)|[deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md) collection|List properties and relationships of the [deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md) objects.|
|[Get deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancedevicestatus_get.md)|[deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md)|Read properties and relationships of the [deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md) object.|
|[Create deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancedevicestatus_create.md)|[deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md)|Create a new [deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md) object.|
|[Delete deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancedevicestatus_delete.md)|None|Deletes a [deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md).|
|[Update deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_deviceconfig_devicecompliancedevicestatus_update.md)|[deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md)|Update the properties of a [deviceComplianceDeviceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_deviceconfig_devicecompliancedevicestatus.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|deviceDisplayName|String|Device name of the DevicePolicyStatus.|
|userName|String|The User Name that is being reported|
|deviceModel|String|The device model that is being reported|
|platform|Int32|Not yet documented|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|
|status|String|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|
|userPrincipalName|String|UserPrincipalName.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceDeviceStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceDeviceStatus",
  "id": "String (identifier)",
  "deviceDisplayName": "String",
  "userName": "String",
  "deviceModel": "String",
  "platform": 1024,
  "complianceGracePeriodExpirationDateTime": "String (timestamp)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)",
  "userPrincipalName": "String"
}
```



