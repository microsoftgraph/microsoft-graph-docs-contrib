# eBookVppGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a VPP eBook to a group.

Inherits from [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List eBookVppGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookvppgroupassignment_list.md)|[eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md) collection|List properties and relationships of the [eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md) objects.|
|[Get eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookvppgroupassignment_get.md)|[eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md)|Read properties and relationships of the [eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md) object.|
|[Create eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookvppgroupassignment_create.md)|[eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md)|Create a new [eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md) object.|
|[Delete eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookvppgroupassignment_delete.md)|None|Deletes a [eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md).|
|[Update eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookvppgroupassignment_update.md)|[eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md)|Update the properties of a [eBookVppGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookvppgroupassignment.md) object.|
|[Get managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_managedebook_get.md)|[managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|Read properties and relationships of the [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to. Inherited from [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)|
|id|String|Key of the entity. Inherited from [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|eBook|[managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|The navigation link to the eBook being targeted. Inherited from [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.eBookVppGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.eBookVppGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)",
  "installIntent": "String",
  "useDeviceLicensing": true
}
```



