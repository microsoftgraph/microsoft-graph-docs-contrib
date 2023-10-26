---
title: "Get endUserNotification"
description: "Read the properties and relationships of an endUserNotification object."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# Get endUserNotification

Namespace: microsoft.graph

Read the properties and relationships of an [endUserNotification](../resources/endusernotification.md) object.

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
GET /security/attackSimulation/endUserNotifications
```

## Optional query parameters

This method doesn't currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [endUserNotification](../resources/endusernotification.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_endusernotification"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/attackSimulation/endUserNotifications
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.endUserNotification"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "1cdfcb49-1065-46a6-b1c3-672071e20a6b",
  "displayName": "Microsoft End User Notification Page",
  "description": "Microsoft End User Notification ",
  "notificationType": "PositiveReinforcement",
  "status": "Ready",
  "source": "Global",
  "createdBy": {
    "email": "alexwaber@contoso.com",
    "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
    "displayName": "Alex Waber"
  },
  "createdDateTime": "2022-01-12T03:15:01.5906699Z",
  "lastModifiedBy": {
    "email": "alexwaber@contoso.com",
    "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
    "displayName": "Alex Waber"
  },
  "lastModifiedDateTime": "2021-10-07T12:23:18.8157586Z",
  "supportedLocales": [
    "en-us",
    "de-de"
  ]
}
```
