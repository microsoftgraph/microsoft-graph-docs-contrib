---
title: "List mailboxes"
description: "Get a list of mailboxes that belong to a user."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List mailboxes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of mailboxes that belong to a user. Currently the mailbox types supported are user's Primary & In-Place Archive. To learn how to get a list of users in a tenant, see [list users](../api/user-list.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "usersettings-list-exchange-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/usersettings-list-exchange-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/megan@contoso.com/settings/exchange
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [exchangeSettings](../resources/exchangesettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_exchangesettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/megan@contoso.com/settings/exchange
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exchangeSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('megan%40contoso.com')/settings/exchange/$entity",
    "primaryMailboxId": "MBX:e0643f21@a7809c93",
    "inPlaceArchiveMailboxId": "MBX:4eba5149@a7809c93"
}
```
