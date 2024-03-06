---
title: Manage users' authentication methods using Microsoft Graph"
description: "Learn how to manage your users' authentication methods and get users registered to do multifactor authentication (MFA) and self-service password reset (SSPR)."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jpeterre
ms.localizationpriority: high
ms.prod: "identity-and-sign-in"
ms.date: 01/18/2024
ms.topic: conceptual
#customer intent: As a developer, I want to understand what user authentication options are available for Microsoft Entra ID through Microsoft Graph, and how I can integrate them into my applications.
---

# Manage users' authentication methods using Microsoft Graph

[Authentication methods](/entra/identity/authentication/concept-authentication-methods) are the ways that users authenticate in Microsoft Entra ID. The following authentication methods are available in Microsoft Entra ID today and are manageable through Microsoft Graph:

- Windows Hello for Business
- Microsoft Authenticator
- FIDO2 security key
- Certificate-based authentication
- OATH hardware tokens (preview)
- OATH software tokens
- Temporary Access Pass (TAP)
- SMS
- Voice
- Password

Authentication methods are used in primary, second-factor, and step-up authentication, and also in the self-service password reset (SSPR) process.

## What can you do with the authentication methods APIs?

You can use the authentication method APIs to integrate to your apps for managing a user's authentication methods. For example, you can:

- Add a phone number for a user, who can then use that number for SMS and voice call authentication if they're enabled to use it by policy
- Update or delete the phone number assigned to a user
- Enable or disable the number for SMS sign-in
- Reset a user's password

> [!IMPORTANT]
> We don't recommend using the authentication methods APIs for scenarios where you need to iterate over your entire user population for auditing or security check purposes. For these types of scenarios, we recommend using the [authentication method registration and usage reporting APIs](/graph/api/resources/authenticationmethods-usage-insights-overview) (some APIs are available on the `beta` endpoint only).

## Use policies to manage authentication methods in your tenant

You can choose what authentication methods are allowed for users in your tenant by configuring **authentication method policies**. For each policy, you configure whether the authentication method is enabled, its settings, and can explicitly define the groups of users that are allowed or not allowed to use the method.

## Sample scenario

In this article, you learn how to:

> [!div class="checklist"]
> - Authenticate to Microsoft Entra ID with the right roles and permissions
> - Check the user's authentication methods
> - Add new phone numbers for the user
> - Remove a phone number from the user
> - Reset the user's password

## Step 1: Authenticate to Microsoft Entra ID with the right roles and permissions

Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) with an account that has at least the *Privileged Authentication Administrator* or *Authentication Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). You can use a test tenant with sample data to try out the APIs.

Next, grant the app the *UserAuthenticationMethod.ReadWrite.All* permission. You need this permission to perform both the read and write operations in this scenario.

You can now start using the APIs. In this scenario, you use the APIs to manage Cameron White's authentication methods.

## Step 2: Check the user's authentication methods

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-list-methods"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/CameronW@Contoso.com/authentication/methods
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/authenticationmethods-get-started-list-methods-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/authenticationmethods-get-started-list-methods-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/authenticationmethods-get-started-list-methods-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/authenticationmethods-get-started-list-methods-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/authenticationmethods-get-started-list-methods-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/authenticationmethods-get-started-list-methods-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/authenticationmethods-get-started-list-methods-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/authenticationmethods-get-started-list-methods-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

From this response, Cameron has only the password authentication method enabled. `28c10230-6103-485e-b985-444c60001490` is the globally unique ID of the password authentication method across Microsoft Entra ID.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationMethod"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('CameronW%40contoso.com')/authentication/methods",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET users('<key>')/authentication/methods?$select=id",
    "value": [
        {
            "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
            "id": "28c10230-6103-485e-b985-444c60001490",
            "password": null,
            "createdDateTime": "2023-09-18T10:38:07Z"
        }
    ]
}
```

## Step 3: Add new phone numbers for the user

In this step, you add a new *mobile* phone number for Cameron to use.

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-add-phonemethod"
}-->
```http
POST https://graph.microsoft.com/v1.0/users/CameronW@Contoso.com/authentication/phoneMethods
Content-Type: application/json

{
    "phoneNumber": "+1 2065555555",
    "phoneType": "mobile"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/authenticationmethods-get-started-add-phonemethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/authenticationmethods-get-started-add-phonemethod-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/authenticationmethods-get-started-add-phonemethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/authenticationmethods-get-started-add-phonemethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/authenticationmethods-get-started-add-phonemethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/authenticationmethods-get-started-add-phonemethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/authenticationmethods-get-started-add-phonemethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/authenticationmethods-get-started-add-phonemethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.phoneAuthenticationMethod"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('CameronW%40contoso.com')/authentication/phoneMethods/$entity",
    "id": "3179e48a-750b-4051-897c-87b9720928f7",
    "phoneNumber": "+1 2065555555",
    "phoneType": "mobile",
    "smsSignInState": "notAllowedByPolicy"
}
```

Run the same request, adding an *office* phoneType.

## Step 4: Verify the user's authentication methods

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-list-methods-2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/CameronW@Contoso.com/authentication/methods
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/authenticationmethods-get-started-list-methods-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/authenticationmethods-get-started-list-methods-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/authenticationmethods-get-started-list-methods-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/authenticationmethods-get-started-list-methods-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/authenticationmethods-get-started-list-methods-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/authenticationmethods-get-started-list-methods-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/authenticationmethods-get-started-list-methods-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/authenticationmethods-get-started-list-methods-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.phoneAuthenticationMethod)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('CameronW%40contoso.com')/authentication/methods",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET users('<key>')/authentication/methods?$select=id",
    "value": [
        {
            "@odata.type": "#microsoft.graph.phoneAuthenticationMethod",
            "id": "e37fc753-ff3b-4958-9484-eaa9425c82bc",
            "phoneNumber": "+1 4255550199",
            "phoneType": "office",
            "smsSignInState": "notSupported"
        },
        {
            "@odata.type": "#microsoft.graph.phoneAuthenticationMethod",
            "id": "3179e48a-750b-4051-897c-87b9720928f7",
            "phoneNumber": "+1 2065555555",
            "phoneType": "mobile",
            "smsSignInState": "notAllowedByPolicy"
        },
        {
            "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
            "id": "28c10230-6103-485e-b985-444c60001490",
            "password": null,
            "createdDateTime": "2023-09-18T10:38:07Z"
        }
    ]
}
```

