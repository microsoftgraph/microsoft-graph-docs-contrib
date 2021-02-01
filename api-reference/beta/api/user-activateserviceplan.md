---
title: "user: activateServicePlan"
description: "Activate a service plan with a given `servicePlanId` and `skuId` for a given user."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "users"
doc_type: apiPageType
---

# user: activateServicePlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate a service plan with a given `servicePlanId` and `skuId` for a given user.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
| :--- | :--- |
| Delegated (work or school account) | Directory.ReadWrite.All, Directory.ReadWriteAdvanced.All |
| Delegated (personal Microsoft account) | Not Supported. |
| Application | Directory.ReadWrite.All, Directory.ReadWriteAdvanced.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /users/{id | userPrincipalName}/activateServicePlan
```

## Request headers

| Name | Description |
| :--- | :--- |
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameter:

| Parameter | Type | Description |
| :--- | :--- | :--- |
| servicePlanId | Guid | PlanId of the ServicePlan to activate |
| skuId | Guid | SkuId of SKU the service plan is on |

## Response

If successful, this action returns a `204 NO CONTENT` response code.

## Examples

### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "user_activateserviceplan"
}
-->

``` http
POST https://graph.microsoft.com/beta/me/activateServicePlan
Content-type: application/json
Content-length: 115

{
  "servicePlanId": "28f42d6f-8034-4a0f-9d8a-a218a63b3299",
  "skuId": "465a2a90-5e59-456d-a7b8-127b9fb2e484"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
