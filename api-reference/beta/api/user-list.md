---
title: "List users"
description: "Retrieve a list of user objects."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: high
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 11/07/2025
---

# List users

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [user](../resources/user.md) objects. This API also returns [agentUser](../resources/agentuser.md) objects.

This operation returns by default only a subset of the more commonly used properties for each **user** and **agentUser**. These _default_ properties are noted in the [Properties](../resources/user.md#properties) section. To get properties that are _not_ returned by default, do a [GET operation](user-get.md) and specify the properties in a `$select` OData query option.

> [!IMPORTANT]
> Guest users cannot call this API. For more information about the permissions for member and guest users, see [What are the default user permissions in Microsoft Entra ID?](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#member-and-guest-users).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|User.ReadBasic.All|User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|User.Read.All|User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All|

### Permissions for specific scenarios
- *User-Mail.ReadWrite.All* is the least privileged permission to read and write the **otherMails** property; also allows to read some identifier-related properties on the user object.
- *User-PasswordProfile.ReadWrite.All* is the least privileged permission to read and write password reset-related properties; also allows to read some identifier-related properties on the user object.
- *User-Phone.ReadWrite.All* is the least privileged permission to read and write the **businessPhones** and **mobilePhone** properties; also allows to read some identifier-related properties on the user object.
- *User.EnableDisableAccount.All* + *User.Read.All* is the least privileged combination of permissions to read and write the **accountEnabled** property.

## HTTP request

The following URL returns a list of **user** and **agentUser** objects, with **agentUser** objects containing an **@odata.type** property of `#microsoft.graph.agentUser`.
<!-- { "blockType": "ignored" } -->
```http
GET /users
```

## Optional query parameters
This method supports [OData query parameters](/graph/query-parameters) to help customize the response:

- `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, `$top`. `$skip` is not supported.
- **Page size limits:** The default page size is 100 objects. The maximum page size is 999 objects, except when using `$select=signInActivity` or `$filter=signInActivity`, the maximum page size is 500.
- Some queries require the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).
- The `$count` and `$search` parameters are not available in Azure AD B2C tenants.

Extension properties also support query parameters as follows:

| Extension type | Comments |
|--|--|
| onPremisesExtensionAttributes 1-15 | Returned only with `$select`. Supports `$filter` (`eq`, `ne`, and `eq` on `null` values). |
| Schema extensions | Returned only with `$select`. Supports `$filter` (`eq`, `ne`, and `eq` on `null` values). |
| Open extensions | Returned only with `$expand`, that is, `users?$expand=extensions`. |
| Directory extensions | Returned only with `$select`. Supports `$filter` (`eq`, `ne`, and `eq` on `null` values). |

For agentUser objects, non-applicable properties are always `null`.

Certain properties cannot be returned within a user collection. The following properties are only supported when [retrieving a single user](./user-get.md): **aboutMe**, **birthday**, **hireDate**, **interests**, **mySite**, **pastProjects**, **preferredName**, **responsibilities**, **schools**, **skills**, **mailboxSettings**.

The following properties are not supported in personal Microsoft accounts and are always `null`: **aboutMe**, **birthday**, **interests**, **mySite**, **pastProjects**, **preferredName**, **responsibilities**, **schools**, **skills**, **streetAddress**.

## Request headers

| Header | Value |
|:------ |:----- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md) and [agentUser](../resources/agentuser.md) objects in the response body. **agentUser** objects include an **@odata.type** property with the value `#microsoft.graph.agentUser` to differentiate them from user objects.

Attempting to use `$select` on the `/users` collection to retrieve properties that cannot be returned within a collection (for example, the request `../users?$select=aboutMe`) returns a `501 Not Implemented` error code.

## Examples

### Example 1: Get all users

#### Request

The following example shows a request. The response includes agent users.

```http
GET https://graph.microsoft.com/beta/users
```

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users_e1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-users-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-users-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-users-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-users-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-users-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-users-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-users-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value":[
    {
      "displayName":"contoso1",
      "mail":"'contoso1@gmail.com",
      "mailNickname":"contoso1_gmail.com#EXT#",
      "otherMails":["contoso1@gmail.com"],
      "proxyAddresses":["SMTP:contoso1@gmail.com"],
      "userPrincipalName":"contoso1_gmail.com#EXT#@contoso.com"
    }
  ]
}
```

### Example 2: Get only agent users

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_agentusers"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/microsoft.graph.agentUser
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-agentusers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-agentusers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-agentusers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agentusers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-agentusers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-agentusers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-agentusers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value":[
    {
      "@odata.type":"#microsoft.graph.agentUser",      
      "displayName":"contoso1",
      "mail":"'contoso1@gmail.com",
      "mailNickname":"contoso1_gmail.com#EXT#",
      "otherMails":["contoso1@gmail.com"],
      "proxyAddresses":["SMTP:contoso1@gmail.com"],
      "userPrincipalName":"contoso1_gmail.com#EXT#@contoso.com"
    }
  ]
}
```

