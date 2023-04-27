---
title: "Create appManagementPolicy"
description: "Create an application management policy."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Create appManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [appManagementPolicy](../resources/appManagementPolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Policy.ReadWrite.ApplicationConfiguration   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Policy.ReadWrite.ApplicationConfiguration   |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /policies/appManagementPolicies
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

> [!IMPORTANT]
> Service principals with a createdDateTime `null` are treated as having being created on 01/01/2019.
## Request body

In the request body, supply a JSON representation of the [appManagementPolicy](../resources/appmanagementpolicy.md) object.

You can specify the following properties when creating an **appManagementPolicy**.

| Property     | Type                                                        | Description                                                            |
| :----------- | :---------------------------------------------------------- | :--------------------------------------------------------------------- |
| displayName  | String                                                      | The display name of the policy. Required.                                       |
| description  | String                                                      | The description of the policy. Required.                                       |
| isEnabled    | Boolean                                                     | Denotes whether the policy is enabled.  Optional.                                    |
| restrictions | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply to an application or service principal object. Optional. |

## Response

If successful, this method returns a `201 Created` response code with the new [appManagementPolicy](../resources/appmanagementpolicy.md) object in the response payload.

## Examples

### Request

The following is an example of the request. This request created an app management policy with the following settings:

- Enables the policy.
- Blocks creating of new passwords for applications and service principals created on or after 2019-10-19 at 10:37 AM UTC time.
- Enforces lifetime on password secrets and key credentials for applications created on or after 2014-10-19 at 10:37 AM UTC time.
- Limits password secrets for apps and service principals created after 2019-10-19 at 10:37 AM UTC time to less than 4 days, 12 hours, 30 minutes and 5 seconds.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_appManagementPolicy"
}-->

```http
POST https://graph.microsoft.com/beta/policies/appManagementPolicies

{
    "displayName": "Credential management policy",
    "description": "Cred policy sample",
    "isEnabled": true,
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
                  "restrictForAppsCreatedAfterDateTime": "2014-10-19T10:37:00Z"
               },
               {
                  "restrictionType": "symmetricKeyAddition",
                  "maxLifetime": null,
                  "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z"
               },
               {
                  "restrictionType": "symmetricKeyLifetime",
                  "maxLifetime": "P4D",
                  "restrictForAppsCreatedAfterDateTime": "2014-10-19T10:37:00Z"
               }
            ],
            "keyCredentials": [
               {
                  "restrictionType": "asymmetricKeyLifetime",
                  "maxLifetime": "P90D",
                  "restrictForAppsCreatedAfterDateTime": "2014-10-19T10:37:00Z"
               }
            ]
         }
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-appmanagementpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-appmanagementpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-appmanagementpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-appmanagementpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-appmanagementpolicy-php-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/appManagementPolicies/$entity",
    "id": "a4ab1ed9-46bb-4bef-88d4-86fd6398dd5d",
    "displayName": "credential management policy",
    "description": "Lorem ipsum",
    "isEnabled": true,
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
                "restrictForAppsCreatedAfterDateTime": "2018-10-19T10:37:00Z"
            }
        ]
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "create appManagementPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
