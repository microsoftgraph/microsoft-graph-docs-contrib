---
title: "Delete authenticationContextClassReference"
description: "Delete an authenticationContextClassReference object that's not published or used by a conditional access policy."
ms.localizationpriority: medium
author: "calebb"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete authenticationContextClassReference

Namespace: microsoft.graph

Delete an [authenticationContextClassReference](../resources/authenticationcontextclassreference.md) object that's not published or used by a conditional access policy.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                                       |
|:--------------------------------------|:----------------------------------------------------------------------------------|
|Delegated (work or school account)     | Policy.Read.ConditionalAccess |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Policy.Read.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identity/conditionalAccess/authenticationContextClassReferences/{id}
```
## Optional query parameters

This method does not support optional query parameters to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
This method will return an error when deleting a published authenticationContextClassReference. A published authenticationContextClassReference has has the property isAvailable is set to true. The error returned will be `403 Forbidden` response code. If authenticationContextClassReference is used by any Conditional Access policy a `200 Bad Request` will be returned.  This helps prevent an authenticationContextClassReference from being deleted, that may still be in use.

## Examples

### Request

The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_authenticationcontextclassreference"
}-->


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationContextClassReference"
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete authenticationContextClassReference",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
