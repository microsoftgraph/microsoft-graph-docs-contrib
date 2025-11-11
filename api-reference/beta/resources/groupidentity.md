---
author: xiaoqwan
title: GroupIdentity resource type
ms.localizationpriority: medium
description: "Represents the identity of a group-connected site."
ms.subservice: "sharepoint"
doc_type: resourcePageType
toc.title: "Group Identity"
ms.date: 11/02/2025
---

# GroupIdentity resource type

The **GroupIdentity** resource represents an identity of a group-connected site.

## Properties

| Property         | Type                        | Description
|:------------     |:----------------------------|:---------------------------------
| mailNickname     | String                      | The mail nick name, also known as group alias of the group-connected site.
| id               | String                      | Unique identifier for the identity.
| displayName      | String                      | Display name for the identity.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.GroupIdentity",
  "baseType": "microsoft.graph.identity",
  "openType": true} -->
```json
{
  "mailNickname": "string",
  "id": "string",
  "displayName": "string"
}
```