### Example 3: Get a user account using a sign-in name

Find a user account using a sign-in name (also known as a local account).

> **Note:** When filtering for an **issuerAssignedId**, you must supply both **issuer** and **issuerAssignedId**. However, the **issuer** value will be ignored in certain scenarios. For more details on filtering on identities see [objectIdentity resource type](../resources/objectIdentity.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signinname_users_e2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$select=displayName,id&$filter=identities/any(c:c/issuerAssignedId eq 'j.smith@yahoo.com' and c/issuer eq 'My B2C tenant')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signinname-users-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-signinname-users-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signinname-users-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signinname-users-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-signinname-users-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-signinname-users-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-signinname-users-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "displayName": "John Smith",
      "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd"
    }
  ]
}
```

### Example 4: Get guest (B2B) users from a specific tenant or domain by userPrincipalName

#### Request

The following example shows a request. The userPrincipalName value for guest (B2B collaboration) users always contains the "#EXT#" identifier. For example, the userPrincipalName of a user in their home tenant is *AdeleV@adatum.com*. When you invite the user to collaborate in your tenant, *contoso.com*, their userPrincipalName in your tenant is "AdeleV_adatum.com#EXT#@contoso.com".

This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` query string because the request includes the endsWith operator. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**NOTE:** You must encode the reserved character "#" in the userPrincipalName value as "%23" in the request URL. For more information, see [Encoding special characters](/graph/query-parameters#encoding-query-parameters).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_b2b_users"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$select=id,displayName,mail,identities&$filter=endsWith(userPrincipalName,'%23EXT%23@contoso.com')&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-b2b-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-b2b-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-b2b-users-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-b2b-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-b2b-users-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-b2b-users-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,displayName,mail,identities)",
    "@odata.count": 2,
    "value": [
        {
            "id": "39807bd1-3dde-48f3-8165-81ddd4e46de0",
            "displayName": "Adele Vance",
            "mail": "AdeleV@adatum.com",
            "identities": [
                {
                    "signInType": "userPrincipalName",
                    "issuer": "contoso.com",
                    "issuerAssignedId": "AdeleV_adatum.com#EXT#@cntoso.com"
                }
            ]
        }
    ]
}
```

### Example 5: List the last sign-in time of users with a specific display name

#### Request

The following example shows a request. 

> [!Note]
> * Details for the **signInActivity** property require a Microsoft Entra ID P1 or P2 license and the `AuditLog.Read.All` permission.
> * When you specify `$select=signInActivity` or `$filter=signInActivity` when listing users, the maximum page size for `$top` is 500. Requests with `$top` set higher than 500 return pages with up to 500 users. The **signInActivity** property supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`) *but* not with any other filterable properties.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signin_last_time_filter_e4"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$filter=startswith(displayName,'Eric')&$select=displayName,signInActivity
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signin-last-time-filter-e4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-signin-last-time-filter-e4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signin-last-time-filter-e4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signin-last-time-filter-e4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-signin-last-time-filter-e4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-signin-last-time-filter-e4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-signin-last-time-filter-e4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/users?$filter=startswith(displayName,'Eric')&$select=displayName,signInActivity",
  "value": [
    {
      "displayName": "Eric Solomon",
      "signInActivity": {
        "lastSignInDateTime": "2021-07-29T15:53:27Z",
        "lastSignInRequestId": "f3149ee1-e347-4181-b45b-99a1f82b1c00",
        "lastNonInteractiveSignInDateTime": "2021-07-29T17:53:42Z",
        "lastNonInteractiveSignInRequestId": "868efa6a-b2e9-40e9-9b1c-0aaea5b50200",
        "lastSuccessfulSignInDateTime": "",
        "lastSuccessfulSignInRequestId": ""
      }
    }
  ]
}
```

### Example 6: List the last sign-in time of users in a specific time range

#### Request

The following example shows a request. 

> [!Note]
> Details for the **signInActivity** property require a Microsoft Entra ID P1 or P2 license and the `AuditLog.Read.All` permission.

<!-- {
  "blockType": "ignored",
  "name": "get_signin_last_time_range_e5"
}-->
```http
GET https://graph.microsoft.com/beta/users?$filter=signInActivity/lastSignInDateTime le 2021-07-21T00:00:00Z
```

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/users?filter=signInActivity/lastSignInDateTime le 2021-07-21T00:00:00Z",
  "value": [
    {
      "displayName": "Adele Vance",
      "userPrincipalName": "AdeleV@contoso.com",
      "signInActivity": {
        "lastSignInDateTime": "2021-06-17T16:41:33Z",
        "lastSignInRequestId": "d4d31c40-4c36-4775-ad59-7d1e6a171f00",
        "lastNonInteractiveSignInDateTime": "0001-01-01T00:00:00Z",
        "lastNonInteractiveSignInRequestId": "",
        "lastSuccessfulSignInDateTime": "",
        "lastSuccessfulSignInRequestId": ""
      }
    },
    {
      "displayName": "Alex Wilber",
      "userPrincipalName": "AlexW@contoso.com",
      "signInActivity": {
        "lastSignInDateTime": "2021-07-29T15:53:27Z",
        "lastSignInRequestId": "f3149ee1-e347-4181-b45b-99a1f82b1c00",
        "lastNonInteractiveSignInDateTime": "2021-07-29T17:53:42Z",
        "lastNonInteractiveSignInRequestId": "868efa6a-b2e9-40e9-9b1c-0aaea5b50200",
        "lastSuccessfulSignInDateTime": "",
        "lastSuccessfulSignInRequestId": ""
      }
    }
  ]
}
```

