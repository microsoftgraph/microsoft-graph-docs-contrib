# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagement.md) object.|
|[verifyWindowsEnrollmentAutoDiscovery function](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagement_verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|
|[List deviceCategories](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicecategory_list.md)|[deviceCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicecategory.md) collection|List properties and relationships of the [deviceCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicecategory.md) objects.|
|[Create deviceCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicecategory_create.md)|[deviceCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicecategory.md)|Create a new [deviceCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicecategory.md) object.|
|[List deviceManagementExchangeConnectors](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_list.md)|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|List properties and relationships of the [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) objects.|
|[Create deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeconnector_create.md)|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md)|Create a new [deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) object.|
|[Get deviceManagementExchangeOnPremisesPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_devicemanagementexchangeonpremisespolicy_get.md)|[deviceManagementExchangeOnPremisesPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|Read properties and relationships of the [deviceManagementExchangeOnPremisesPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md) object.|
|[List mobileThreatDefenseConnectors](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_mobilethreatdefenseconnector_list.md)|[mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_mobilethreatdefenseconnector.md) collection|List properties and relationships of the [mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_mobilethreatdefenseconnector.md) objects.|
|[Create mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_mobilethreatdefenseconnector_create.md)|[mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_mobilethreatdefenseconnector.md)|Create a new [mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_mobilethreatdefenseconnector.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|intuneBrand|[intuneBrand](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCategories|[deviceCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicecategory.md) collection|The list of device categories with the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|exchangeOnPremisesPolicy|[deviceManagementExchangeOnPremisesPolicy](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)|The policy which controls mobile device access to Exchange On Premises|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|

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
  "id": "String (identifier)",
  "intuneBrand": {
    "@odata.type": "microsoft.graph.intuneBrand",
    "displayName": "String",
    "contactITName": "String",
    "contactITPhoneNumber": "String",
    "contactITEmailAddress": "String",
    "contactITNotes": "String",
    "privacyUrl": "String",
    "onlineSupportSiteUrl": "String",
    "onlineSupportSiteName": "String",
    "themeColor": {
      "@odata.type": "microsoft.graph.rgbColor",
      "r": 1024,
      "g": 1024,
      "b": 1024
    },
    "showLogo": true,
    "lightBackgroundLogo": {
      "@odata.type": "microsoft.graph.mimeContent",
      "type": "String",
      "value": "binary"
    },
    "darkBackgroundLogo": {
      "@odata.type": "microsoft.graph.mimeContent",
      "type": "String",
      "value": "binary"
    },
    "showNameNextToLogo": true
  }
}
```



