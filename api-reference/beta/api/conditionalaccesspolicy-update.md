---
title: "Update conditionalaccesspolicy"
description: "Update the properties of conditionalaccesspolicy object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Update conditionalaccesspolicy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of conditionalaccesspolicy object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /conditionalaccess/policies/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|conditions|conditionalAccessConditions||
|createdDateTime|DateTimeOffset||
|description|String||
|displayName|String||
|grantControls|conditionalAccessGrantControls||
|modifiedDateTime|DateTimeOffset||
|sessionControls|conditionalAccessSessionControls||
|state|string| Possible values are: `enabled`, `disabled`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_conditionalaccesspolicy"
}-->

```http
PATCH https://graph.microsoft.com/beta/conditionalaccess/policies/{id}
Content-type: application/json

{
  "createdDateTime": "datetime-value",
  "modifiedDateTime": "datetime-value",
  "displayName": "displayName-value",
  "description": "description-value",
  "state": "state-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "createdDateTime": "datetime-value",
  "modifiedDateTime": "datetime-value",
  "displayName": "displayName-value",
  "description": "description-value",
  "state": "state-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update conditionalaccesspolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->