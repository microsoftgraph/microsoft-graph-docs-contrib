---
title: "namedLocation resource type"
description: "This is the base class that represents a Microsoft Entra ID named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy."
author: "ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# namedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is the base class that represents a Microsoft Entra ID named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access (CA) policy.


Inherits from [policyDeletableItem](../resources/policydeletableitem.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List](../api/conditionalaccessroot-list-namedlocations.md) | [namedLocation](namedLocation.md) collection | Get all the **namedLocation** objects in the organization. |
| [Get](../api/namedlocation-get.md) | [namedLocation](namedlocation.md) | Read the properties and relationships of a **namedLocation** object. |
| [Delete](../api/namedlocation-delete.md) | None | Delete a **namedLocation** object. |
|[List deleted named locations](../api/policydeletableitem-list.md) | [namedLocation](../resources/namedlocation.md) collection | List all deleted **namedLocation** objects. |
|[Get deleted named location](../api/policydeletableitem-get.md) | [namedLocation](../resources/namedlocation.md)| Get a single deleted **namedLocation** object. |
|[Restore deleted named location](../api/namedlocation-restore.md)|[namedLocation](../resources/namedlocation.md)|Restore a **namedLocation**  object. |
|[Permanently delete a soft deleted named location](../api/policydeletableitem-delete.md) | None | Permanently delete a deleted **namedLocation** object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Human-readable name of the location.|
|id|String|Identifier of a namedLocation object. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents last modified date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents creation date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|deletedDateTime|DateTimeOffset|Shows the last date and time the named location was deleted.Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.namedLocation",
  "baseType": "microsoft.graph.policyDeletableItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.namedLocation",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```

