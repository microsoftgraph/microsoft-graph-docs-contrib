# windowsInformationProtectionAppLearningSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection AppLearning Summary entity.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsInformationProtectionAppLearningSummaries](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_list.md)|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) collection|List properties and relationships of the [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) objects.|
|[Get windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_get.md)|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)|Read properties and relationships of the [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) object.|
|[Create windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_create.md)|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)|Create a new [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) object.|
|[Delete windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_delete.md)|None|Deletes a [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md).|
|[Update windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_wip_windowsinformationprotectionapplearningsummary_update.md)|[windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)|Update the properties of a [windowsInformationProtectionAppLearningSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_wip_windowsinformationprotectionapplearningsummary.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier for the WindowsInformationProtectionAppLearningSummary.|
|applicationName|String|Application Name|
|applicationType|String|Application Type Possible values are: `universal`, `desktop`.|
|deviceCount|Int32|Device Count|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionAppLearningSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppLearningSummary",
  "id": "String (identifier)",
  "applicationName": "String",
  "applicationType": "String",
  "deviceCount": 1024
}
```



