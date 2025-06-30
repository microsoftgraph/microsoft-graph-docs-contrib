---
title: "Update single value extended property on a Task"
description: "Update single value extended property on a Task"
author: "sgunturi"
ms.date: 06/30/2025
---

# Update singleValueExtendedProperties

Update a single-value extended property for a [todoTask](../resources/todotask.md) object.

## Permissions

[!INCLUDE [permissions-table](../includes/permissions/todotask-update-permissions.md)]

## HTTP request

To update one or more extended properties in a task, use the same REST request as updating a task, and include the extended property in the request body. 
To delete an extended property, set the value of the single value extended property to null.

```HTTP
POST https://graph.microsoft.com/beta/me/todo/lists/AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA=/tasks$expand=singleValueExtendedProperties($filter=id eq 'String 0x3004')
```

## Request headers

| Name          | Type    | Description                  |
|:--------------|:--------|:-----------------------------|
| Authorization | string  | Bearer {token}. Required.    |
| Content-Type  | string  | application/json. Required.  |

## Request body

In the request body, supply a JSON representation of the [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object.

```json
{
  "singleValueExtendedProperties": [
    {
      "id": "String 0x3004",
      "Value": "newValue"
    }
  ]
}
```

## Response

If successful, this method returns a 200 OK response code and an updated [todoTask](../resources/todotask.md) object in the response body. To ensure that the [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object is returned in the response body include $expand query parameters in the request.

## Example
Update singleValueExtendedProperty on a task.

### Request

```http
POST https://graph.microsoft.com/beta/me/todo/lists/AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA=/tasks$expand=singleValueExtendedProperties($filter=id eq 'String 0x3004')
Content-Type: application/json

{
  "singleValueExtendedProperties": [
    {
      "id": "String 0x3004",
      "Value": "newValue"
    }
  ]
}
```

### Response

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('abdfb478-2c62-4af8-8ebd-a1226a051da9')/todo/lists('AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA%3D')/tasks/$entity",
  "@odata.etag": "W/\"F/9Ey3ZnKU22HO147fTAbQACkKtwSA==\"",
  "importance": "normal",
  "isReminderOn": false,
  "status": "notStarted",
  "title": "sampleTitle",
  "createdDateTime": "2025-04-15T07:41:19.3936849Z",
  "lastModifiedDateTime": "2025-04-15T07:41:19.4784861Z",
  "hasAttachments": false,
  "categories": [],
  "id": "AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQBGAAAAAABqWGq8OtNGQZXSxZmlbsdaBwAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAAX-0TLdmcpTbYc7Xjt9MBtAAKUZGaaAAA=",
  "body": {
      "content": "",
      "contentType": "text"
  },
  "singleValueExtendedProperties": [
    {
      "id": "String 0x3004",
      "value": "newValue"
    }
  ]
}
```
## Example
Delete singleValueExtendedProperty from a task.

### Request

```http
POST https://graph.microsoft.com/beta/me/todo/lists/AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA=/tasks
Content-Type: application/json

{
  "singleValueExtendedProperties": [
    {
      "id": "String 0x3004",
      "Value": null
    }
  ]
}
```

### Response

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('abdfb478-2c62-4af8-8ebd-a1226a051da9')/todo/lists('AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA%3D')/tasks/$entity",
  "@odata.etag": "W/\"F/9Ey3ZnKU22HO147fTAbQACkKtwSA==\"",
  "importance": "normal",
  "isReminderOn": false,
  "status": "notStarted",
  "title": "sampleTitle",
  "createdDateTime": "2025-04-15T07:41:19.3936849Z",
  "lastModifiedDateTime": "2025-04-15T07:41:19.4784861Z",
  "hasAttachments": false,
  "categories": [],
  "id": "AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQBGAAAAAABqWGq8OtNGQZXSxZmlbsdaBwAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAAX-0TLdmcpTbYc7Xjt9MBtAAKUZGaaAAA=",
  "body": {
      "content": "",
      "contentType": "text"
  }
}
```

## See also

- [singleValueLegacyExtendedProperty resource type](../resources/singlevaluelegacyextendedproperty.md)
- [todoTask resource type](../resources/todotask.md)