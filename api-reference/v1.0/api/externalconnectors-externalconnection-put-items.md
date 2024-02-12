---
title: "Create externalItem"
description: "Create a new externalItem."
author: "snlraju-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Create externalItem

Namespace: microsoft.graph.externalConnectors

Create a new [externalItem](../resources/externalconnectors-externalitem.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externalconnectors_externalconnection_put_items" } -->
[!INCLUDE [permissions-table](../includes/permissions/externalconnectors-externalconnection-put-items-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /external/connections/{connection-id}/items/{item-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalItem](../resources/externalconnectors-externalitem.md) object.

You can specify the following properties when creating an [externalItem](../resources/externalconnectors-externalitem.md).

|Property|Type| Description|
|:---|:---|:---|
|id|String|The item ID. Required.|
|properties|[microsoft.graph.externalConnectors.properties](../resources/externalconnectors-properties.md)|The item properties. The `properties` object must contain at least one property. All `DateTime` type properties must be in ISO 8601 format. Required.|
|content|[microsoft.graph.externalConnectors.externalItemContent](../resources/externalconnectors-externalitemcontent.md)|The external item content. Optional.|
|acl|[microsoft.graph.externalConnectors.acl](../resources/externalconnectors-acl.md) collection|The access control list. Required.|

Properties on an `externalItem` should use type specifiers in the payload in the following scenarios:

- For `String` type properties, if the value contains non-ASCII characters.

    ```json
    "description@odata.type": "String",
    "description": "Kandierte Äpfel"
    ```

- For all collection types.

    ```json
    "categories@odata.type": "Collection(String)"
    "categories": [
      "red",
      "blue"
    ]
    ```

    > [!IMPORTANT]
    > When including a property of type `Collection(DateTime)`, you must use the type specifier `Collection(DateTimeOffset)`.

## Response 

If successful, this method returns `200 OK` response code.

## Examples

### Example: Create a custom item

### Request



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_externalitem_from_externalConnections",
  "sampleKeys": ["contosohr", "TSP228082938"]
}
-->
``` http
PUT https://graph.microsoft.com/v1.0/external/connections/contosohr/items/TSP228082938
Content-type: application/json

{
  "acl": [
    {
      "type": "user",
      "value": "e811976d-83df-4cbd-8b9b-5215b18aa874",
      "accessType": "grant"
    },
    {
      "type": "externalGroup",
      "value": "14m1b9c38qe647f6a",
      "accessType": "deny"
    }
  ],
  "properties": {
    "title": "Error in the payment gateway",
    "priority": 1,
    "assignee": "john@contoso.com"
  },
  "content": {
    "value": "Error in payment gateway...",
    "type": "text"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-externalitem-from-externalconnections-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-externalitem-from-externalconnections-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-externalitem-from-externalconnections-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-externalitem-from-externalconnections-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-externalitem-from-externalconnections-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-externalitem-from-externalconnections-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-externalitem-from-externalconnections-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-externalitem-from-externalconnections-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
```

