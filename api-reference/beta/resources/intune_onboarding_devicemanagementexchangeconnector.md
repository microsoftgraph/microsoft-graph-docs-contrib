# deviceManagementExchangeConnector resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Entity which represents a connection to an Exchange environment.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceManagementExchangeConnectors](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_list.md)|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|List properties and relationships of the [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) objects.|
|[Get deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_get.md)|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md)|Read properties and relationships of the [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[Create deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_create.md)|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md)|Create a new [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[Delete deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_delete.md)|None|Deletes a [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md).|
|[Update deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_update.md)|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md)|Update the properties of a [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[sync action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_sync.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|lastSyncDateTime|DateTimeOffset|Last sync time for the Exchange Connector|
|status|String|Exchange Connector Status Possible values are: `connectionPending`, `connected`, `disconnected`, `none`.|
|primarySmtpAddress|String|Email address used to configure the Service To Service Exchange Connector.|
|serverName|String|The name of the server hosting the Exchange Connector.|
|exchangeConnectorType|String|The type of Exchange Connector Configured. Possible values are: `onPremises`, `hosted`, `serviceToService`, `dedicated`.|
|version|String|The version of the ExchangeConnectorAgent|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementExchangeConnector"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementExchangeConnector",
  "id": "String (identifier)",
  "lastSyncDateTime": "String (timestamp)",
  "status": "String",
  "primarySmtpAddress": "String",
  "serverName": "String",
  "exchangeConnectorType": "String",
  "version": "String"
}
```



