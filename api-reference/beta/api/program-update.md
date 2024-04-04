---
title: "Update program (deprecated)"
description: "In the Microsoft Entra access reviews feature, update an existing program object."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "entra-id-governance"
author: "shubhamguptacal"
ms.topic: reference
---

# Update program (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

In the Microsoft Entra [access reviews](../resources/accessreviews-root.md) feature, update an existing [program](../resources/program.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "program_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/program-update-permissions.md)]

The signed in user must also be in a directory role that permits them to update a program.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /programs/{programId}
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
In the request body, supply a JSON representation of a [program](../resources/program.md) object.

The following table shows the properties that can be supplied when you update a program.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `displayName`               |`String`                              |  The name of the program.                   |
| `description`               |`String`                              |  The description of the program.           |


## Response
If successful, this method returns a `204, Accepted` response code and [program](../resources/program.md) object in the response body.

## Example
##### Request
In the request body, supply a JSON representation of the [program](../resources/program.md) object parameters to change.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_program"
}-->
```http
PATCH https://graph.microsoft.com/beta/programs/7e59d237-2fb0-4e5d-b7bb-d4f9f9129213
Content-type: application/json

{
    "displayName": "testprogram3 new name"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-program-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-program-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-program-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-program-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-program-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-program-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-program-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-program-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.program"
} -->
```http
HTTP/1.1 204 Accepted
Content-type: application/json

{
    "id": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
    "displayName": "testprogram3 new name",
    "description": "test description"
}
```

## Related content

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List programControls of a program](program-listcontrols.md) |        [programControl](../resources/programcontrol.md) collection|    Get a collection of the controls of a program.|
|[Create programControl](programcontrol-create.md) |        [programControl](../resources/programcontrol.md)    |    Add a programControl to a program.|

<!--
{
  "type": "#page.annotation",
  "description": "Update program",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
