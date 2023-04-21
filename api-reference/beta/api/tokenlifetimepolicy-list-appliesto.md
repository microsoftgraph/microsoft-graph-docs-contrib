---
title: "List appliesTo"
description: "Get a list of directoryObject objects that a tokenLifetimePolicy object has been applied to."
ms.localizationpriority: medium
author: "lujiangfeng666"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# List appliesTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [directoryObject](../resources/directoryObject.md) objects that a [tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) object has been applied to. The tokenLifetimePolicy can only be applied to [application](../resources/application.md) and [servicePrincipal](../resources/serviceprincipal.md) resources.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.Read.All and Application.Read.All, Policy.ReadWrite.ApplicationConfiguration and Application.Read.All, Directory.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.Read.All and Application.Read.All, Policy.ReadWrite.ApplicationConfiguration and Application.Read.All, Directory.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/tokenLifetimePolicies/{id}/appliesTo
```

## Optional query parameters

This method supports the `$expand`, `$select` and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). When using `$expand` make sure your app requests permissions to read the expanded objects.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_appliesto_4"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4/appliesTo
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-appliesto-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-appliesto-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": [
        {
            "@odata.type": "#microsoft.graph.application",
            "id": "3ccc9971-9ae7-45d6-8de8-263fd25fe116",
            "appId": "6e4a2285-a438-4bcc-9d76-6c45fb91d4b0",
            "applicationTemplateId": "8adf8e6e-67b2-4cf2-a259-e3dc5476c621",
            "displayName": "Contoso IWA App",
            "publisherDomain": "Contoso.com",
            "signInAudience": "AzureADMyOrg"
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List appliesTo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

