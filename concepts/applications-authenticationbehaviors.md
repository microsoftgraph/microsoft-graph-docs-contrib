---
title: "Manage application authenticationBehaviors"
description: "Manage application authentication behaviors to adopt new breaking changes."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: medbhargava
ms.topic: how-to
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.subservice: entra-applications
ms.date: 08/29/2025
#customer intent: As a developer, I want to use Microsoft Graph to configure my app's behavior to adopt new breaking changes.
---

# Manage application authenticationBehaviors

The [**authenticationBehaviors**](/graph/api/resources/authenticationbehaviors?view=graph-rest-beta&preserve-view=true) property of the [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) object lets you configure breaking change behaviors related to token issuance. Applications can adopt new breaking changes by enabling a behavior or continue using pre-existing behavior by disabling it.

You can configure the following behaviors:

- [Allow or prevent the issuance of email claims with unverified domain owners](#prevent-the-issuance-of-email-claims-with-unverified-domain-owners).
- [Enable or disable extended Azure AD Graph access until August 31, 2025](#allow-extended-azure-ad-graph-access-until-august-31-2025), when Azure AD Graph is fully retired.
- Require multitenant applications to have a service principal in the resource tenant as part of authorization checks before they're granted access tokens.

> [!NOTE]
> The authenticationBehaviors property of the application object is currently available in `beta` only.

## Read the authenticationBehaviors setting for an application

The **authenticationBehaviors** property is returned only on `$select` requests.

To read the property and other specified properties of all apps in the tenant, run the following sample request. The request returns a `200 OK` response code and a JSON representation of the application object that shows only the selected properties.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_applications_authenticationBehaviors"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applications?$select=id,displayName,appId,authenticationBehaviors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/list-applications-authenticationbehaviors-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/list-applications-authenticationbehaviors-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/list-applications-authenticationbehaviors-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-applications-authenticationbehaviors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/list-applications-authenticationbehaviors-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/list-applications-authenticationbehaviors-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/list-applications-authenticationbehaviors-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

To read only the **authenticationBehaviors** property for a single app, run the following sample request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_application_authenticationBehaviors"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-application-authenticationbehaviors-javascript-snippets.md)]
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

You can also use the **appId** property as follows:

<!-- {
  "blockType": "request",
  "name": "get_application_authenticationBehaviors_via_appId"
}-->

```http
GET https://graph.microsoft.com/beta/applications(appId='37bf1fd4-78b0-4fea-ac2d-6c82829e9365')/authenticationBehaviors
```

## Prevent the issuance of email claims with unverified domain owners

As described in the Microsoft security advisory [Potential Risk of Privilege Escalation in Microsoft Entra Applications](https://msrc.microsoft.com/blog/2023/06/potential-risk-of-privilege-escalation-in-azure-ad-applications/), **apps should never use the email claim for authorization purposes**. If your application uses the email claim for authorization or primary user identification purposes, it's subject to account and privilege escalation attacks. This risk of unauthorized access is especially identified in the following scenarios:

- When the **mail** attribute of the [user](/graph/api/resources/user) object contains an email address with an unverified domain owner
- For multitenant apps where a user from one tenant could escalate their privileges to access resources from another tenant through modification of their **mail** attribute

For more information about identifying these cases in your tenant, see [Migrate away from using email claims for user identification or authorization](/azure/active-directory/develop/migrate-off-email-claim-authorization).

Today, the default behavior is to remove email addresses with unverified domain owners in claims, except for single-tenant apps and for multitenant apps with previous sign-in activity with unverified emails. If your app falls into either of these exceptions and you want to remove unverified email addresses, set the **removeUnverifiedEmailClaim** property of [authenticationBehaviors](/graph/api/resources/authenticationbehaviors) to `true` as shown in the following examples. The request returns a `204 No Content` response code.

### Remove email addresses with unverified domain owners from claims

#### Option 1

This pattern for specifying the property in the request URL allows you to update *only* the specified property in the request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_true_option1"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option1-javascript-snippets.md)]
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

#### Option 2

This pattern for specifying the property in the request body lets you update other peer properties in the same request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_true_option2"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "removeUnverifiedEmailClaim": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/update-authenticationbehaviors-removeunverifiedemailclaim-true-option2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Accept email addresses with unverified domain owners in claims

#### Option 1

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_false_option1"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option1-javascript-snippets.md)]
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

#### Option 2

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_false_option2"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "removeUnverifiedEmailClaim": false
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/update-authenticationbehaviors-removeunverifiedemailclaim-false-option2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Restore the default behavior

#### Option 1

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_null_false_option1"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": null
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option1-javascript-snippets.md)]
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

#### Option 2

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_null_false_option2"
}-->

```http
PATCH https://graph.microsoft.com/beta/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/
Content-Type: application/json

{
    "authenticationBehaviors": {
        "removeUnverifiedEmailClaim": null
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/update-authenticationbehaviors-removeunverifiedemailclaim-null-false-option2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Allow extended Azure AD Graph access until August 31, 2025

By default, applications created after August 31, 2024 receive a `403 Unauthorized` error when making requests to Azure AD Graph APIs, unless you configure them to allow extended Azure AD Graph access. Additionally, you must configure existing apps created before August 31, 2024 and making requests to Azure AD Graph APIs to allow extended Azure AD Graph access by February 1, 2025. This extended access is available only until June 30, 2025, when Azure AD Graph is fully retired. After this date, all apps receive a `403 Unauthorized` error when making requests to Azure AD Graph APIs, regardless of their extended access configuration. For more information, see [June 2024 update on Azure AD Graph API retirement](https://techcommunity.microsoft.com/t5/microsoft-entra-blog/june-2024-update-on-azure-ad-graph-api-retirement/ba-p/4094534).

The following request shows how to update an app to enable extended Azure AD Graph access. The ID used in this example is the object ID of the application, not the application ID. The request returns a `204 No Content` response code.

#### Option 1

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_blockazureadgraphaccess_option1"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/5c142e6f-0bd3-4e58-b510-8a106704f44f/authenticationBehaviors
Content-Type: application/json

{
    "blockAzureADGraphAccess": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-blockazureadgraphaccess-option1-javascript-snippets.md)]
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

#### Option 2

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_blockazureadgraphaccess_option2"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/5c142e6f-0bd3-4e58-b510-8a106704f44f
Content-Type: application/json

{
    "authenticationBehaviors": {
        "blockAzureADGraphAccess": false
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/update-authenticationbehaviors-blockazureadgraphaccess-option2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

- [authenticationBehaviors resource type](/graph/api/resources/authenticationbehaviors?view=graph-rest-beta&preserve-view=true)
- [Migrate away from using email claims for user identification or authorization](/entra/identity-platform/migrate-off-email-claim-authorization)
- [The false identifier anti-pattern](https://techcommunity.microsoft.com/t5/microsoft-entra-azure-ad-blog/the-false-identifier-anti-pattern/ba-p/3846013)
