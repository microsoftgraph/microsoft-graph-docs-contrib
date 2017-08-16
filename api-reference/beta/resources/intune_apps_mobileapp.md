# mobileApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An abstract class containing the base properties for Intune mobile apps.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileapp_list.md)|[mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md) collection|List properties and relationships of the [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md) objects.|
|[Get mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileapp_get.md)|[mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|Read properties and relationships of the [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md) object.|
|[assign action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileapp_assign.md)|None|Not yet documented|
|[getMobileAppCount function](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileapp_getmobileappcount.md)|Int64|Not yet documented|
|[getTopMobileApps function](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileapp_gettopmobileapps.md)|[mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md) collection|Not yet documented|
|[List mobileAppCategories](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcategory_list.md)|[mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) collection|List properties and relationships of the [mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) objects.|
|[List mobileAppGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappgroupassignment_list.md)|[mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) collection|List properties and relationships of the [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) objects.|
|[Get mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappinstallsummary_get.md)|[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md)|Read properties and relationships of the [mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md) object.|
|[List mobileAppInstallStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappinstallstatus_list.md)|[mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) objects.|
|[List userAppInstallStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_userappinstallstatus_list.md)|[userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) collection|List properties and relationships of the [userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|displayName|String|The admin provided or imported title of the app.|
|description|String|The description of the app.|
|publisher|String|The publisher of the app.|
|largeIcon|[mimeContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon.|
|createdDateTime|DateTimeOffset|The date and time the app was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified.|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin.|
|privacyInformationUrl|String|The privacy statement Url.|
|informationUrl|String|The more information Url.|
|owner|String|The owner of the app.|
|developer|String|The developer of the app.|
|notes|String|Notes for the app.|
|uploadState|Int32|The upload state.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app.|
|groupAssignments|[mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) collection|The list of group assignments for this mobile app.|
|installSummary|[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary.|
|deviceStatuses|[mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app.|
|userStatuses|[userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileApp",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "isFeatured": true,
  "privacyInformationUrl": "String",
  "informationUrl": "String",
  "owner": "String",
  "developer": "String",
  "notes": "String",
  "uploadState": 1024
}
```