### Example 7: Get only a count of users

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_count_only_beta_e6"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/$count
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-count-only-beta-e6-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-count-only-beta-e6-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-count-only-beta-e6-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-count-only-beta-e6-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-count-only-beta-e6-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-count-only-beta-e6-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-count-only-beta-e6-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "String"
} -->
```http
HTTP/1.1 200 OK
Content-type: text/plain

893
```

### Example 8: Use $filter and $top to get one user with a display name that starts with 'a' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` query string because the request has both the `$orderby` and `$filter` query parameters. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

<!-- {
  "blockType": "ignored",
  "name": "list_users_startswith_e7"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$filter=startswith(displayName,'a')&$orderby=displayName&$count=true&$top=1
ConsistencyLevel: eventual
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.count":1,
  "value":[
    {
      "displayName":"a",
      "mail":"a@contoso.com",
      "mailNickname":"a_contoso.com#EXT#",
      "otherMails":["a@contoso.com"],
      "proxyAddresses":["SMTP:a@contoso.com"],
      "userPrincipalName":"a_contoso.com#EXT#@contoso.com"
    }
  ]
}
```

### Example 9: Use $filter to get all users with a mail that ends with 'a@contoso.com', including a count of returned objects, with the results ordered by userPrincipalName

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` query string because the request has both the `$orderby` and `$filter` query parameters, and also uses the `endsWith` operator. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_a_count_endsWith_e8"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$filter=endswith(mail,'a@contoso.com')&$orderby=userPrincipalName&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-a-count-endswith-e8-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-a-count-endswith-e8-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-a-count-endswith-e8-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-a-count-endswith-e8-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-a-count-endswith-e8-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-a-count-endswith-e8-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-a-count-endswith-e8-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users",
  "@odata.count": 1,
  "value": [
    {
      "displayName": "Grady Archie",
      "givenName": "Grady",
      "jobTitle": "Designer",
      "mail": "GradyA@contoso.com",
      "userPrincipalName": "GradyA@contoso.com",
      "id": "e8b753b5-4117-464e-9a08-713e1ff266b3"
      }
    ]
}
```

### Example 10: Use $search to get users with display names that contain the letters 'wa' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$search` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_wa_count_e9"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$search="displayName:wa"&$orderby=displayName&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-wa-count-e9-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-wa-count-e9-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-wa-count-e9-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-wa-count-e9-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-wa-count-e9-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-wa-count-e9-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-wa-count-e9-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.count":7,
  "value":[
    {
      "displayName":"Oscar Ward",
      "givenName":"Oscar",
      "mail":"oscarward@contoso.com",
      "mailNickname":"oscward",
      "userPrincipalName":"oscarward@contoso.com"
    }
  ]
}

