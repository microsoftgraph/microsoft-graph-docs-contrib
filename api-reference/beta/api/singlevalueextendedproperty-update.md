---
title: "Update singleValueExtendedProperty"
description: "Update a singleValueExtendedProperty of a todoTask object."
author: "SindhuGunturi"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Update singleValueExtendedProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [singleValueExtendedProperty](../resources/singlevalueextendedproperty.md) of a [todoTask](../resources/todotask.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/todotask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/todo/lists/{todoTaskListId}/tasks$expand=singleValueExtendedProperties($filter=id eq '{singleValueExtendedPropertyId}')
PATCH /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}$expand=singleValueExtendedProperties($filter=id eq '{singleValueExtendedPropertyId}')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

In the request body, supply a JSON representation of the [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object.

|Property|Type|Description|
|:---|:---|:---|
|id|String||
|value|String|Set the value of the property. If deleting the property, set this field to null|

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

If successful, this method returns a `200 OK` response code and an updated [todoTask](../resources/todotask.md) object in the response body. Use the `$expand` query parameter in the request to include the [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object in the response body.

## Examples

### Example 1: Update a singleValueExtendedProperty

The following example shows how to update one or more extended properties in a task, use the same REST request as updating a task, and include the extended property in the request body.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_singlevalueextendedproperty_1"
}
-->
```http
PATCH https://graph.microsoft.com/beta/me/todo/lists/AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA=/tasks$expand=singleValueExtendedProperties($filter=id eq 'String 0x3004')
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

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.todoTask"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

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

### Example 2: Delete a singleValueExtendedProperty

The following example shows how to delete an extended property. Set the value of the single value extended property to `null`.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_singlevalueextendedproperty_2"
}
-->
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

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.todoTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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

## Related content

- [singleValueExtendedProperty resource type](../resources/singlevalueextendedproperty.md)
- [todoTask resource type](../resources/todotask.md)

