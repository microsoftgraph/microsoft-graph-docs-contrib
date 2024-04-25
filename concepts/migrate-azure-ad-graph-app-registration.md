---
title: "Review app registration, permissions, and consent issues"
description: "Describes app registration, permission, and consent migration from Azure AD Graph to Microsoft Graph."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.topic: quickstart
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 02/14/2024
#Customer intent: As a developer, I want to learn what to review in my app registration, so that I can update my code accordingly as I migrate my app from Azure AD Graph to Microsoft Graph.
---

# Review app registration, permissions, and consent

This article is part of *step 3: review app details* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

For any app update, there are three areas to consider:

- **App registration**: You can continue to use your existing app registration (`appId`) in your application code.  

    You do **not** have to re-register your app to migrate to Microsoft Graph. Update the code, test heavily, and then deploy your update.  

- **Permissions**: You should change your configured permissions to the equivalent Microsoft Graph permissions. Delegated permissions that were granted for Azure Active Directory (Azure AD) Graph are implicitly considered granted for Microsoft Graph also. Application permissions (app roles) need to be granted again. For a comparison, [review how Azure AD Graph permissions map to Microsoft Graph permissions](migrate-azure-ad-graph-permissions-differences.md).

    If your update also includes the use of features or capabilities that aren't available to Azure AD Graph, you likely need to request permissions for these new features. If that's the case, you can switch your app to use MSAL and the Microsoft identity platform endpoint, and request additional/incremental consent dynamically. Find more details about switching to MSAL in [review app authentication library changes](./migrate-azure-ad-graph-authentication-library.md).

- **Consent**: End-users who have granted consent for delegated permissions (or for whom an admin granted consent) can continue using your app without being asked to grant consent again.

    Users who have consented for your app to access their data can continue to use your app after it's been updated to use Microsoft Graph, without being asked to consent again. New users are prompted for consent.

However, if you use new features, services, or add additional capabilities, you might need new permissions applicable to those features and end-user consent might be required.  In such cases, consent is requested when tokens are refreshed.

## Next step

> [!div class="nextstepaction"]
> [Review the migration checklist again](migrate-azure-ad-graph-planning-checklist.md)