```

### Example 11: Use $search to get users with display names that contain the letters 'wa' or the letters 'ad' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$search` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_to_count_e10"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$search="displayName:wa" OR "displayName:ad"&$orderby=displayName&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-to-count-e10-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-to-count-e10-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-to-count-e10-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-to-count-e10-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-to-count-e10-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-to-count-e10-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.count":7,
  "value":[
    {
      "displayName":"Oscar Ward",
      "givenName":"Oscar",
      "mail":"oscarward@contoso.com",
      "mailNickname":"oscward",
      "userPrincipalName":"oscarward@contoso.com"
    },
    {
      "displayName":"contosoAdmin1",
      "mail":"'contosoadmin1@gmail.com",
      "mailNickname":"contosoadmin1_gmail.com#EXT#",
      "proxyAddresses":["SMTP:contosoadmin1@gmail.com"],
      "userPrincipalName":"contosoadmin1_gmail.com#EXT#@contoso.com"
    }
  ]
}
```


### Example 12: Use $filter to get users who are assigned a specific license

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$search` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user_assignedLicenses_e11"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$select=id,mail,assignedLicenses&$filter=assignedLicenses/any(u:u/skuId eq cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-user-assignedlicenses-e11-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-user-assignedlicenses-e11-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-user-assignedlicenses-e11-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-user-assignedlicenses-e11-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-user-assignedlicenses-e11-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-user-assignedlicenses-e11-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-user-assignedlicenses-e11-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,mail,assignedLicenses)",
  "value": [
    {
      "id": "cb4954e8-467f-4a6d-a8c8-28b9034fadbc",
      "mail": "admin@contoso.com",
      "assignedLicenses": [
        {
          "disabledPlans": [],
          "skuId": "cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46"
        }
      ]
    },
    {
      "id": "81a133c2-bdf2-4e67-8755-7264366b04ee",
      "mail": "DebraB@contoso.com",
      "assignedLicenses": [
        {
          "disabledPlans": [],
          "skuId": "cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46"
        }
      ]
    }
  ]
}
```

### Example 13: Get the value of a schema extension for all users

In this example, the ID of the schema extension is `ext55gb1l09_msLearnCourses`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_schemaextension_e12"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$select=ext55gb1l09_msLearnCourses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-schemaextension-e12-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-schemaextension-e12-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-schemaextension-e12-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-schemaextension-e12-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-schemaextension-e12-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-schemaextension-e12-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-schemaextension-e12-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

In the following response, the schema extension property `ext55gb1l09_msLearnCourses` is unassigned in two of the user objects.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(ext55gb1l09_msLearnCourses)",
    "value": [
        {},
        {
            "ext55gb1l09_msLearnCourses": {
                "@odata.type": "#microsoft.graph.ComplexExtensionValue",
                "courseType": "Developer",
                "courseName": "Introduction to Microsoft Graph",
                "courseId": 1
            }
        },
        {}
    ]
}
```

> **Note:** You can also apply `$filter` on the schema extension property to retrieve objects where a property in the collection matches a specified value. The syntax is `/users?$filter={schemaPropertyID}/{propertyName} eq 'value'`. For example, `GET /users?$select=ext55gb1l09_msLearnCourses&$filter=ext55gb1l09_msLearnCourses/courseType eq 'Developer'`. The `eq` and `not` operators are supported.

### Example 14: List all users with a custom security attribute assignment that equals a value

