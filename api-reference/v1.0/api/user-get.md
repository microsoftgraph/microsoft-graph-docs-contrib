---
title: "Get a user"
description: "Retrieve the properties and relationships of user object."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: high
ms.subservice: entra-users
doc_type: apiPageType
---

# Get a user

Namespace: microsoft.graph

Retrieve the properties and relationships of user object.

This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the [Properties](../resources/user.md#properties) section. To get properties that are _not_ returned by default, do a [GET operation](user-get.md) for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports [extensions](/graph/extensibility-overview), you can also use the `GET` operation to get custom properties and extension data in a **user** instance.

Customers through Microsoft Entra ID for customers can also use this API operation to retrieve their details.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "user_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-get-permissions.md)]

> [!TIP]
> 1. Calling the `/me` endpoint requires a signed-in user and therefore a delegated permission. Application permissions are not supported when using the `/me` endpoint.
>2. The `User.Read` permission allows the app to read the profile, and discover relationships such as the group membership, reports and manager of the signed-in user only.

## HTTP request
For a specific user:
<!-- { "blockType": "ignored" } -->
```http
GET /me
GET /users/{id | userPrincipalName}
```

> [!TIP]
>
> + When the **userPrincipalName** begins with a `$` character, the GET request URL syntax `/users/$x@y.com` fails with a `400 Bad Request` error code. This is because this request URL violates the OData URL convention, which expects only system query options to be prefixed with a `$` character. Remove the slash (/) after `/users` and enclose the **userPrincipalName** in parentheses and single quotes, as follows: `/users('$x@y.com')`. For example, `/users('$AdeleVance@contoso.com')`.
> + To query a B2B user using the **userPrincipalName**, encode the hash (#) character. That is, replace the `#` symbol with `%23`. For example, `/users/AdeleVance_adatum.com%23EXT%23@contoso.com`.

For the signed-in user:
<!-- { "blockType": "ignored" } -->
```http
GET /me
```

## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to retrieve specific user properties, including those that aren't returned by default.

By default, only a limited set of properties are returned ( _businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName_ ).

To return an alternative property set, you must specify the desired set of [user](../resources/user.md) properties using the OData `$select` query parameter. For example, to return _displayName_, _givenName_, and _postalCode_, add the following expression to your query `$select=displayName,givenName,postalCode`.

Extension properties also support query parameters as follows:

| Extension type                     | Comments                                                                            |
|------------------------------------|-------------------------------------------------------------------------------------|
| onPremisesExtensionAttributes 1-15 | Returned only with `$select`.                                                       |
| Schema extensions                  | Returned only with `$select`.                                                       |
| Open extensions                    | Returned only through the [Get open extension](opentypeextension-get.md) operation. |
| Directory extensions               | Returned only with `$select`.                                                       |

## Request headers
| Header       | Value|
|:-----------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [user](../resources/user.md) object in the response body. It returns the default properties unless you use `$select` to specify specific properties.

This method returns `202 Accepted` when the request has been processed successfully but the server requires more time to complete related background operations.

## Examples

### Example 1: Standard users request

#### Request

By default, only a limited set of properties are returned ( _businessPhones, displayName, givenName, id, jobTitle, mail, mobilePhone, officeLocation, preferredLanguage, surname, userPrincipalName_ ). This example illustrates the default request and response.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user_1"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-user-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-user-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-user-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-user-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-user-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-user-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-user-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-user-1-python-snippets.md)]
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
Content-type: application/json

{
  "businessPhones": [
       "+1 425 555 0109"
   ],
   "displayName": "Adele Vance",
   "givenName": "Adele",
   "jobTitle": "Retail Manager",
   "mail": "AdeleV@contoso.com",
   "mobilePhone": "+1 425 555 0109",
   "officeLocation": "18/2111",
   "preferredLanguage": "en-US",
   "surname": "Vance",
   "userPrincipalName": "AdeleV@contoso.com",
   "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd"
}
```


### Example 2: Signed-in user request

You can get the user information for the signed-in user by replacing `/users/{id | userPrincipalName}` with `/me`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-user-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-user-python-snippets.md)]
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
Content-type: application/json

{
  "businessPhones": [
       "+1 425 555 0109"
   ],
   "displayName": "Adele Vance",
   "givenName": "Adele",
   "jobTitle": "Retail Manager",
   "mail": "AdeleV@contoso.com",
   "mobilePhone": "+1 425 555 0109",
   "officeLocation": "18/2111",
   "preferredLanguage": "en-US",
   "surname": "Vance",
   "userPrincipalName": "AdeleV@contoso.com",
   "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd"
}
```

### Example 3: Use $select to retrieve specific properties of a user

To retrieve specific properties, use the OData `$select` query parameter. For example, to return _displayName_, _givenName_, _postalCode_, and _identities_, you would use the add the following to your query `$select=displayName,givenName,postalCode,identities`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user_select_e3"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd?$select=displayName,givenName,postalCode,identities
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-user-select-e3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-user-select-e3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-user-select-e3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-user-select-e3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-user-select-e3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-user-select-e3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-user-select-e3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-user-select-e3-python-snippets.md)]
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
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(displayName,givenName,postalCode,identities)/$entity",
    "displayName": "Adele Vance",
    "givenName": "Adele",
    "postalCode": "98004",
    "identities": [
        {
            "signInType": "userPrincipalName",
            "issuer": "contoso.com",
            "issuerAssignedId": "AdeleV@contoso.com"
        }
    ]
}
```

### Example 4: Get the value of a schema extension for a user

In this example, the ID of the schema extension is `ext55gb1l09_msLearnCourses`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_schemaextension_selectCourse"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e?$select=ext55gb1l09_msLearnCourses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-schemaextension-selectcourse-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-schemaextension-selectcourse-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-schemaextension-selectcourse-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-schemaextension-selectcourse-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-schemaextension-selectcourse-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-schemaextension-selectcourse-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-schemaextension-selectcourse-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-schemaextension-selectcourse-python-snippets.md)]
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
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(ext55gb1l09_msLearnCourses)/$entity",
    "ext55gb1l09_msLearnCourses": {
        "@odata.type": "#microsoft.graph.ComplexExtensionValue",
        "courseType": "Developer",
        "courseName": "Introduction to Microsoft Graph",
        "courseId": 1
    }
}
```

