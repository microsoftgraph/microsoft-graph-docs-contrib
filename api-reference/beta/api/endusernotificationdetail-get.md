---
title: "Get endUserNotificationDetail"
description: "Get details about an end user notification."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# Get endUserNotificationDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get details about an [end user notification](../resources/endusernotificationdetail.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                            |
|:---------------------------------------|:-----------------------------------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                                                         |
| Application                            | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/endUserNotifications/details/{endUserNotificationDetailId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [endUserNotificationDetail](../resources/endusernotificationdetail.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_endusernotificationdetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications/details/1cdfcb49-1065-46a6-b1c3-672071e20a6b
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.endUserNotificationDetail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "1cdfcb49-1065-46a6-b1c3-672071e20a6b-de-de",
  "sentFrom": {
    "email": "alexwaber@contoso.com",
    "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
    "displayName": "Alex Waber"
  },
  "subject": "Congrats for reporting phish!",
  "emailContent": "<meta http-equiv=\"Content-Type\" content=\"text/html>\">",
  "locale": "en-us",
  "language": "English",
  "isDefaultLanguage": "true"
}
```
