---
author: "JeremyKelley"
title: "identitySet resource type"
description: "Represents a keyed collection of identity resources."
ms.localizationpriority: medium
ms.prod: files
doc_type: resourcePageType
---

# identitySet resource type

Namespace: microsoft.graph

Represents a keyed collection of [identity](identity.md) resources. It is used to represent a set of identities associated with various events for an item, such as _created by_ or _last modified by_.

## Properties

| Property    | Type                    | Description                                            |
|:------------|:------------------------|:-------------------------------------------------------|
| application | [identity](identity.md) | Optional. The application associated with this action. |
| device      | [identity](identity.md) | Optional. The device associated with this action.      |
| user        | [identity](identity.md) | Optional. The user associated with this action.        |

## JSON representation

The following is a JSON representation of the resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.identitySet",
       "optionalProperties": ["user", "application", "device"],
       "openType": true } -->
```json
{
  "application": {"@odata.type": "microsoft.graph.identity"},
  "device": {"@odata.type": "microsoft.graph.identity"},
  "user": {"@odata.type": "microsoft.graph.identity"}
}
```

## See also 

For examples about the usage of **identitySet** resources, see [driveItem](driveitem.md).


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Identity set is a collection of identities",
  "section": "documentation",
  "tocPath": "Resources/IdentitySet"
} -->

