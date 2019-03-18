---
title: "Review app registration, permission, and consent migration issues | Microsoft Graph"
description: "Describes app registration, permission, and consent migration from Azure Active Directory (Azure AD) to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Review app registration, permissions, and consent issues

From an app management perspective, migrating Azure AD Graph apps to Microsoft Graph is relatively painless.

For any app update, there are three main areas of concern:

- _Registration_: You do not have to re-resgister your app to migrate to Microsoft Graph.  

    Simply update the code, test heavily, and then deploy your update.  The existing app registration can be easily reused.

- _Permissions_: Because Azure AD Graph permissions are shared with Microsoft Graph, you should not have to request new permissions.

    For example, if your existing app has _User.Real.All_ and _Group.Read.All_ permissions, those permissions will be implicitly granted to your update for Microsoft Graph operations involving users and groups. 

    If your update uses features or capabilities that aren't available to Azure AD Graph, there's a change new permissions will be required.  If that's the case, consent will be requested automatically.

- _Consent_: Consent is handled by the Azure AD authentication process.

    If your users have already granted consent and your app doesn't require new permissions, the update should be seamless.

Simple migration projects should experience no issues in these areas.

However, if you use new features, incorporate new workflows, or add additional capabilities, new permissions and consent may be required.  In such cases, consent is requested when tokens are refreshed.

## Next Steps

- Learn about request differences between Azure AD Graph and Microsoft Graph.
- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).

