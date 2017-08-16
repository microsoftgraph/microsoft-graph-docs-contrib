# userInstallStateSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the installation state summary for a user.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List userInstallStateSummaries](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_userinstallstatesummary_list.md)|[userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) collection|List properties and relationships of the [userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) objects.|
|[Get userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_userinstallstatesummary_get.md)|[userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md)|Read properties and relationships of the [userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) object.|
|[Create userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_userinstallstatesummary_create.md)|[userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md)|Create a new [userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) object.|
|[Delete userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_userinstallstatesummary_delete.md)|None|Deletes a [userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md).|
|[Update userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_userinstallstatesummary_update.md)|[userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md)|Update the properties of a [userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) object.|
|[List deviceInstallStates](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_deviceinstallstate_list.md)|[deviceInstallState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_deviceinstallstate.md) collection|List properties and relationships of the [deviceInstallState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_deviceinstallstate.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|userName|String|User name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceStates|[deviceInstallState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_deviceinstallstate.md) collection|The install state of the eBook.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userInstallStateSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.userInstallStateSummary",
  "id": "String (identifier)",
  "userName": "String",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024
}
```



