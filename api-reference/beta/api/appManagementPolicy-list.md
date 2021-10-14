---
title: "List appManagementPolicies"
description: "Get a list of application management policies."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# List appManagementPolicies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [appManagementPolicy](../resources/appManagementPolicy.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                |
| :------------------------------------- | :--------------------------------------------------------- |
| Delegated (work or school account)     | Policy.Read.All, Policy.ReadWrite.ApplicationConfiguration |
| Delegated (personal Microsoft account) | Not supported.                                             |
| Application                            | Policy.Read.All, Policy.ReadWrite.ApplicationConfiguration |

## Optional query parameters

This method supports the `$select`, `$filter`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/appManagementPolicies
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appManagementPolicy](../resources/appManagementPolicy.md) object in the response body.

## Examples

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_appManagementPolicies"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/appManagementPolicies
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-appmanagementpolicies-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-appmanagementpolicies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-appmanagementpolicies-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-appmanagementpolicies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appManagementPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/appManagementPolicies",
   "value": [
      {
         "id": "db9d4b58-3488-4da4-9994-49773c454e33",
         "displayName": "Custom app management policy",
         "description": "Custom policy that enforces app management restrictions on specific applications and service principals.",
         "isEnabled": false,
         "restrictions": {
            "passwordCredentials": [
               {
                  "restrictionType": "passwordAddition",
                  "maxLifetime": null,
                  "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z"
               },
               {
                  "restrictionType": "passwordLifetime",
                  "maxLifetime": "P4DT12H30M5S",
                  "restrictForAppsCreatedAfterDateTime": "2017-10-19T10:37:00Z"
               }
            ]
         }
      }
   ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "get appManagementPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
