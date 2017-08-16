# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_devicemanagement.md) object.|
|[List windowsInformationProtectionAppLearningSummaries](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_list.md)|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) collection|List properties and relationships of the [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) objects.|
|[Create windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_create.md)|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)|Create a new [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|windowsInformationProtectionAppLearningSummaries|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) collection|The windows information protection app learning summaries.|

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



