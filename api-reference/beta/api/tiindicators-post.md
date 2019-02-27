---
title: "Create tiIndicator"
description: "Use this API to create a new tiIndicator."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
---

# Create tiIndicator

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new tiIndicator.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ThreatIndicators.ReadWrite.OwnedBy  |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ThreatIndicators.ReadWrite.OwnedBy |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/tiIndicators
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply a JSON representation of [tiIndicator](../resources/tiindicator.md) object containing at least one observable.

## Response

If successful, this method returns `201, Created` response code and [tiIndicator](../resources/tiindicator.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_tiindicator_from_security"
}-->

```http
POST https://graph.microsoft.com/beta/security/tiIndicators
Content-type: application/json

{
  "tiIndicator": {
    "action": "action-value",
    "activityGroupNames": [
      "activityGroupNames-value"
    ],
    "additionalInformation": "additionalInformation-value",
    "azureTenantId": "azureTenantId-value",
    "confidence": 99,
    "description": "description-value"
  }
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tiIndicator"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "tiIndicator": {
    "action": "action-value",
    "activityGroupNames": [
      "activityGroupNames-value"
    ],
    "additionalInformation": "additionalInformation-value",
    "azureTenantId": "azureTenantId-value",
    "confidence": 99,
    "description": "description-value"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create tiIndicator",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->