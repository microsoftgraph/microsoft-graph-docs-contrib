---
title: "Create externalConnection"
description: "Create a new externalConnection object."
author: "mecampos"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Create externalConnection
Namespace: microsoft.graph.externalConnectors



Create a new externalConnection object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externalconnectors_external_post_connections" } -->
[!INCLUDE [permissions-table](../includes/permissions/externalconnectors-external-post-connections-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /external/connections
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalConnection](../resources/externalconnectors-externalconnection.md) object.

You can specify the following properties when creating an [externalConnection](../resources/externalconnectors-externalconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The connection ID. Required.|
|name|String|The connection name. Required.|
|description|String|The connection description. Required.|
|configuration|[microsoft.graph.externalConnectors.configuration](../resources/externalconnectors-configuration.md)|The connection configurations. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [externalConnection](../resources/externalconnectors-externalconnection.md) object in the response body.

>**Note:** When you create an external connection with a broken adaptive card for the result layout, the first call will fail with a `503 Service Unavailable`. When you try the call again, the second call will fail with a `409 Conflict` response that states that a connection with the same name already exists. This happens because the connection was created even though the first call failed with `503 Service Unavailable`. For more details, see [Known issues](https://developer.microsoft.com/en-us/graph/known-issues/?search=19908).

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_externalconnection_from_connections"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/external/connections
Content-Type: application/json

{
  "id": "contosohr",
  "name": "Contoso HR",
  "description": "Connection to index Contoso HR system"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-externalconnection-from-connections-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-externalconnection-from-connections-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-externalconnection-from-connections-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-externalconnection-from-connections-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-externalconnection-from-connections-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-externalconnection-from-connections-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-externalconnection-from-connections-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-externalconnection-from-connections-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response. Note that the **id**, **name**, and **description** properties in the response payload are generated by the system and are different from the ones that are in the connection that was created.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.externalConnection"
}
-->
``` http
HTTP/1.1 200 Created
Content-Type: application/json

{
  "id": "0a4f4e74-4e74-0a4f-744e-4f0a744e4f0a",
  "name": "String",
  "description": "String",
  "state": "ready",
  "configuration": {
    "authorizedAppIds": [
      "d310d35d-72ec-47dd-92f2-fb9c40936555"
    ]
  }
}
```