The following example shows how to list all users with a custom security attribute assignment that equals a value. The example retrieves users with a custom security attribute named `AppCountry` with a value that equals `Canada`. The filter value is case sensitive. You must add `ConsistencyLevel=eventual` in the request or the header. You must also include `$count=true` to ensure the request is routed correctly.

User #1

- Attribute set: `Marketing`
- Attribute: `AppCountry`
- Attribute data type: Collection of Strings
- Attribute value: `["India","Canada"]`

User #2

- Attribute set: `Marketing`
- Attribute: `AppCountry`
- Attribute data type: Collection of Strings
- Attribute value: `["Canada","Mexico"]`

To get custom security attribute assignments, the calling principal must be assigned the Attribute Assignment Reader or Attribute Assignment Administrator role and must be granted the *CustomSecAttributeAssignment.Read.All* or *CustomSecAttributeAssignment.ReadWrite.All* permission.

For examples of custom security attribute assignments, see [Examples: Assign, update, list, or remove custom security attribute assignments using the Microsoft Graph API](/graph/custom-security-attributes-examples).

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_filter_users_equals_value_e13"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$count=true&$select=id,displayName,customSecurityAttributes&$filter=customSecurityAttributes/Marketing/AppCountry eq 'Canada'
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-filter-users-equals-value-e13-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-filter-users-equals-value-e13-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/customsecurityattribute-filter-users-equals-value-e13-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-filter-users-equals-value-e13-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-filter-users-equals-value-e13-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-filter-users-equals-value-e13-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/customsecurityattribute-filter-users-equals-value-e13-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,displayName,customSecurityAttributes)",
    "@odata.count": 2,
    "value": [
        {
            "id": "dbaf3778-4f81-4ea0-ac1c-502a293c12ac",
            "displayName": "Jiya",
            "customSecurityAttributes": {
                "Engineering": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "Datacenter@odata.type": "#Collection(String)",
                    "Datacenter": [
                        "India"
                    ]
                },
                "Marketing": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "AppCountry@odata.type": "#Collection(String)",
                    "AppCountry": [
                        "India",
                        "Canada"
                    ],
                    "EmployeeId": "KX19476"
                }
            }
        },
        {
            "id": "6bac433c-48c6-4213-a316-1428de32701b",
            "displayName": "Jana",
            "customSecurityAttributes": {
                "Marketing": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "AppCountry@odata.type": "#Collection(String)",
                    "AppCountry": [
                        "Canada",
                        "Mexico"
                    ],
                    "EmployeeId": "GS46982"
                }
            }
        }
    ]
}
```

### Example 15: List all users whose management is restricted
The following example shows how to list all users whose management is restricted.
#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user_restricted"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$filter=isManagementRestricted eq true&$select=displayName,userPrincipalName
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-user-restricted-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-user-restricted-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-user-restricted-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-user-restricted-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-user-restricted-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-user-restricted-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-user-restricted-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(displayName,userPrincipalName)",
  "value": [
    {
      "displayName": "Adele",
      "userPrincipalName": "Adele@contoso.com"
    },
    {
      "displayName": "Bob",
      "userPrincipalName": "Bob@contoso.com"
    }
  ]
}
```

### Example 16: Use $filter and endsWith to get users with a specified top-level domain in otherMails

#### Request
The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_users_filterOtherMails"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$filter=otherMails/any(x:endswith(x,'.edu'))&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-users-filterothermails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-users-filterothermails-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-users-filterothermails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-users-filterothermails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-users-filterothermails-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-users-filterothermails-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-users-filterothermails-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users",
    "@odata.nextLink": "https://graph.microsoft.com/beta/users?$filter=otherMails%2fany(x%3aendswith(x%2c%27.edu%27))&$skiptoken=m~AQAoOzAzNWVkMDQ1MTE5ZjRlMmNiM2Y2ODQzMmM4YzNiOWJiOzswOzA7Ow",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET users?$select=signInActivity,cloudLicensing",
    "value": [
        {
            "displayName": "Isaiah Langer",
            "mail": "isaiahl@fineartschool.edu",
            "id": "0012cd20-3890-409e-9db3-afc3055ebe22"
        },
        {
            "displayName": "Adele Vance",
            "mail": "adelev@bellowscollege.edu",
            "id": "0012cd20-3890-409e-9db3-afc3055ebe22"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List users",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
