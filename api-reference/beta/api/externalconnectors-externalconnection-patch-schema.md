---
title: "Create or update schema"
description: "Create or update the schema for a Microsoft Search connection."
ms.localizationpriority: medium
author: "snlraju-msft"
ms.subservice: "search"
doc_type: "apiPageType"
ms.date: 06/01/2024
---

# Create or update schema

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new or update an existing [schema](../resources/externalconnectors-schema.md) for a Microsoft Search [connection](../resources/externalconnectors-externalconnection.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externalconnectors_externalconnection_patch_schema" } -->
[!INCLUDE [permissions-table](../includes/permissions/externalconnectors-externalconnection-patch-schema-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /external/connections/{id}/schema
```

## Request headers

| Name                  | Description                                                        |
|:----------------------|:-------------------------------------------------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type          | application/json. Required.                                        |
| Prefer: respond-async | Use this to cause the request to execute asynchronously. Optional. |

## Request body

In the request body, supply a JSON representation of a [schema](../resources/externalconnectors-schema.md) object.

When you register a custom item schema, the **schema** object **must** have the **baseType** property set to `microsoft.graph.externalItem` and **must** contain the **properties** property. The **properties** object **must** contain at least one property, up to a maximum of 128.

## Response

If successful, this method returns a `202 Accepted` response code and a URL in the `Location` response header that can be used to [get the operation status](../api/externalconnectors-connectionoperation-get.md).

>**Note:** It can take between 5 and 15 minutes for the schema to be created. We recommend that you use the URL in the `Location` response header to get the operation status.

## Examples

### Request

The following example shows a request to register a new or update an existing custom schema asynchronously.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_schema_from_connection_async",
  "sampleKeys": ["contosohr"]
}-->

```http
PATCH https://graph.microsoft.com/beta/external/connections/contosohr/schema
Content-type: application/json

{
  "baseType": "microsoft.graph.externalItem",
  "properties": [
    {
      "name": "ticketTitle",
      "type": "string",
      "isSearchable": "true",
      "isRetrievable": "true",
      "labels": [
        "title"
      ]
    },
    {
      "name": "priority",
      "type": "string",
      "isQueryable": "true",
      "isRetrievable": "true",
      "isSearchable": "false"
    },
    {
      "name": "assignee",
      "type": "string",
      "isRetrievable": "true"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-schema-from-connection-async-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-schema-from-connection-async-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-schema-from-connection-async-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-schema-from-connection-async-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-schema-from-connection-async-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-schema-from-connection-async-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-schema-from-connection-async-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-schema-from-connection-async-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

<!-- markdownlint-disable MD024 -->
### Response
<!-- markdownlint-enable MD024 -->

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/external/connections/contosohr/operations/616bfeed-666f-4ce0-8cd9-058939010bfc
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create externalItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
