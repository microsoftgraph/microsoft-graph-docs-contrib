# directoryObject resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List directoryObjects](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_directoryobject_list.md)|[directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) collection|List properties and relationships of the [directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) objects.|
|[Get directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_directoryobject_get.md)|[directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md)|Read properties and relationships of the [directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) object.|
|[Create directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_directoryobject_create.md)|[directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md)|Create a new [directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) object.|
|[Delete directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_directoryobject_delete.md)|None|Deletes a [directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md).|
|[Update directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_mam_directoryobject_update.md)|[directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md)|Update the properties of a [directoryObject](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_mam_directoryobject.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The directory object identifier|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "String (identifier)"
}
```



