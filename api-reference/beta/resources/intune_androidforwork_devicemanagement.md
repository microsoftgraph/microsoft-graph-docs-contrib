# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for Android for Work settings functionality under device management.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_devicemanagement.md) object.|
|[Get androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworksettings_get.md)|[androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworksettings.md)|Read properties and relationships of the [androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworksettings.md) object.|
|[List androidForWorkAppConfigurationSchemas](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_list.md)|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|List properties and relationships of the [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) objects.|
|[Create androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_create.md)|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md)|Create a new [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|androidForWorkSettings|[androidForWorkSettings](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|

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



