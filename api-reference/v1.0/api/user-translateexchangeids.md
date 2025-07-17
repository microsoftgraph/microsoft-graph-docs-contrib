---
title: "user: translateExchangeIds"
description: "Translate identifiers of Outlook-related resources between formats."
author: "SuryaLashmiS"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 04/04/2024
---

# user: translateExchangeIds

Namespace: microsoft.graph

Translate identifiers of Outlook-related resources between formats.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_translateexchangeids" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-translateexchangeids-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/translateExchangeIds
POST /users/{id|userPrincipalName}/translateExchangeIds
```

## Request headers

| Name | Value |
|:-----|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

| Parameter | Type | Description |
|:----------|:-----|:------------|
| inputIds | String collection | A collection of identifiers to convert. All identifiers in the collection MUST have the same source ID type, and MUST be for items in the same mailbox. Maximum size of this collection is 1000 strings. |
| sourceIdType | exchangeIdFormat | The ID type of the identifiers in the `InputIds` parameter. |
| targetIdType | exchangeIdFormat | The requested ID type to convert to. |

### exchangeIdFormat values

| Member | Description |
|:-------|:------------|
| entryId | The binary entry ID format used by MAPI clients. |
| ewsId | The ID format used by Exchange Web Services clients. |
| immutableEntryId | The binary MAPI-compatible immutable ID format. |
| restId | The default ID format used by Microsoft Graph. |
| restImmutableEntryId | The immutable ID format used by Microsoft Graph. |

The binary formats (`entryId` and `immutableEntryId`) are URL-safe base64 encoded. URL-safeness is implemented by modifying the base64 encoding of the binary data in the following way:

- Replace `+` with `-`
- Replace `/` with `_`
- Remove any trailing padding characters (`=`)
- Add an integer to the end of the string indicating how many padding characters were in the original (`0`, `1`, or `2`)

## Response

If successful, this method returns `200 OK` response code and a [convertIdResult](../resources/convertidresult.md) collection in the response body.

## Example

The following example shows how to convert multiple identifiers from the normal REST API format (`restId`) to the REST immutable format (`restImmutableEntryId`).

### Request

Here is the example request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_translateexchangeids"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/translateExchangeIds
Content-Type: application/json

{
  "inputIds" : [
    "{rest-formatted-id-1}",
    "{rest-formatted-id-2}"
  ],
  "sourceIdType": "restId",
  "targetIdType": "restImmutableEntryId"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-translateexchangeids-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-translateexchangeids-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-translateexchangeids-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-translateexchangeids-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-translateexchangeids-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-translateexchangeids-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-translateexchangeids-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-translateexchangeids-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here is the example response
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.convertIdResult",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "sourceId": "{rest-formatted-id-1}",
      "targetId": "{rest-immutable-formatted-id-1}"
    },
    {
      "sourceId": "{rest-formatted-id-2}",
      "targetId": "{rest-immutable-formatted-id-2}"
    }
  ]
}
```

