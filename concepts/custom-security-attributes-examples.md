---
title: "Assign, update, or remove custom security attributes (preview)"
description: "Learn how to assign, update, or remove custom security attributes for users and applications (service principals) using the Microsoft Graph API."
author: "rolyon"
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "directory-management"
---

# Assign, update, list, or remove custom security attributes using the Microsoft Graph API (preview)

> [!IMPORTANT]
> The custom security attributes feature is currently in preview. See the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.

[Custom security attributes](/azure/active-directory/fundamentals/custom-security-attributes-overview) in Azure Active Directory (Azure AD) are business-specific attributes (key-value pairs) that you can define and assign to Azure AD objects.

This article provides examples of how to assign, update, or remove different types of custom security attributes for users and applications (service principals). Custom security attributes can be assigned or updated only through a `PATCH` operation in an [Update user](/graph/api/user-update) or [Update servicePrincipal](/graph/api/serviceprincipal-update) request.

## Permissions

To manage custom security attributes, the calling principal must be assigned the following Azure AD role. By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

- [Attribute Assignment Administrator](/azure/active-directory/roles/permissions-reference#attribute-assignment-administrator)

Also, the calling principal must be granted the following permissions.

- [CustomSecAttributeAssignment.ReadWrite.All](permissions-reference.md#custom-security-attributes-permissions)
- [User.Read.All](permissions-reference.md#user-permissions)

Permissions to read, assign, update, or remove attributes for an application is granted by *CustomSecAttributeAssignment.ReadWrite.All*. Permissions to read the resource object, such as users, is granted separately using resource object permissions, such as *User.Read.All*.

## Assign custom security attributes

### Example 1: Assign a custom security attribute with a string value to a user

The following example shows how to assign a custom security attribute with a string value to a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-string-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-string-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-string-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-string-php-snippets.md)]
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

The following example shows how to assign a custom security attribute with a string value to a service principal.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-serviceprincipal-string-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-serviceprincipal-string-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-serviceprincipal-string-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-serviceprincipal-string-php-snippets.md)]
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

The following example shows how to assign a custom security attribute with a multi-string value to a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-multistring-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-multistring-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-multistring-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-multistring-php-snippets.md)]
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

The following example shows how to assign a custom security attribute with an integer value to a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-integer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-integer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-integer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-integer-php-snippets.md)]
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

The following example shows how to assign a custom security attribute with a multi-integer value to a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-multiinteger-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-multiinteger-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-multiinteger-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-multiinteger-php-snippets.md)]
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

The following example shows how to assign a custom security attribute with a Boolean value to a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-assign-user-boolean-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-assign-user-boolean-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-assign-user-boolean-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-assign-user-boolean-php-snippets.md)]
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

The following example shows how to update a custom security attribute assignment with an integer value for a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-update-user-integer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-update-user-integer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-update-user-integer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-update-user-integer-php-snippets.md)]
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

The following example shows how to update a custom security attribute assignment with a Boolean value for a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-update-user-boolean-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-update-user-boolean-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-update-user-boolean-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-update-user-boolean-php-snippets.md)]
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

### Example 1: Get the custom security attributes assigned to a user

The following example shows how to list a custom security attribute assignment assigned to the user. The custom security attribute is a multi-string value with the following settings:

- Attribute set: `Engineering`
- Attribute: `datacenter`
- Attribute data type: Collection of Strings
- Attribute value: ["Redmond"]

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-get-for-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/customsecurityattribute-get-for-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-get-for-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-get-for-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-get-for-user-php-snippets.md)]
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
        "Engineering": {
            "@odata.type": "#microsoft.graph.customSecurityAttributeValue",
            "datacenter@odata.type": "#Collection(String)",
            "datacenter": [
                "Redmond"
            ]
        }
    }
}
```


## Remove custom security attribute assignments

### Example 1: Remove a single-valued custom security attribute assignment from a user

The following example shows how to remove a custom security attribute assignment that supports a single value from a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-remove-from-user-singlevalue-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-remove-from-user-singlevalue-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-remove-from-user-singlevalue-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-remove-from-user-singlevalue-php-snippets.md)]
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

The following example shows how to remove a custom security attribute assignment that supports multiple values from a user.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/customsecurityattribute-remove-from-user-multivalue-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/customsecurityattribute-remove-from-user-multivalue-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/customsecurityattribute-remove-from-user-multivalue-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/customsecurityattribute-remove-from-user-multivalue-php-snippets.md)]
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
