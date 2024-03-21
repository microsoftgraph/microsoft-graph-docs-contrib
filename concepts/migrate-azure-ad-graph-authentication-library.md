---
title: "Review app authentication library changes"
description: "Describes how to update authentication library use in order to migrate an app from Azure AD Graph to Microsoft Graph."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: medium
ms.subservice: "entra-applications"
ms.date: 01/12/2024
#Customer intent: As a developer, I want to learn what authentication libraries to use, so that I can update my code accordingly as I migrate my app from Azure AD Graph to Microsoft Graph.
---

# Review app authentication library changes

This article is part of *step 3: review app details* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

Most apps use an authentication library to acquire and manage access tokens to call Microsoft Graph. Microsoft offers two authentication libraries:

- [Microsoft Authentication Library](/azure/active-directory/develop/reference-v2-libraries) (MSAL) - **Recommended**
- [Azure Active Directory Authentication Library](/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL) - **Retired**

## Updating ADAL

If your app still uses ADAL, use a two-stage migration approach:

1. Update your app to acquire access tokens for Microsoft Graph. Continue to use ADAL for this step. Update the **resourceURL**, which holds the URI representing the resource web API, from:

    `https://graph.windows.net`  

    To:  

    `https://graph.microsoft.com`

    Newly acquired tokens have the same scopes after this change, but the audience of the access tokens is now Microsoft Graph.  

    Once you update **resourceURL** and verified functionality, release an interim update for your app users.

1.  Next, begin migrating your app to use MSAL, which is the only supported library, now that ADAL is retired.

## Migrating to MSAL

MSAL provides multiple benefits over ADAL, including incremental consent, richer single sign-on experiences, support for personal Microsoft accounts, and use of standards-based protocols.  

When you switch your app over to MSAL, you need to make a few changes, including setting the **scopes** parameter in the token acquisition request:

``` csharp
var scopes = new string[] { "https://graph.microsoft.com/.default" };
```

The expression above limits the permission scopes request to the scopes configured during application registration in the Microsoft Entra admin center, and saves your existing users from having to consent to your app again.

Learn [.NET client library](migrate-azure-ad-graph-client-libraries.md) differences between Azure Active Directory (Azure AD) Graph and Microsoft Graph.

See [Migrate applications to the Microsoft Authentication Library (MSAL)](/entra/identity-platform/msal-migration) for direct and extensive help with the process, including troubleshooting and help with common errors.

Once you migrate to MSAL, you can request more scopes dynamically, and users are prompted to provide incremental consent the next time they use your app.

## Next step

> [!div class="nextstepaction"]
> [Review the migration checklist again](migrate-azure-ad-graph-planning-checklist.md)
