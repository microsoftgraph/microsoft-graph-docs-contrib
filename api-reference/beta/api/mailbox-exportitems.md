---
title: "mailbox: exportItems"
description: "Export Exchange mailboxItem objects in full-fidelity FastTransfer format for backup purposes."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailbox: exportItems

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export Exchange [mailboxItem](../resources/mailboxitem.md) objects in full fidelity. This API exports each item as an opaque stream. The data stream isn't intended for parsing, but can be used to import an item back into an Exchange mailbox. For more information, see: [Overview of the mailbox import and export APIs in Microsoft Graph (preview)](/graph/mailbox-import-export-concept-overview)

You can export up to 20 items in a single export request.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailbox_exportitems" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-exportitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/exchange/mailboxes/{mailboxId}/exportItems
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|itemIds|String collection|A collection of identifiers of [mailboxItem](../resources/mailboxitem.md) objects to export. All identifiers in the collection _must_ be for items in the same mailbox. Maximum size of this collection is 20 strings.|

## Response

If successful, this action returns a `200 OK` response code and a collection of [exportItemResponse](../resources/exportitemresponse.md) objects in the response body.

## Examples

### Request

The following example exports two items present in the user's mailbox. The **itemIds** of the items to be exported are specified in the request body.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailboxthis.exportitems",
  "sampleKeys": ["MBX:e0643f21@a7809c93"]
}
-->
```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/exportItems
Content-type: application/json

{
    "itemIds": [
        "EDSVrdi3lRAADmpnf1AAA=",
        "EDSVrdi3lRAAD45b7RAAA="
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailboxthisexportitems-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/mailboxthisexportitems-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailboxthisexportitems-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailboxthisexportitems-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/mailboxthisexportitems-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/mailboxthisexportitems-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.exportItemResponse)"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.exportItemResponse)",
    "value": [
        {
            "itemId": "EDSVrdi3lRAADmpnf1AAA=",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAEu4C+G",
            "data": "VGhpcyBpcyBhIHRlc3QgZGF0YSB0aGF0IHdpbGwgYmUgY29udmVydGVkIHRvIGEgQmFzZTY0IHN0cmVhbQ=="
        },
        {
            "itemId": "EDSVrdi3lRAAD45b7RAAA=",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAD4pUax",
            "data": "VGhpcyBpcyBhIHRlc3QgZGF0YSB0aGF0IHdpbGwgYmUgY29udmVydGVkIHRvIGEgQmFzZTY0IHN0cmVhbQ=="
        }
    ]
}
```
