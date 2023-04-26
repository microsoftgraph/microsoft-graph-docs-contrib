---
title: "Manage custom security attribute assignments (preview)"
description: "Learn how to assign, update, list, or remove custom security attribute assignments for users and service principals using Microsoft Graph."
author: "rolyon"
ms.author: rolyon
ms.reviewer: rolyon
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "directory-management"
ms.date: 02/14/2023
---

# Manage custom security attribute assignments (preview)

> [!IMPORTANT]
> The custom security attributes feature is currently in preview. See the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.

[Custom security attributes](/graph/api/resources/custom-security-attributes-overview) in Azure Active Directory (Azure AD) are business-specific attributes (key-value pairs) that you can define and assign to Azure AD objects. These attributes can be used to store information, categorize objects, or enforce fine-grained access control over specific Azure resources through Azure attribute-based access control (Azure ABAC).

Custom security attributes are supported for users and service principals only. This article provides examples of how to assign, update, list, or remove different types of custom security attributes for users and applications using Microsoft Graph.

## Prerequisites

- Create custom security attributes. For more information about how to define and manage custom security attribute definitions, see [Overview of custom security attributes using Microsoft Graph](/graph/api/resources/custom-security-attributes-overview).
- For delegated scenarios, the calling must be assigned the following permissions and administrative roles.
  - To assign, update, or remove:
    - Azure AD roles: [Attribute Assignment Administrator](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json#attribute-assignment-administrator)
    - Microsoft Graph permissions:
        - Users: CustomSecAttributeAssignment.ReadWrite.All and User.Read.All
        - Service principals: CustomSecAttributeAssignment.ReadWrite.All and Application.Read.All
  - To read:
      - Azure AD roles: [Attribute Assignment Reader](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json#attribute-reader) or [Attribute Assignment Administrator](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json#attribute-assignment-administrator)
      - Microsoft Graph permissions:
          - Users: CustomSecAttributeAssignment.Read.All and User.Read.All
          - Service principals: CustomSecAttributeAssignment.Read.All and Application.Read.All

## Assign custom security attributes

### Example 1: Assign a custom security attribute with a string value to a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to assign a custom security attribute with a string value to a user.

- Attribute set: `Engineering`
- Attribute: `ProjectDate`
- Attribute data type: String
- Attribute value: `"2022-10-01"`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_assign_user_string"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "ProjectDate":"2022-10-01"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-assign-user-string-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-string-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-string-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-string-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-string-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Assign a custom security attribute with a string value to a service principal

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to assign a custom security attribute with a string value to a service principal.

- Attribute set: `Engineering`
- Attribute: `ProjectDate`
- Attribute data type: String
- Attribute value: `"2022-10-01"`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_assign_serviceprincipal_string"
}-->
```http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "ProjectDate":"2022-10-01"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-assign-serviceprincipal-string-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-serviceprincipal-string-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-serviceprincipal-string-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-serviceprincipal-string-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-serviceprincipal-string-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 3: Assign a custom security attribute with a multi-string value to a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to assign a custom security attribute with a multi-string value to a user.

- Attribute set: `Engineering`
- Attribute: `Project`
- Attribute data type: Collection of Strings
- Attribute value: `["Baker","Cascade"]`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_assign_user_multistring"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "Project@odata.type":"#Collection(String)",
            "Project":["Baker","Cascade"]
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-assign-user-multistring-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-multistring-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-multistring-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-multistring-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-multistring-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 4: Assign a custom security attribute with an integer value to a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to assign a custom security attribute with an integer value to a user.

- Attribute set: `Engineering`
- Attribute: `NumVendors`
- Attribute data type: Integer
- Attribute value: `4`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_assign_user_integer"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "NumVendors@odata.type":"#Int32",
            "NumVendors":4
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-assign-user-integer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-integer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-integer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-integer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-integer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 5: Assign a custom security attribute with a multi-integer value to a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to assign a custom security attribute with a multi-integer value to a user.

- Attribute set: `Engineering`
- Attribute: `CostCenter`
- Attribute data type: Collection of Integers
- Attribute value: `[1001,1003]`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_assign_user_multiinteger"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "CostCenter@odata.type":"#Collection(Int32)",
            "CostCenter":[1001,1003]
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-assign-user-multiinteger-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-multiinteger-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-multiinteger-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-multiinteger-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-multiinteger-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 6: Assign a custom security attribute with a Boolean value to a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to assign a custom security attribute with a Boolean value to a user.

- Attribute set: `Engineering`
- Attribute: `Certification`
- Attribute data type: Boolean
- Attribute value: `true`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_assign_user_boolean"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "Certification":true
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-assign-user-boolean-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-boolean-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-boolean-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-boolean-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-boolean-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Update custom security attribute assignments

### Example 1: Update a custom security attribute assignment with an integer value for a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to update a custom security attribute assignment with an integer value for a user.

- Attribute set: `Engineering`
- Attribute: `NumVendors`
- Attribute data type: Integer
- Attribute value: `8`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_update_user_integer"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "NumVendors@odata.type":"#Int32",
            "NumVendors":8
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-update-user-integer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-update-user-integer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-update-user-integer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-update-user-integer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-update-user-integer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```


### Example 2: Update a custom security attribute assignment with a Boolean value for a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to update a custom security attribute assignment with a Boolean value for a user.

- Attribute set: `Engineering`
- Attribute: `Certification`
- Attribute data type: Boolean
- Attribute value: `false`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_update_user_boolean"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "Certification":false
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-update-user-boolean-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-update-user-boolean-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-update-user-boolean-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-update-user-boolean-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-update-user-boolean-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## List custom security attribute assignments

### Example 1: Get the custom security attribute assignments for a user

The following example shows how to use the [Get user](/graph/api/user-get?view=graph-rest-beta&preserve-view=true) API to get the custom security attribute assignments for a user.

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

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_get_for_user"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}?$select=customSecurityAttributes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-get-for-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-get-for-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/customsecurityattribute-get-for-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-get-for-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-get-for-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-get-for-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response


<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(customSecurityAttributes)/$entity",
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

If there are no custom security attributes assigned to the user or if the calling principal does not have access, the following will be the response:

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(customSecurityAttributes)/$entity",
    "customSecurityAttributes": null
}
```

### Example 2: List all users with a custom security attribute assignment that equals a value

The following example shows how to use the [List users](/graph/api/user-list?view=graph-rest-beta&preserve-view=true) API to list all users with a custom security attribute assignment that equals a value. The example retrieves users with a custom security attribute named `AppCountry` with a value that equals `Canada`. The filter value is case sensitive. You must add `ConsistencyLevel=eventual` in the request or the header. You must also include `$count=true` to ensure the request is routed correctly.

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

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_filter_users_equals_value"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$count=true&$select=id,displayName,customSecurityAttributes&$filter=customSecurityAttributes/Marketing/AppCountry eq 'Canada'
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-filter-users-equals-value-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-filter-users-equals-value-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/customsecurityattribute-filter-users-equals-value-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-filter-users-equals-value-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-filter-users-equals-value-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-filter-users-equals-value-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
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

### Example 3: List all users with a custom security attribute assignment that starts with a value

The following example shows how to use the [List users](/graph/api/user-list?view=graph-rest-beta&preserve-view=true) API to list all users with a custom security attribute assignment that starts with a value. The example retrieves users with a custom security attribute named `EmployeeId` with a value that starts with `GS`. The filter value is case sensitive. You must add `ConsistencyLevel=eventual` in the request or the header. You must also include `$count=true` to ensure the request is routed correctly.

User #1

- Attribute set: `Marketing`
- Attribute: `EmployeeId`
- Attribute data type: String
- Attribute value: `"KX19476"`

User #2

- Attribute set: `Marketing`
- Attribute: `EmployeeId`
- Attribute data type: String
- Attribute value: `"GS46982"`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_filter_users_starts_with_value"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$count=true&$select=id,displayName,customSecurityAttributes&$filter=startsWith(customSecurityAttributes/Marketing/EmployeeId,'GS')
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-filter-users-starts-with-value-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-filter-users-starts-with-value-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/customsecurityattribute-filter-users-starts-with-value-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-filter-users-starts-with-value-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-filter-users-starts-with-value-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-filter-users-starts-with-value-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response


<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,displayName,customSecurityAttributes)",
    "@odata.count": 1,
    "value": [
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

### Example 4: List all users with a custom security attribute assignment that does not equal a value

The following example shows how to use the [List users](/graph/api/user-list?view=graph-rest-beta&preserve-view=true) API to list all users with a custom security attribute assignment that does not equal a value. The example retrieves users with a custom security attribute named `AppCountry` with a value that does not equal `Canada`. The filter value is case sensitive. You must add `ConsistencyLevel=eventual` in the request or the header. You must also include `$count=true` to ensure the request is routed correctly.

User #1

- Attribute set: `Marketing`
- Attribute: `AppCountry`
- Attribute data type: Collection of Strings
- Attribute value: `["France"]`

All other users

- `AppCountry` attribute not added

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_users_not_equal_value"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$count=true&$select=id,displayName,customSecurityAttributes&$filter=customSecurityAttributes/Marketing/AppCountry ne 'Canada'
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-users-not-equal-value-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-users-not-equal-value-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/customsecurityattribute-users-not-equal-value-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-users-not-equal-value-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-users-not-equal-value-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-users-not-equal-value-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response


<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,displayName,customSecurityAttributes)",
    "@odata.count": 32,
    "value": [
        {
            "id": "c4f9ecd3-d3c1-4544-b49a-bc9bb62beb67",
            "displayName": "Alain",
            "customSecurityAttributes": null
        },
        {
            "id": "de4f1218-b0fb-4449-b3a0-1e1dd193e6e7",
            "displayName": "Joe",
            "customSecurityAttributes": {
                "Engineering": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "Project3@odata.type": "#Collection(String)",
                    "Project3": [
                        "Baker",
                        "Cascade"
                    ],
                    "CostCenter@odata.type": "#Collection(Int32)",
                    "CostCenter": [
                        1001
                    ],
                    "Certification": true
                },
                "Marketing": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "EmployeeId": "QN26904"
                }
            }
        },
        {
            "id": "f24d1474-ded5-432d-be08-8abd39921aac",
            "displayName": "Isabella",
            "customSecurityAttributes": {
                "Marketing": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "AppCountry@odata.type": "#Collection(String)",
                    "AppCountry": [
                        "France"
                    ]
                }
            }
        },
        {
            "id": "849e81fe-1109-4d57-9536-a25d537eec1f",
            "displayName": "Dara",
            "customSecurityAttributes": {
                "Engineering": {
                    "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
                    "ProjectDate": "2023-04-12"
                }
            }
        },
        {
            "id": "42c88239-db99-45f0-85af-cbb6c8acb2a3",
            "displayName": "Chandra",
            "customSecurityAttributes": null
        }
    ]
}
```

