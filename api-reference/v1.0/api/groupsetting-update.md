---
title: "Update a group setting"
description: "Update the properties of a specific group setting object."
author: "yyuank"
localization_priority: Normal
ms.prod: "groups"
doc_type: apiPageType
---

# Update a group setting

Namespace: microsoft.graph

Update the properties of a [groupSetting](../resources/groupsetting.md) object for tenant-wide [group](../resources/group.md) settings or a specific group setting.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->



```http
PATCH /groupSettings/{id}
PATCH /groups/{id}/settings/{id}
```
## Request headers
| Name | Description |
|:-----------|:-----------|
| Authorization  | {token}. Required. |
| Content-Type	| application/json	|

## Request body
In the request body, supply the values for relevant fields that should be updated. 

| Property | Type | Description |
|:---------------|:--------|:----------|
| values | [settingValue](../resources/settingvalue.md) collection | The updated set of values. You must include the entire collection set. You cannot update a single set of values. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update a tenant-wide group setting

In this example, `{id}` is the identifier of the tenant-wide groupSetting object.

#### Request

<!-- {
  "blockType": "request",
  "name": "update_tenant_setting"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groupsettings/f0b2d6f5-097d-4177-91af-a24e530b53cc
Content-type: application/json

{
  "values": [
    {
      "name": "AllowToAddGuests",
      "value": "false"
    }
  ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update a specific group setting

In this example, the first `{id}` in the request is the identifier of the group, and the second `{id}` is the identifier of the groupSetting object.

#### Request

<!-- {
  "blockType": "request",
  "name": "update_groupsetting_by_id"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/055a5d18-a3a9-4338-b9c5-de92559b7ebf/settings/a77ad44e-aa2a-4976-91b5-b947787b9577
Content-type: application/json

{
  "values": [
    {
      "name": "AllowToAddGuests",
      "value": "false"
    }
  ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update groupSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

