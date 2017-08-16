# windowsManagementAppHealthSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the health summary of the Windows management app.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get windowsManagementAppHealthSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_windowsmanagementapphealthsummary_get.md)|[windowsManagementAppHealthSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapphealthsummary.md)|Read properties and relationships of the [windowsManagementAppHealthSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapphealthsummary.md) object.|
|[Update windowsManagementAppHealthSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_devices_windowsmanagementapphealthsummary_update.md)|[windowsManagementAppHealthSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapphealthsummary.md)|Update the properties of a [windowsManagementAppHealthSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_devices_windowsmanagementapphealthsummary.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the Windows management app health summary entity.|
|healthyDeviceCount|Int32|Healthy device count.|
|unhealthyDeviceCount|Int32|Unhealthy device count.|
|unknownDeviceCount|Int32|Unknown device count.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagementAppHealthSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsManagementAppHealthSummary",
  "id": "String (identifier)",
  "healthyDeviceCount": 1024,
  "unhealthyDeviceCount": 1024,
  "unknownDeviceCount": 1024
}
```



