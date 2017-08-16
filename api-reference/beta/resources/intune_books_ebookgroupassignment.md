# eBookGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a eBook to a group.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List eBookGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookgroupassignment_list.md)|[eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) collection|List properties and relationships of the [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) objects.|
|[Get eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookgroupassignment_get.md)|[eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)|Read properties and relationships of the [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) object.|
|[Create eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookgroupassignment_create.md)|[eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)|Create a new [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) object.|
|[Delete eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookgroupassignment_delete.md)|None|Deletes a [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md).|
|[Update eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookgroupassignment_update.md)|[eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md)|Update the properties of a [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) object.|
|[Get managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_managedebook_get.md)|[managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|Read properties and relationships of the [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to.|
|id|String|Key of the entity.|
|installIntent|String|The install intent defined by the admin. Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|eBook|[managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|The navigation link to the eBook being targeted.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.eBookGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.eBookGroupAssignment",
  "targetGroupId": "String",
  "id": "String (identifier)",
  "installIntent": "String"
}
```



