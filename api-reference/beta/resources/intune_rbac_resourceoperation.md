# resourceOperation resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This defines an operation or action that can be performed on an Intune resource (or entity).  Common operations are Read, Delete, Update or Create.  These operations provide basic management of the underlying Intune resource itself.  In some cases, an Intune resource can have operations that are used by the resource to take action in combination with other resources.  For example, the Assign operation is used to assign a MobileApp resource to an AAD security group.  Resource operations cannot be modified for built-in roles.This defines an operation or action that can be performed on an Intune resource (or entity).  Common operations are Get, List, Delete, Update or Create.  These operations provide basic management of the underlying Intune resource itself.  In some cases, an Intune resource can have operations that are used by the resource to take action in combination with other resources.  For example, the "Assign" operation is used to assign a MobileApp resource to an AAD security group.  Resource operations cannot be modified for built-in roles.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List resourceOperations](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_list.md)|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) collection|List properties and relationships of the [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) objects.|
|[Get resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_get.md)|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md)|Read properties and relationships of the [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) object.|
|[Create resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_create.md)|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md)|Create a new [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) object.|
|[Delete resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_delete.md)|None|Deletes a [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md).|
|[Update resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_update.md)|[resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md)|Update the properties of a [resourceOperation](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_rbac_resourceoperation.md) object.|
|[getScopesForUser function](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_rbac_resourceoperation_getscopesforuser.md)|String collection|Not yet documented|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the Resource Operation. Read-only, automatically generated.|
|resourceName|String|Name of the Resource this operation is performed on.|
|actionName|String|Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.|
|description|String|Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourceOperation"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.resourceOperation",
  "id": "String (identifier)",
  "resourceName": "String",
  "actionName": "String",
  "description": "String"
}
```



