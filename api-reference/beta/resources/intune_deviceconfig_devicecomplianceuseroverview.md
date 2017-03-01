# deviceComplianceUserOverview resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceComplianceUserOverview](../api/intune_deviceconfig_devicecomplianceuseroverview_get.md)|[deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md)|Read properties and relationships of the [deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md) object.|
|[Update deviceComplianceUserOverview](../api/intune_deviceconfig_devicecomplianceuseroverview_update.md)|[deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md)|Update the properties of a [deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|numberOfPendingUsers|Int32|Number of pending Users|
|numberOfSucceededUsers|Int32|Number of succeeded Users|
|numberOfErrorUsers|Int32|Number of error Users|
|numberOfFailedUsers|Int32|Number of failed Users|
|lastUpdateTime|DateTimeOffset|Last update time|
|policyRevision|Int32|Version of the policy for that overview|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceUserOverview"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceUserOverview",
  "id": "String (identifier)",
  "numberOfPendingUsers": 1024,
  "numberOfSucceededUsers": 1024,
  "numberOfErrorUsers": 1024,
  "numberOfFailedUsers": 1024,
  "lastUpdateTime": "String (timestamp)",
  "policyRevision": 1024
}
```



