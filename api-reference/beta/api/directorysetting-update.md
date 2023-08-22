---
title: "Update directorySetting"
description: "Update the properties of a specific directory setting object."
author: "Jordanndahl"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update directorySetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a specific directory setting object.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For all settings except the Consent Policy Settings object

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.ReadWrite.All |

### For the Consent Policy Settings object

The following permissions are required to update the "Consent Policy Settings" **directorySetting** object.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Policy.ReadWrite.Authorization    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Policy.ReadWrite.Authorization |


## HTTP request
<!-- { "blockType": "ignored" } -->
Update a tenant-wide setting.
```http
PATCH /settings/{directorySettingId}
```

<!-- { "blockType": "ignored" } -->
Update a group-specific setting.
```http
PATCH /groups/{groupId}/settings/{directorySettingId}
```

## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {token}. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. 

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| values | [settingValue](../resources/settingvalue.md) collection | The updated set of values.  NOTE: You must supply the entire collection set. You cannot update a single set of values. |

## Response

If successful, this method returns a `204 No Content` response code.

## Example
### Request
Here is an example of the request that updates a tenant-wide setting.

<!-- {
  "blockType": "request",
  "name": "update_directorysetting"
}-->
```http
PATCH https://graph.microsoft.com/beta/settings/01c5a7e5-c872-47d9-acd0-99c475a1f146
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

### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update directorysetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