Confirm that you can see both numbers as expected. The IDs of the different phone number types are globally the same across Microsoft Entra ID as follows:

- `b6332ec1-7057-4abe-9331-3d72feddfe41` for *alternateMobile* phone type
- `e37fc753-ff3b-4958-9484-eaa9425c82bc` for *office* phone type
- `3179e48a-750b-4051-897c-87b9720928f7` for *mobile* phone type

## Step 5: Remove a phone number from the user

Cameron is now working from home so you need to remove the *office* number from his account.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-remove-phonemethod"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/users/CameronW@Contoso.com/authentication/phoneMethods/e37fc753-ff3b-4958-9484-eaa9425c82bc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/authenticationmethods-get-started-remove-phonemethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/authenticationmethods-get-started-remove-phonemethod-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/authenticationmethods-get-started-remove-phonemethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/authenticationmethods-get-started-remove-phonemethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/authenticationmethods-get-started-remove-phonemethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/authenticationmethods-get-started-remove-phonemethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/authenticationmethods-get-started-remove-phonemethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/authenticationmethods-get-started-remove-phonemethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `204 No Content` response code. To verify that the *office* phone method was removed from Cameron's account, rerun the request in Step 4. Cameron should now have only the mobile phone and password authentication methods.

## Step 6: Reset the user's password

Cameron has forgotten their password and you need to reset it for them. You can reset a user's password and specify a temporary password, or you can let Microsoft Entra ID generate a temporary password.

In both methods, the response includes a *Location* header with a URL you can use to check the status of the operation via a GET operation. The reset operation doesn't complete immediately as Microsoft Entra ID needs to sync the password, including down to Active Directory in the tenant's on-premises infrastructure (for on-premises users). The URL is valid for 24 hours.

### Option 1: Reset the user's password and supply a temporary new password

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-reset-password-1"
}-->
```http
POST https://graph.microsoft.com/v1.0/users/CameronW@Contoso.com/authentication/passwordMethods/28c10230-6103-485e-b985-444c60001490/resetPassword
Content-Type: application/json

{
    "newPassword": "29sdjfw#fajsdA_a_3an3223"
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/authenticationmethods-get-started-reset-password-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted

Location: https://graph.microsoft.com/v1.0/users/a87cc624-b550-4559-b934-3bc0325a4808/authentication/operations/cc8e9b0e-7495-47f2-ad4a-3daa966543c6?aadgdc=DUB02P&aadgsu=ssprprod-a
```

### Option 2: Reset the user's password and let Microsoft Entra ID generate a temporary new password

In this request, you don't provide a new password and instead let Microsoft Entra ID generate a password and return it in the response.

<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-reset-password-1"
}-->
```http
POST https://graph.microsoft.com/v1.0/users/CameronW@Contoso.com/authentication/passwordMethods/28c10230-6103-485e-b985-444c60001490/resetPassword
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.phoneAuthenticationMethod)"
} -->
```http
HTTP/1.1 202 Accepted

Location: https://graph.microsoft.com/v1.0/users/a87cc624-b550-4559-b934-3bc0325a4808/authentication/operations/ba0c9a11-5163-4353-89ba-81501617ede0?aadgdc=AM4P&aadgsu=ssprprod-a
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.passwordResetResponse",
    "newPassword": "Hopu0277"
}
```

### Check the status of the password reset operation

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethods-get-started-longrunningoperation-status"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/a87cc624-b550-4559-b934-3bc0325a4808/authentication/operations/ba0c9a11-5163-4353-89ba-81501617ede0?aadgdc=AM4P&aadgsu=ssprprod-a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/authenticationmethods-get-started-longrunningoperation-status-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/authenticationmethods-get-started-longrunningoperation-status-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/authenticationmethods-get-started-longrunningoperation-status-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/authenticationmethods-get-started-longrunningoperation-status-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/authenticationmethods-get-started-longrunningoperation-status-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/authenticationmethods-get-started-longrunningoperation-status-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/authenticationmethods-get-started-longrunningoperation-status-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/authenticationmethods-get-started-longrunningoperation-status-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
} -->
```http
HTTP/1.1 202 Accepted

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('a87cc624-b550-4559-b934-3bc0325a4808')/authentication/operations/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET users('<guid>')/authentication/operations('<guid>')?$select=createdDateTime,lastActionDateTime",
    "id": "ba0c9a11-5163-4353-89ba-81501617ede0",
    "createdDateTime": "2024-01-18T16:37:10Z",
    "lastActionDateTime": "2024-01-18T16:37:10Z",
    "status": "succeeded",
    "statusDetail": "ResetSuccess",
    "resourceLocation": "https://graph.microsoft.com/v1.0/users/a87cc624-b550-4559-b934-3bc0325a4808/authentication/methods/28c10230-6103-485e-b985-444c60001490"
}
```

## API reference

Looking for the API reference for authentication methods?

- See [Microsoft Entra authentication methods API overview](/graph/api/resources/authenticationmethods-overview)
- See the [Microsoft Entra authentication methods policies API reference](/graph/api/resources/authenticationmethods-overview)
