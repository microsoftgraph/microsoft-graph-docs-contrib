# iosVppApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for iOS Volume-Purchased Program (VPP) Apps.

Inherits from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosVppApps](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_iosvppapp_list.md)|[iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md) collection|List properties and relationships of the [iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md) objects.|
|[Get iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_iosvppapp_get.md)|[iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md)|Read properties and relationships of the [iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md) object.|
|[Create iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_iosvppapp_create.md)|[iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md)|Create a new [iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md) object.|
|[Delete iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_iosvppapp_delete.md)|None|Deletes a [iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md).|
|[Update iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_iosvppapp_update.md)|[iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md)|Update the properties of a [iosVppApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosvppapp.md) object.|
|[List mobileAppCategories](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcategory_list.md)|[mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) collection|List properties and relationships of the [mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) objects.|
|[List mobileAppGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappgroupassignment_list.md)|[mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) collection|List properties and relationships of the [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) objects.|
|[Get mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappinstallsummary_get.md)|[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md)|Read properties and relationships of the [mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md) object.|
|[List mobileAppInstallStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappinstallstatus_list.md)|[mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) objects.|
|[List userAppInstallStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_userappinstallstatus_list.md)|[userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) collection|List properties and relationships of the [userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) objects.|
|[Get appleVolumePurchaseProgramToken](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_applevolumepurchaseprogramtoken_get.md)|[appleVolumePurchaseProgramToken](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_applevolumepurchaseprogramtoken.md)|Read properties and relationships of the [appleVolumePurchaseProgramToken](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_applevolumepurchaseprogramtoken.md) object.|

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
|usedLicenseCount|Int32|The number of VPP licenses in use.|
|totalLicenseCount|Int32|The total number of VPP licenses.|
|releaseDateTime|DateTimeOffset|The VPP application release date and time.|
|appStoreUrl|String|The store URL.|
|licensingType|[vppLicensingType](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_vpplicensingtype.md)|The supported License Type.|
|applicableDeviceType|[iosDeviceType](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_iosdevicetype.md)|The applicable iOS Device Type.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|groupAssignments|[mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|installSummary|[mobileAppInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|deviceStatuses|[mobileAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|userStatuses|[userAppInstallStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|
|vppToken|[appleVolumePurchaseProgramToken](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_applevolumepurchaseprogramtoken.md)|The VPP token assigned to the app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosVppApp",
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
  "usedLicenseCount": 1024,
  "totalLicenseCount": 1024,
  "releaseDateTime": "String (timestamp)",
  "appStoreUrl": "String",
  "licensingType": {
    "@odata.type": "microsoft.graph.vppLicensingType",
    "supportUserLicensing": true,
    "supportDeviceLicensing": true
  },
  "applicableDeviceType": {
    "@odata.type": "microsoft.graph.iosDeviceType",
    "iPad": true,
    "iPhoneAndIPod": true
  }
}
```



