# mobileAppVppGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a Vpp mobile app to a group.

Inherits from [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppVppGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappvppgroupassignment_list.md)|[mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md) collection|List properties and relationships of the [mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md) objects.|
|[Get mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappvppgroupassignment_get.md)|[mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md)|Read properties and relationships of the [mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md) object.|
|[Create mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappvppgroupassignment_create.md)|[mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md)|Create a new [mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md) object.|
|[Delete mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappvppgroupassignment_delete.md)|None|Deletes a [mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md).|
|[Update mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappvppgroupassignment_update.md)|[mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md)|Update the properties of a [mobileAppVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappvppgroupassignment.md) object.|
|[Get mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileapp_get.md)|[mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|Read properties and relationships of the [mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the mobile app to. Inherited from [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md)|
|vpnConfigurationId|String|The Id of the Vpn Profile to apply for this app. Inherited from [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md)|
|id|String|Key of the entity. Inherited from [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md) Possible values are: `available`, `notApplicable`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|app|[mobileApp](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileapp.md)|The navigation link to the mobile app being targeted. Inherited from [mobileAppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappgroupassignment.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppVppGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppVppGroupAssignment",
  "targetGroupId": "String",
  "vpnConfigurationId": "String",
  "id": "String (identifier)",
  "installIntent": "String",
  "useDeviceLicensing": true
}
```



