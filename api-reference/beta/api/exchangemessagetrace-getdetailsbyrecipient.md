---
title: "exchangeMessageTrace: getDetailsByRecipient"
description: "Get a list of exchangeMessageTraceDetail objects filtered on the recipient."
author: "Huajian-MSIT"    
ms.date: 12/04/2025            
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# exchangeMessageTrace: getDetailsByRecipient

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [exchangeMessageTraceDetail](../resources/exchangemessagetracedetail.md) objects filtered on the recipient.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "exchangemessagetrace_getdetailsbyrecipient" } -->
[!INCLUDE [permissions-table](../includes/permissions/exchangemessagetrace-getdetailsbyrecipient-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/tracing/messageTraces/{exchangeMessageTraceId}/getDetailsByRecipient(recipientAddress='parameterValue')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|recipientAddress|String|The SMTP email address of the user that the message was addressed to.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [exchangeMessageTraceDetail](../resources/exchangemessagetracedetail.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "exchangemessagetracethis.getdetailsbyrecipient"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/tracing/messageTraces/7e3b2b2e-1b5e-4b17-80cc-2af6c1d9a3b1/getDetailsByRecipient(recipientAddress='robert@contoso.com')
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.exchangeMessageTraceDetail)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.exchangeMessageTraceDetail",
      "id": "7e3b2b2e-1b5e-4b17-80cc-2af6c1d9a3b1",
      "messageId": "<d9683b4c-127b-413a-ae2e-fa7dfb32c69d@contoso.com>",
      "dateTime": "2025-06-13T10:30:05Z",
      "event": "Receive",
      "action": "",
      "description": "Message received by: MN2PR00MB0670.namprd00.prod.outlook.com",
      "data": "<root><MEP ... String=\"Message Body\" /></root>"
    },
    {
      "@odata.type": "#microsoft.graph.exchangeMessageTraceDetail",
      "id": "7e3b2b2e-1b5e-4b17-80cc-2af6c1d9a3b1",
      "messageId": "<d9683b4c-127b-413a-ae2e-fa7dfb32c69d@contoso.com>",
      "dateTime": "2025-06-13T10:30:10Z",
      "event": "Deliver",
      "action": "",
      "description": "The message was successfully delivered.",
      "data": "<root><MEP ... String=\"Message Body\" /></root>"
    }
  ]
}
```

