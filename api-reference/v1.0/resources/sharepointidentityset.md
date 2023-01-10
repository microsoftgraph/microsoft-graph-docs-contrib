---
author: tushar20
title: sharePointIdentitySet resource type
ms.localizationpriority: medium
description: "Represents a keyed collection of sharePointIdentity and identity resources."
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# sharePointIdentitySet resource type

Represents a keyed collection of [sharePointIdentity](sharePointIdentity.md) resources. This resource extends from the **identitySet** resource to provide the ability to expose SharePoint-specific information to the user.

This resource is used to represent a set of identities associated with various events for an item, such as _created by_ or _last modified by_.

For usage information, see [driveItem][].

## Properties

| Property    | Type                   | Description |
|:------------|:-----------------------|:----------------------------------------------------------- |
| application | [identity][]           | The application associated with this action. Optional. |
| device      | [identity][]           | The device associated with this action. Optional. |
| group       | [identity][]           | The group associated with this action. Optional. |
| user        | [identity][]           | The user associated with this action. Optional. |
| siteGroup   | [sharePointIdentity][] | The SharePoint group associated with this action. Optional. |
| siteUser    | [sharePointIdentity][] | The SharePoint user associated with this action. Optional. |

## JSON representation

The following is a JSON representation of the resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.sharePointIdentitySet",
       "optionalProperties": ["user", "application", "group", "device", "siteUser", "siteGroup"],
       "openType": true } -->

```json
{
  /** inherited from IdentitySet **/
  "application": {"@odata.type": "microsoft.graph.identity"},
  "device": {"@odata.type": "microsoft.graph.identity"},
  "user": {"@odata.type": "microsoft.graph.identity"},
  
  "group": {"@odata.type": "microsoft.graph.identity"},
  "siteUser": {"@odata.type": "microsoft.graph.sharePointIdentity"},
  "siteGroup":{"@odata.type": "microsoft.graph.sharePointIdentity"}
}
```

[driveItem]: driveItem.md
[identity]: identity.md
[sharePointIdentity]: sharePointIdentity.md

<!-- {
  "type": "#page.annotation",
  "description": "SharePointIdentity set is a collection of identities/sharePointIdentities",
  "section": "documentation",
  "tocPath": "Resources/SharePointIdentitySet"
} -->
