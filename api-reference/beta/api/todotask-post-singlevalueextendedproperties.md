---
title: "Create singleValueExtendedProperty"
description: "Create a new singleValueExtendedProperty on a todoTask object."
author: "SindhuGunturi"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Create singleValueExtendedProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [singleValueExtendedProperty](../resources/singlevalueextendedproperty.md) on a [todoTask](../resources/todotask.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/todotasklist-post-tasks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}$expand=singleValueExtendedProperties($filter=id eq 'String 0x3004')
POST me/todo/lists/{todoTaskListId}/tasks$expand=singleValueExtendedProperties($filter=id eq 'String 0x3004')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

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

If successful, this method returns a `201 Created` response code and a [todoTask](../resources/todotask.md) object in the response body. Use the `$expand` query parameter in the request to include the [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object in the response body.

## Examples

### Request

The following example shows how to create one or more extended properties in a new task. Use the same REST request as when you create a task, and include both the new properties of the task and the extended properties in the request body.

<!-- {
  "blockType": "request",
  "name": "create_singlevalueextendedproperty_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/todo/lists/AAMkAGRkODAyMWY4LThhNDAtNDY5NC04NGZlLTg1MWI3ZjhlNzlkYQAuAAAAAABqWGq8OtNGQZXSxZmlbsdaAQAX-0TLdmcpTbYc7Xjt9MBtAAKE11mZAAA=/tasks$expand=singleValueExtendedProperties($filter=id eq 'String 0x3004')
Content-Type: application/json

{
  "title": "sampleTitle",
  "singleValueExtendedProperties": [
    {
      "id": "String 0x3004",
      "Value": "sampleValue"
    }
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.todoTask"
}
-->
``` http
HTTP/1.1 201 Created
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
      "value": "sampleValue"
    }
  ]
}
```

## Related content

- [singleValueExtendedProperty resource type](../resources/singlevalueextendedproperty.md)
- [todoTask resource type](../resources/todotask.md)
