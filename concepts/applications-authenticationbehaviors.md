---
title: "Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization"
description: "Apps should never use the email claim for authorization purposes. Use this guidance to manage the application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: medhir
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.prod: applications
ms.date: 06/23/2023
---

# Manage application authenticationBehaviors to prevent use of email claims for user identification or authorization

As described in [this Microsoft security advisory](https://msrc.microsoft.com/blog/2023/06/potential-risk-of-privilege-escalation-in-azure-ad-applications/), **apps should never use the email claim for authorization purposes**. If your application uses the email claim for authorization or primary user identification purposes, it is subject to account and privilege escalation attacks. This risk of unauthorized access applies mainly for:

- When the **mail** attribute of the [user](/graph/api/resources/user) object contains an email address with an unverified domain owner.
- For multi-tenant apps where as a user from one tenant could escalate their privileges to access resources from another tenant through modification of their **mail** attribute.

For more information about identifying these cases in your tenant, see [Migrate away from using email claims for user identification or authorization](/azure/active-directory/develop/migrate-off-email-claim-authorization).

This article provides guidance to use authentication behaviors in order to migrate away from email claims for user identification or authorization.

## Configure authenticationBehaviors to prevent issuance of email claims with unverified domain owners

The authenticationBehaviors property of the application object allows you to configure breaking-change behaviors related to token issuance. Applications can adopt new breaking changes by enabling a behavior (set the behavior to `true`), or continue using pre-existing behavior by disabling it (by setting the behavior to `false`).

Today, the default behavior is to remove email addresses with unverified domain owners in claims, except for single-tenant apps and for multi-tenant apps with previous sign-in activity with unverified emails. If your app falls into either of these exceptions and you wish to to remove unverified email addresses, set the **removeUnverifiedEmailClaim** property of [authenticationBehaviors](/graph/api/resources/authenticationbehaviors) to `true` as follows. The request returns a `204 No Content` response code.  

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