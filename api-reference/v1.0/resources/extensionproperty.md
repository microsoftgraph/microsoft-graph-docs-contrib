---
title: "extensionProperty resource type (directory extensions)"
description: "Represents a directory extension."
ms.localizationpriority: medium
author: "keylimesoda"
ms.prod: "extensions"
doc_type: "resourcePageType"
---

# extensionProperty resource type (directory extensions)

Namespace: microsoft.graph

Represents a **directory extension** that can be used to add a custom property to directory objects without requiring an external data store. For example, if an organization has a line of business (LOB) application that requires a Skype ID for each user in the directory, Microsoft Graph can be used to register a new property named **skypeId** on the directory’s User object, and then write a value to the new property for a specific user. Directory extensions can also be available in multi-tenant apps that have been consented to in the tenant.

Directory extensions can be added to following directory objects:
+ [user](../resources/user.md)
+ [group](../resources/group.md)
+ [administrativeUnit](../resources/administrativeunit.md)
+ [application](../resources/application.md)
+ [device](../resources/device.md)
+ [organization](../resources/organization.md)

Only 100 extension values, across *all* types and *all* applications, can be written to any single Azure AD resource.

Use this resource and associated methods to manage the directory extension definitions. To manage the directory extension data on the extended resource instance, use the same REST request that you use to manage the resource instance.

For more information about Microsoft Graph extensibility, see [Add custom properties to resources using extensions](/graph/extensibility-overview).

Inherits from [directoryObject](directoryobject.md).

> [!NOTE]
> Extensions created through Azure AD Graph (deprecated) and custom data synchronized from on-premises Active Directory using Azure AD Connect Sync are represented as directory extensions in Microsoft Graph.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create extensionProperties](../api/application-post-extensionproperty.md) | [extensionProperty](extensionProperty.md) | Create a directory extension on an application object. |
| [List extensionProperties](../api/application-list-extensionproperty.md) | [extensionProperty](extensionProperty.md) collection | List directory extensions on an application object. |
| [Get extensionProperty](../api/extensionproperty-get.md) | [extensionProperty](extensionProperty.md) collection | Get a directory extension an application object. |
| [Delete extensionProperty](../api/extensionproperty-delete.md) | None | Delete directory extension from an application object. You can delete only directory extensions that aren't synced from on-premises active directory. |
| [Get available extensions](../api/directoryobject-getavailableextensionproperties.md) | [extensionProperty](extensionProperty.md) collection | Return all directory extension definitions that have been registered in a directory, including through multi-tenant apps. |

> [!TIP]
> 1. To set a value for the extension property to an instance of a resource that is specified in **targetObjects**, use the Update operation of the resource. For example, the [Update user](../api/user-update.md) API to set the value for a user.
> 2. To remove the extension property and its value from an instance of a resource that is specified in **targetObjects**, set the value of the extension property to `null`.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appDisplayName|String| Display name of the application object on which this extension property is defined. Read-only. |
|dataType|String| Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. <ul><li>`Binary` - 256 bytes maximum</li><li>`Boolean`</li><li>`DateTime` - Must be specified in ISO 8601 format. Will be stored in UTC.</li><li>`Integer` - 32-bit value.</li><li>`LargeInteger` - 64-bit value.</li><li>`String` - 256 characters maximum</li></ul>|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](directoryobject.md).|
|isSyncedFromOnPremises|Boolean| Indicates if this extension property was synced from on-premises active directory using Azure AD Connect. Read-only. |
|name|String| Name of the extension property. Not nullable. Supports `$filter` (`eq`).|
|targetObjects|String collection| Following values are supported. Not nullable. <ul><li>`User`</li><li>`Group`</li><li>`AdministrativeUnit`</li><li>`Application`</li><li>`Device`</li><li>`Organization`</li></ul>|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

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
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "name": "String",
  "dataType": "String",
  "isSyncedFromOnPremises": "Boolean",
  "targetObjects": [
    "String"
  ]
}
```

## See also

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
