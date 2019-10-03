---
title: "Update externalitem"
description: "Update the properties of an externalitem."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "apiPageType"
---

# Update externalitem

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalitem](../resources/externalitem.md) or [externalFile](../resources/externalfile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ExternalItem.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /external/connections/{connection-id}/items/{item-id}
```

## Request headers

| Name          | Description                 |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. The following properties can be updated.

### externalItem properties

| Property   | Type                                  | Description             |
|:-----------|:--------------------------------------|:------------------------|
| acl        | [acl](../resources/acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. |
| content    | String                                | A plain-text representation of the contents of the item. |
| properties | object                                | A property bag with the properties of the item. The properties MUST conform to the [schema](../resources/schema.md) defined for the [connection](../resources/connection.md). |

### externalFile properties

| Property         | Type                                  | Description       |
|:-----------------|:--------------------------------------|:------------------|
| acl              | [acl](../resources/acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. |
| content          | String                                | A plain-text representation of the contents of the item. |
| createdBy        | String                                | The name of the user that created the file. |
| createdDateTime  | DateTimeOffset                        | The date and time that the file was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| extension        | String                                | The file extension. |
| lastModifiedBy   | String                                | The name of the user that last modified the file. |
| modifiedDateTime | DateTimeOffset                        | The date and time that the file was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| name             | String                                | The file name.    |
| size             | Int64                                 | The size of the file in bytes. |
| title            | String                                | The title of the file. |
| url              | String                                | The URL to access the file. |

## Response

If successful, this method returns a `200 OK` response code and an updated [externalItem](../resources/externalitem.md) or [externalFile](../resources/externalfile.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_externalitem"
}-->

```http
PATCH https://graph.microsoft.com/beta/connections/contosohr/items/TSP-228082938
Content-type: application/json

{
  "acl": [
    {
      "type": "user",
      "value": "49103559-feac-4575-8b94-254814dfca72",
      "accessType": "grant",
      "identitySource": "Azure Active Directory"
    }
  ]
}
```

<!-- markdownlint-disable MD024 -->
### Response
<!-- markdownlint-enable MD024 -->

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalItem"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "TSP-228082938",
  "acl": [
    {
      "type": "user",
      "value": "49103559-feac-4575-8b94-254814dfca72",
      "accessType": "grant",
      "identitySource": "Azure Active Directory"
    }
  ],
  "properties": {
    "title": "Error in the payment gateway",
    "priority": 1,
    "assignee": "john@contoso.com"
  },
  "content": "Textual content of the file"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update externalitem",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
