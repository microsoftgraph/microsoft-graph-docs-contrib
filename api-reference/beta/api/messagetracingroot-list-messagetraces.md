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

> [!NOTE]
> * Before you can use this API, ensure that the [Prerequisites](../resources/exchangemessagetrace.md#prerequisites) are met.
> * This API has a throttling limit of 100 requests per 5 minutes. For more information, see [Microsoft Graph service-specific throttling limits](/graph/throttling-limits).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "messagetracingroot_list_messagetraces" } -->
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

To retrieve message traces for a specific time period, filter on `receivedDateTime` by specifying both bounds: `$filter=receivedDateTime ge {startDateTime} and receivedDateTime le {endDateTime}`. The time interval must not exceed 10 days, `{startDateTime}` must not be more than 90 days before the current date, and `{endDateTime}` must not be later than the current date. Specify `{startDateTime}` and `{endDateTime}` as ISO 8601 format (`YYYY-MM-DDThh:mm:ssZ`).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [exchangeMessageTrace](../resources/exchangemessagetrace.md) objects in the response body.

## Examples

### Example 1: List message traces

The following example shows how to retrieve the default top 1,000 message-trace information for the previous 48 hours, which is the default time period.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_exchangemessagetrace"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/tracing/messageTraces
```


#### Response

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/tracing/messageTraces",
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

### Example 2: Get message trace by message trace ID

The following example returns the message trace that matches the specified message trace ID (the `id` property).

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_exchangemessagetrace_by_id"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/tracing/messageTraces?$filter=id eq 'a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45'
```


#### Response

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/tracing/messageTraces",
  "value": [
    {
      "id": "a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45",
      "senderAddress": "sender@contoso.com",
      "recipientAddress": "recipient@contoso.com",
      "messageId": "<0d7f3a2b-6c1e-4f9a-9b9a-3c0a2b1c4d5e@contoso.com>",
      "receivedDateTime": "2026-01-18T10:30:00Z",
      "subject": "Daily report",
      "size": 45678,
      "fromIP": "203.0.113.10",
      "toIP": "",
      "status": "delivered"
    }
  ]
}
```

### Example 3: Retrieve message traces for a specific time period

The following example shows how to retrieve message trace information for messages between `2026-01-20T00:00:00Z` and `2026-01-23T00:00:00Z`  (UTC) by filtering on `receivedDateTime`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_exchangemessagetrace_bytimerange"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/tracing/messageTraces?$filter=receivedDateTime ge 2026-01-20T00:00:00Z and receivedDateTime le 2026-01-23T00:00:00Z
```


#### Response

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/tracing/messageTraces",
  "value": [
    {
      "id": "b7c1f4d2-9a6e-4c3b-8f2d-1e0a6c5b4d3f",
      "senderAddress": "sender@contoso.com",
      "recipientAddress": "recipient@contoso.com",
      "messageId": "<1f2e3d4c-5b6a-7980-9a0b-1c2d3e4f5a6b@contoso.com>",
      "receivedDateTime": "2026-01-21T14:12:34Z",
      "subject": "Monthly report",
      "size": 51234,
      "fromIP": "203.0.113.25",
      "toIP": "",
      "status": "delivered"
    }
  ]
}
```

### Example 4: List message traces by subject and recipient

The following example lists message traces for messages where the subject contains `Weekly digest` and the recipient address is `test@contoso.com`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_exchangemessagetrace_by_subject_and_recipient"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/tracing/messageTraces?$filter=contains(subject, 'Weekly digest') and recipientAddress eq 'test@contoso.com'
```


#### Response

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/tracing/messageTraces",
  "value": [
    {
      "id": "c1d2e3f4-5678-49ab-9cde-0123456789ab",
      "senderAddress": "sender@contoso.com",
      "recipientAddress": "test@contoso.com",
      "messageId": "<2a3b4c5d-6e7f-8091-a2b3-c4d5e6f78901@contoso.com>",
      "receivedDateTime": "2026-01-22T09:15:00Z",
      "subject": "Weekly digest: updates for your team",
      "size": 28765,
      "fromIP": "203.0.113.25",
      "toIP": "",
      "status": "delivered"
    }
  ]
}
```