### Example 5: Get the custom security attribute assignments for a user

The following example shows how to get the custom security attribute assignments for a user.

Attribute #1

- Attribute set: `Engineering`
- Attribute: `Project`
- Attribute data type: Collection of Strings
- Attribute value: `["Baker","Cascade"]`

Attribute #2

- Attribute set: `Engineering`
- Attribute: `CostCenter`
- Attribute data type: Collection of Integers
- Attribute value: `[1001]`

Attribute #3

- Attribute set: `Engineering`
- Attribute: `Certification`
- Attribute data type: Boolean
- Attribute value: `true`

Attribute #4

- Attribute set: `Marketing`
- Attribute: `EmployeeId`
- Attribute data type: String
- Attribute value: `"QN26904"`

To get custom security attribute assignments, the calling principal must be assigned the Attribute Assignment Reader or Attribute Assignment Administrator role and must be granted the *CustomSecAttributeAssignment.Read.All* or *CustomSecAttributeAssignment.ReadWrite.All* permission.

For more examples of custom security attribute assignments, see [Examples: Assign, update, list, or remove custom security attribute assignments using the Microsoft Graph API](/graph/custom-security-attributes-examples).

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user_customsecurityattributes"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/{id}?$select=customSecurityAttributes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-user-customsecurityattributes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-user-customsecurityattributes-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-user-customsecurityattributes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-user-customsecurityattributes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-user-customsecurityattributes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-user-customsecurityattributes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-user-customsecurityattributes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-user-customsecurityattributes-python-snippets.md)]
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
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(customSecurityAttributes)/$entity",
    "customSecurityAttributes": {
        "Marketing": {
            "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
            "EmployeeId": "QN26904"
        },
        "Engineering": {
            "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
            "Project@odata.type": "#Collection(String)",
            "Project": [
                "Baker",
                "Cascade"
            ],
            "CostCenter@odata.type": "#Collection(Int32)",
            "CostCenter": [
                1001
            ],
            "Certification": true
        }
    }
}
```

If there are no custom security attributes assigned to the user or if the calling principal doesn't have access, the following will be the response:

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(customSecurityAttributes)/$entity",
    "customSecurityAttributes": null
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get user",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
