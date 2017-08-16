# managedAndroidStoreApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for Android store apps that you can manage with an Intune app protection policy.

Inherits from [managedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedapp.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedAndroidStoreApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_managedandroidstoreapp_list.md)|[managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md) collection|List properties and relationships of the [managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md) objects.|
|[Get managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_managedandroidstoreapp_get.md)|[managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md)|Read properties and relationships of the [managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md) object.|
|[Create managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_managedandroidstoreapp_create.md)|[managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md)|Create a new [managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md) object.|
|[Delete managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_managedandroidstoreapp_delete.md)|None|Deletes a [managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md).|
|[Update managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_managedandroidstoreapp_update.md)|[managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md)|Update the properties of a [managedAndroidStoreApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedandroidstoreapp.md) object.|
|[List mobileAppCategories](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcategory_list.md)|[mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) collection|List properties and relationships of the [mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) objects.|
|[List mobileAppGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappgroupassignment_list.md)|[mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) collection|List properties and relationships of the [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) objects.|
|[Get mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappinstallsummary_get.md)|[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md)|Read properties and relationships of the [mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md) object.|
|[List mobileAppInstallStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappinstallstatus_list.md)|[mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) objects.|
|[List userAppInstallStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_userappinstallstatus_list.md)|[userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) collection|List properties and relationships of the [userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|largeIcon|[mimeContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|uploadState|Int32|The upload state. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|appAvailability|String|The Application's availability. Inherited from [managedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedapp.md) Possible values are: `global`, `lineOfBusiness`.|
|version|String|The Application's version. Inherited from [managedApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_managedapp.md)|
|packageId|String|The app's package ID.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|groupAssignments|[mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|installSummary|[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|deviceStatuses|[mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|userStatuses|[userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAndroidStoreApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAndroidStoreApp",
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
  "uploadState": 1024,
  "appAvailability": "String",
  "version": "String",
  "packageId": "String"
}
```



