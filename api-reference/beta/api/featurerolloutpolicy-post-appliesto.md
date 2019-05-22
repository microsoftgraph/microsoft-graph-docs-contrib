---
title: "Create appliesTo"
description: "Use this API to create a new appliesTo."
localization_priority: Normal
---

# Create appliesTo

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new appliesTo.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.ReadWrite.FeatureRollout. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /directory/featureRolloutPolicies/{id}/appliesTo/$ref
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply a JSON representation of [directoryObject](../resources/directoryobject.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_featurerolloutpolicy"
}-->

```http
POST https://graph.microsoft.com/beta/directory/featureRolloutPolicies/{id}/appliesTo/$ref
Content-type: application/json

{
  "@odata.id": " https://graph.microsoft.com/beta/directoryObjects/{id-value}"
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "directoryObject": {
    "id": "id-value",
    "deletedDateTime": "datetime-value"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create appliesTo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->