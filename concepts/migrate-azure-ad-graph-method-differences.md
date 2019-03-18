---
title: "Review method changes from Azure AD to Microsoft Graph | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Review method changes from Azure AD to Microsoft Graph

A handful of Azure AD Graph methods have also changed:

|Azure AD Graph <br>(v1.6) method |Microsoft Graph<br>(resource/method)|Comments|
|---|---|---|
| getObjectsByObjectId | beta/&nbsp;-&nbsp;directory/getByIds <br> v1.0/ - directory/getByIds | |
| restore (for applications) | beta/&nbsp;-&nbsp;restore&nbsp;(users&nbsp;and&nbsp;groups) <br> v1.0/ - restore (users and groups) | You can view deleted applications in beta\ and permanently delete them.  Restore is not yet available, but will be added. |
| invalidateAllRefreshTokens | beta/ - Available; will be renamed <br> v1.0/ - _Not yet available_ | Will be renamed to invalidateSigninSessions. |
| getAvailableExtensionProperties | beta/ - _Not planned_ <br> v1.0/ - _Not planned_ | Not currently planned; may be revisited based on demand. |
| isMemberOf | beta/ - _Not planned_ <br> v1.0/ - _Not planned_ | Use checkMemberGroups instead. |
| addKey | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. | 
| removeKey | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. | 
| addPassword | beta/ - addPassword <br> v1.0/ - _Not yet available_ | | 
| removePassword | beta/ - removePassword <br> v1.0/ - _Not yet available_ | | 
|||

## Next Steps

- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).