## Remove custom security attribute assignments

### Example 1: Remove a single-valued custom security attribute assignment from a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to remove a custom security attribute assignment that supports a single value from a user.

- Attribute set: `Engineering`
- Attribute: `ProjectDate`
- Attribute value: `null`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_remove_from_user_singlevalue"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "ProjectDate":null
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-remove-from-user-singlevalue-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-remove-from-user-singlevalue-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-remove-from-user-singlevalue-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-remove-from-user-singlevalue-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-remove-from-user-singlevalue-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Remove a multi-valued custom security attribute assignment from a user

The following example shows how to use the [Update user](/graph/api/user-update?view=graph-rest-beta&preserve-view=true) API to remove a custom security attribute assignment that supports multiple values from a user.

- Attribute set: `Engineering`
- Attribute: `Project`
- Attribute value: `[]`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "customsecurityattribute_remove_from_user_multivalue"
}-->
```http
PATCH https://graph.microsoft.com/beta/users/{id}
Content-type: application/json

{
    "customSecurityAttributes":
    {
        "Engineering":
        {
            "@odata.type":"#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
            "Project":[]
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/customsecurityattribute-remove-from-user-multivalue-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-remove-from-user-multivalue-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-remove-from-user-multivalue-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-remove-from-user-multivalue-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-remove-from-user-multivalue-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Next steps

- [Overview of custom security attributes using the Microsoft Graph API (Preview)](/graph/api/resources/custom-security-attributes-overview)
- [What are custom security attributes in Azure AD?](/azure/active-directory/fundamentals/custom-security-attributes-overview)
