---
title: "extensionProperty resource type (directory extensions)"
description: "Represents a directory extension."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: extensions
doc_type: "resourcePageType"
toc.title: Directory extension
ms.date: 07/22/2024
---

# extensionProperty resource type (directory extensions)

Namespace: microsoft.graph

Represents a **directory extension** that can be used to add a custom property to directory objects without requiring an external data store. For example, if an organization has a line of business (LOB) application that requires a Skype ID for each user in the directory, Microsoft Graph can be used to register a new property named **skypeId** on the directory's User object, and then write a value to the new property for a specific user. Directory extensions can also be available in multi-tenant apps that have been consented to in the tenant.

Directory extensions can be added to following directory objects:
+ [user](../resources/user.md)
+ [group](../resources/group.md)
+ [administrativeUnit](../resources/administrativeunit.md)
+ [application](../resources/application.md)
+ [device](../resources/device.md)
+ [organization](../resources/organization.md)

Only 100 extension values, across *all* types and *all* applications, can be written to any single Microsoft Entra resource.

Use this resource and associated methods to manage the directory extension definitions. To manage the directory extension data on the extended resource instance, use the same REST request that you use to manage the resource instance.

For more information about Microsoft Graph extensibility, see [Add custom properties to resources using extensions](/graph/extensibility-overview).

Inherits from [directoryObject](directoryobject.md).

> [!NOTE]
> Extensions created through Azure AD Graph (currently in its retirement cycle) and custom data synchronized from on-premises Active Directory using Microsoft Entra Connect Sync are represented as directory extensions in Microsoft Graph.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/application-post-extensionproperty.md) | [extensionProperty](extensionProperty.md) | Create a directory extension on an application object. |
| [List](../api/application-list-extensionproperty.md) | [extensionProperty](extensionProperty.md) collection | List directory extensions on an application object. |
| [Get](../api/extensionproperty-get.md) | [extensionProperty](extensionProperty.md) collection | Get a directory extension an application object. |
| [Delete](../api/extensionproperty-delete.md) | None | Delete directory extension from an application object. You can delete only directory extensions that aren't synced from on-premises active directory. |
| [Get available extension properties](../api/directoryobject-getavailableextensionproperties.md) | [extensionProperty](extensionProperty.md) collection | Return all directory extension definitions that have been registered in a directory, including through multi-tenant apps. |

> [!TIP]
> 1. To set a value for the extension property to an instance of a resource that is specified in **targetObjects**, use the Update operation of the resource. For example, the [Update user](../api/user-update.md) API to set the value for a user.
> 2. To remove the extension property and its value from an instance of a resource that is specified in **targetObjects**, set the value of the extension property to `null`.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appDisplayName|String| Display name of the application object on which this extension property is defined. Read-only. |
|dataType|String| Specifies the data type of the value the extension property can hold. Following values are supported. <ul><li>`Binary` - 256 bytes maximum</li><li>`Boolean`</li><li>`DateTime` - Must be specified in ISO 8601 format. Will be stored in UTC.</li><li>`Integer` - 32-bit value.</li><li>`LargeInteger` - 64-bit value.</li><li>`String` - 256 characters maximum</li></ul>Not nullable. For multivalued directory extensions, these limits apply per value in the collection. |
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](directoryobject.md).|
|isSyncedFromOnPremises|Boolean| Indicates if this extension property was synced from on-premises active directory using Microsoft Entra Connect. Read-only. |
|name|String| Name of the extension property. Not nullable. Supports `$filter` (`eq`).|
|isMultiValued|Boolean| Defines the directory extension as a multi-valued property. When `true`, the directory extension property can store a collection of objects of the **dataType**; for example, a collection of string types such as `"extension_b7b1c57b532f40b8b5ed4b7a7ba67401_jobGroupTracker": ["String 1", "String 2"]`. The default value is `false`. Supports `$filter` (`eq`).|
|targetObjects|String collection| Following values are supported. Not nullable. <ul><li>`User`</li><li>`Group`</li><li>`AdministrativeUnit`</li><li>`Application`</li><li>`Device`</li><li>`Organization`</li></ul>|

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.extensionProperty",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extensionProperty",
  "appDisplayName": "String",
  "dataType": "String",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isSyncedFromOnPremises": "Boolean",
  "isMultiValued": "Boolean",
  "name": "String",
  "targetObjects": [
    "String"
  ]
}
```

## Related content

+ [Add custom properties to resources using extensions](/graph/extensibility-overview)

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "extensionProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
