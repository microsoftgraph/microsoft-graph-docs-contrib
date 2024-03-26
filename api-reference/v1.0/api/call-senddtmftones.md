---
title: "call: sendDtmfTones"
description: "Send DTMF tones in a call."
author: "jackry2023"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# call: sendDtmfTones

Namespace: microsoft.graph

Send DTMF tones in a call.

For more information about how to handle operations, see [commsOperation](../resources/commsoperation.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "call_playprompt" } -->
[!INCLUDE [permissions-table](../includes/permissions/call-senddtmftones-permissions.md)]

> **Note:** Permissions are checked when a call is created; no additional permission check is made when calling this API. Calls.AccessMedia.All is only necessary for calls that use app-hosted media.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/sendDtmfTones
POST /communications/calls/{id}/sendDtmfTones
```
> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|tones|[ToneInfo](../resources/toneinfo.md) collection| The tones to be sent.|
|delayBetweenTonesMs|Int32| The milliseconds delay between tones. |
|clientContext|String|Unique client context string. Can have a maximum of 256 characters.|

## Response
If successful, this method returns a `200 OK` response code and a [sendDtmfTonesOperation](../resources/senddtmftonesoperation.md) object in the response body.

## Examples

The following example shows how to send DTMF tones in a call.

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "call-sendDtmfTones"
}-->
```http
POST https://graph.microsoft.com/v1.0/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/microsoft.graph.sendDtmfTones
Content-Type: application/json
Content-Length: 166

{
  "tones": [
    "tone1",
    "tone2",
    "tone3",
    "tone4",
    "tone5",
    "tone6",
    "tone7",
    "tone8",
    "tone9",
    "tone0",
    "star",
    "pound"
  ],
  "delayBetweenTonesMs": 1000,
  "clientContext": "e0be71f1-a14f-4cec-b65a-e7aba5db7c53"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/call-senddtmftones-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/call-senddtmftones-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/call-senddtmftones-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/call-senddtmftones-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/call-senddtmftones-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/call-senddtmftones-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/call-senddtmftones-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/call-senddtmftones-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sendDtmfTonesOperation"
} -->
```http
HTTP/1.1 200 OK
Location: https://graph.microsoft.com/v1.0/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/d36fe651-9f50-484d-bd4b-1e6415eae448

{
  "@odata.type": "#microsoft.graph.sendDtmfTonesOperation",
  "status": "running",
  "clientContext": "e0be71f1-a14f-4cec-b65a-e7aba5db7c53",
  "id": "d36fe651-9f50-484d-bd4b-1e6415eae448"
}

```

### Notification - operation completed

#### Successful case
 
```http
POST https://bot.contoso.com/api/calls
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resourceUrl": "/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/operations/d36fe651-9f50-484d-bd4b-1e6415eae448",
      "resourceData": {
        "@odata.type": "#microsoft.graph.sendDtmfTonesOperation",
        "status": "completed",
        "completionReason": "completedSuccessfully",
        "clientContext": "e0be71f1-a14f-4cec-b65a-e7aba5db7c53",
        "id": "d36fe651-9f50-484d-bd4b-1e6415eae448"
      }
    }
  ]
}
```

#### Error case 1
 
```http
POST https://bot.contoso.com/api/calls
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resourceUrl": "/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/operations/d36fe651-9f50-484d-bd4b-1e6415eae448",
      "resourceData": {
        "@odata.type": "#microsoft.graph.sendDtmfTonesOperation",
        "status": "completed",
        "completionReason": "mediaOperationCanceled",
        "clientContext": "e0be71f1-a14f-4cec-b65a-e7aba5db7c53",
        "id": "d36fe651-9f50-484d-bd4b-1e6415eae448"
      }
    }
  ]
}
```

#### Error case 2
 
```http
POST https://bot.contoso.com/api/calls
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resourceUrl": "/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/operations/d36fe651-9f50-484d-bd4b-1e6415eae448",
      "resourceData": {
        "@odata.type": "#microsoft.graph.sendDtmfTonesOperation",
        "status": "completed",
        "completionReason": "unknown",
        "clientContext": "e0be71f1-a14f-4cec-b65a-e7aba5db7c53",
        "id": "d36fe651-9f50-484d-bd4b-1e6415eae448"
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call: sendDtmfTones",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
