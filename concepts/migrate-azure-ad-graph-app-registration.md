---
title: "Review app registration, permission, and consent migration issues | Microsoft Graph"
description: "Describes app registration, permission, and consent migration from Azure Active Directory (Azure AD) to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Review app registration, permissions, and consent

When migrating an app from Azure AD Graph to Microsoft Graph, changes to app registration or app permissions should not be required, and your end-users will not be required to consent again.  

For any app update, there are three main areas of concern:

- **App registration**: No changes are needed.  The existing app registration (`appId`) can continue to be used in your application code.  

    You do **not** have to re-register your app to migrate to Microsoft Graph.  

    Simply update the code, test heavily, and then deploy your update.  

- **Permissions**: Azure AD Graph permissions are _shared_ with Microsoft Graph, so you should not have to request any new permissions for your existing app.

    For example, if your existing app has _User.Read.All_ and _Group.Read.All_ permissions, those permissions are implicitly granted to your updated app for Microsoft Graph as well.

    If your update also incudes the use of features or capabilities that aren't available to Azure AD Graph, you'll likely need to request permissions for these new features. If that's the case, additional/incremental consent can be requested dynamically, if you also switch your app to use MSAL and the v2 endpoint. You can find more details about switching to MSAL in [review app authentication library changes](/graph/migrate-aure-ad-graph-authentication-library).

- **Consent**: Consent is handled by the Azure AD authentication process.

    If your users have already granted consent and your app doesn't require new permissions, the update should be seamless for an end-user - they will not be asked to consent again.

Simple migration projects should experience no issues in these areas.

However, if you use new features, incorporate new services, or add additional capabilities, new permissions and end-user consent may be required.  In such cases, consent is requested when tokens are refreshed.

## Next Steps

- Learn [authentication library](migrate-azure-ad-graph-authentication-library.md) differences between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
