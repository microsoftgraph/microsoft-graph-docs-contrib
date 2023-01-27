---
title: "directoryObject resource type"
description: "Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types generally referred to as directory objects."
ms.localizationpriority: high
author: "keylimesoda"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# directoryObject resource type

Namespace: microsoft.graph

Represents an Azure Active Directory object. The **directoryObject** type is the base type for the following directory entity types generally referred to as directory objects:

+ [application](application.md)
+ [administrativeUnit](administrativeunit.md)
+ [appRoleAssignment](approleassignment.md)
+ [directoryObject](directoryobject.md)
+ [directoryRole](directoryrole.md)
+ [device](device.md)
+ [group](group.md)
+ [orgContact](orgcontact.md)
+ [servicePrincipal](serviceprincipal.md)
+ [user](user.md)

Inherits from [entity](entity.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get directoryObject](../api/directoryobject-get.md) | [directoryObject](directoryobject.md) |Read the properties of a directory object.|
|[Get delta](../api/directoryobject-delta.md)|[directoryObject](directoryObject.md) collection| Get incremental changes for directory objects such as [users](../api/user-delta.md), [groups](../api/group-delta.md), [applications](../api/application-delta.md), and [service principals](../api/serviceprincipal-delta.md). Filtering is required on either the **id** of the derived type or the derived type itself. For more information on delta queries, see the [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).|
|[Delete directoryObject](../api/directoryobject-delete.md) | None |Delete a directory object. |
|[Get available extension properties](../api/directoryobject-getavailableextensionproperties.md)|[extensionProperty](../resources/extensionproperty.md) collection|Get all or a filtered list of the directory extension properties that have been registered in a directory.|
|[checkMemberGroups](../api/directoryobject-checkmembergroups.md)|String collection|Check for membership in a specified list of groups, and return from that list those groups of which the specified user, group, service principal, organizational contact, device, or directory object is a member. The check is transitive.|
|[getMemberGroups](../api/directoryobject-getmembergroups.md)|String collection|Return all groups that the user, group, service principal, organizational contact, device, or directory object is a member of. The check is transitive.|
|[checkMemberObjects](../api/directoryobject-checkmemberobjects.md)|String collection|Check for membership in a list of group, administrative units, or directory roles for the specified user, group, device, organizational contact, or directory object. This method is transitive.|
|[getMemberObjects](../api/directoryobject-getmemberobjects.md)|String collection| Return all groups, administrative units, and directory roles that the user, group, device, organizational contact, or directory object is a member of. The check is transitive. |
|[getByIds](../api/directoryobject-getbyids.md) | [directoryObject](directoryobject.md) collection | Get a set of directory objects based on a set of supplied ids. |
|[validateProperties](../api/directoryobject-validateproperties.md)|JSON| Validate that a Microsoft 365 group's display name or mail nickname complies with naming policies. |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. |
|id|String|The unique identifier for the object. For example, `12345678-9abc-def0-1234-56789abcde`. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only. Inherited from [entity](entity.md).|


## Relationships

None.


## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.directoryObject",
  "@odata.annotations": [
    {
      "capabilities": {
        "skippable": false,
        "countable": false,
        "expandable": false,
        "filterable": false,
        "referenceable": false,
        "selectable": false
      }
    }
  ]
}-->

```json
{
  "id": "string (identifier)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

