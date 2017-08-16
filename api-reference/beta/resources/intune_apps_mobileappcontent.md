# mobileAppContent resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains content properties for a specific app version. Each mobileAppContent can have multiple mobileAppContentFile.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppContents](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcontent_list.md)|[mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md) collection|List properties and relationships of the [mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md) objects.|
|[Get mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcontent_get.md)|[mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md)|Read properties and relationships of the [mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md) object.|
|[Create mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcontent_create.md)|[mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md)|Create a new [mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md) object.|
|[Delete mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcontent_delete.md)|None|Deletes a [mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md).|
|[Update mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcontent_update.md)|[mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md)|Update the properties of a [mobileAppContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontent.md) object.|
|[List mobileAppContentFiles](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_apps_mobileappcontentfile_list.md)|[mobileAppContentFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontentfile.md) collection|List properties and relationships of the [mobileAppContentFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontentfile.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The app content version.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|files|[mobileAppContentFile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_apps_mobileappcontentfile.md) collection|The list of files for this app content version.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppContent"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppContent",
  "id": "String (identifier)"
}
```



