---
title: "Review app registration, permission, and consent migration issues | Microsoft Graph"
description: "Describes app registration, permission, and consent migration from Azure Active Directory (Azure AD) to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Review app registration, permissions, and consent issues

When migrating an app from Azure AD Graph to Microsoft Graph, changes to registration, permissions, and consent should be minimal.  

For any app update, there are three main areas of concern:

- _Registration_: No changes are needed.  The existing registration can be reused.  

    You do _not_ have to re-register your app to migrate to Microsoft Graph.  

    Simply update the code, test heavily, and then deploy your update.  

- _Permissions_: Because Azure AD Graph permissions are shared with Microsoft Graph, you should not have to request new permissions.

    For example, if your existing app has _User.Real.All_ and _Group.Read.All_ permissions, those permissions are implicitly granted to your updated app. 

    If your update uses features or capabilities that aren't available to Azure AD Graph, you'll need to permissions for these new features. If that's the case, consent will be requested automatically.

- _Consent_: Consent is handled by the Azure AD authentication process.

    If your users have already granted consent and your app doesn't require new permissions, the update should be seamless.

Simple migration projects should experience no issues in these areas.

However, if you use new features, incorporate new services, or add additional capabilities, new permissions and consent may be required.  In such cases, consent is requested when tokens are refreshed.

## Next Steps

- Learn [authentication library](migrate-azure-ad-graph-authentication-library.md) differences between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
