---
author: spgraph-docs-team
description: "Represents the identity of a SharePoint group."
title: "sharePointGroupIdentity resource type"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 03/23/2026
toc.title: "SharePoint group identity"
---

# sharePointGroupIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a SharePoint group. Extends the [identity](identity.md) type with SharePoint-specific properties.

Inherits from [identity](identity.md).

## Properties

| Property     | Type   | Description                                                                                      |
|:-------------|:-------|:-------------------------------------------------------------------------------------------------|
| displayName  | String | The display name of the SharePoint group. Inherited from [identity](identity.md). Read-only.     |
| id           | String | The unique identifier of the SharePoint group. Inherited from [identity](identity.md). Read-only. |
| principalId  | String | The principal ID of the SharePoint group in the tenant. Read-only.                               |
| title        | String | The title of the SharePoint group. Read-only.                                                    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.sharePointGroupIdentity"
}-->

```json
{
  "@odata.type": "#microsoft.graph.sharePointGroupIdentity",
  "displayName": "String",
  "id": "String",
  "principalId": "String",
  "title": "String"
}
```

## Related content

- [sharePointIdentitySet resource type](sharepointidentityset.md)
- [identity resource type](identity.md)
- [sharePointGroup resource type](sharepointgroup.md)

<!--
{
  "type": "#page.annotation",
  "description": "The sharePointGroupIdentity resource represents the identity of a SharePoint group.",
  "keywords": "identity,sharepoint,group",
  "section": "documentation",
  "tocPath": "Resources/SharePointGroupIdentity",
  "suppressions": []
}
-->
