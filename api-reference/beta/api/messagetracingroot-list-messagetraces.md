---
title: "List messageTraces"
description: "Get a list of exchangeMessageTrace objects."
author: "Huajian-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List messageTraces

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [exchangeMessageTrace](../resources/exchangeMessageTrace.md) objects.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "messagetracingroot-list-messagetraces-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/messagetracingroot-list-messagetraces-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/tracing/messageTraces
```

## Optional query parameters
This method supports the `$filter`, `$top` and `$skipToken` OData query parameters of the [OData query parameters](/graph/query-parameters) to help customize the response.

The default page size for this API is 1000 **exchangeMessageTrace** objects. Use `$top` to customize the page size, within the range of 1 and 5000. To get the next page of message traces, simply apply the entire URL returned in `@odata.nextLink` to the next get-messagetraces request. This URL includes any query parameters you may have specified in the initial request. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [exchangeMessageTrace](../resources/exchangemessagetrace.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_exchangemessagetrace"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/tracing/messageTraces
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exchangeMessageTrace"
}
-->
``` http
HTTP/1.1 200 OK        
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.exchangeMessageTrace",
      "id": "4451a062-48cb-e80d-e8c0-196330437ae6",
      "senderAddress": "sender@contoso.com",
      "recipientAddress": "recipient@contoso.com",
      "messageId": "<d9683b4c-127b-413a-ae2e-fa7dfb32c69d@contoso.com>",
      "receivedDateTime": "2025-06-13T10:30:00Z",
      "subject": "Quarterly Report",
      "size": 45678,
      "fromIP": "192.168.1.100",
      "toIP": "",
      "status": "Delivered"
    }
  ]
}
```

