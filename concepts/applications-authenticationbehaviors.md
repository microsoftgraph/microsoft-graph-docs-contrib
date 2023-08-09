---
title: "Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization"
description: "Apps should never use the email claim for authorization purposes. Use this guidance to manage the application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: medbhargava
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.prod: applications
ms.date: 06/26/2023
---

# Manage application authenticationBehaviors to prevent use of email claims for user identification or authorization

As described in the Microsoft security advisory [Potential Risk of Privilege Escalation in Azure AD Applications](https://msrc.microsoft.com/blog/2023/06/potential-risk-of-privilege-escalation-in-azure-ad-applications/), **apps should never use the email claim for authorization purposes**. If your application uses the email claim for authorization or primary user identification purposes, it's subject to account and privilege escalation attacks. This risk of unauthorized access is especially identified in the following scenarios:

- When the **mail** attribute of the [user](/graph/api/resources/user) object contains an email address with an unverified domain owner
- For multi-tenant apps where a user from one tenant could escalate their privileges to access resources from another tenant through modification of their **mail** attribute

For more information about identifying these cases in your tenant, see [Migrate away from using email claims for user identification or authorization](/azure/active-directory/develop/migrate-off-email-claim-authorization).

This article provides guidance to use authentication behaviors in order to migrate away from email claims for user identification or authorization.

## Configure authenticationBehaviors to prevent issuance of email claims with unverified domain owners

The **authenticationBehaviors** property of the [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) object allows you to configure breaking-change behaviors related to token issuance. Applications can adopt new breaking changes by enabling a behavior (set the behavior to `true`), or continue using pre-existing behavior by disabling it (by setting the behavior to `false`).

Today, the default behavior is to remove email addresses with unverified domain owners in claims, except for single-tenant apps and for multi-tenant apps with previous sign-in activity with unverified emails. If your app falls into either of these exceptions and you wish to remove unverified email addresses, set the **removeUnverifiedEmailClaim** property of [authenticationBehaviors](/graph/api/resources/authenticationbehaviors) to `true` as illustrated in the following examples. The request returns a `204 No Content` response code.

> [!NOTE]
> The authenticationBehaviors property of the application object is currently in `beta` only.

### Read the authenticationBehaviors setting for an application

The **authenticationBehaviors** property is returned only on `$select` requests as follows.

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
[!INCLUDE [sample-code](../includes/snippets/java/beta/get-application-authenticationbehaviors-java-snippets.md)]
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

### Remove email addresses with unverified domain owners from claims

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_true"
}-->

```http
PATCH /applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": true
}
```

### Accept email addresses with unverified domain owners in claims

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_false"
}-->

```http
PATCH /applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": false
}
```

### Restore the default behavior

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_null"
}-->

```http
PATCH /applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": null
}
```

## See also

- [Potential Risk of Privilege Escalation in Azure AD Applications](https://msrc.microsoft.com/blog/2023/06/potential-risk-of-privilege-escalation-in-azure-ad-applications/)
- [The false identifier anti-pattern](https://techcommunity.microsoft.com/t5/microsoft-entra-azure-ad-blog/the-false-identifier-anti-pattern/ba-p/3846013)
- [Migrate away from using email claims for user identification or authorization](/azure/active-directory/develop/migrate-off-email-claim-authorization)
