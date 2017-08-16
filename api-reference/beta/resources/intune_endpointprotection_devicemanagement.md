# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_devicemanagement.md) object.|
|[List windowsMalwareInformations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_windowsmalwareinformation_list.md)|[windowsMalwareInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_windowsmalwareinformation.md) collection|List properties and relationships of the [windowsMalwareInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_windowsmalwareinformation.md) objects.|
|[Create windowsMalwareInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_endpointprotection_windowsmalwareinformation_create.md)|[windowsMalwareInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_windowsmalwareinformation.md)|Create a new [windowsMalwareInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_windowsmalwareinformation.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|windowsMalwareInformation|[windowsMalwareInformation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_endpointprotection_windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|

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



