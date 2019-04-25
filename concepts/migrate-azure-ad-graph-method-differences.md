---
title: "Method differences between Azure AD and Microsoft Graph | Microsoft Graph"
description: "Describes method differences between Azure Active Directory (Azure AD) Graph API and Microsoft Graph API (REST)."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Method differences between Azure AD and Microsoft Graph

A handful of Azure AD Graph methods have also changed.  If a methis is not shown in this list, it is already available in the [v1.0 version](/graph/api/overview?view=graph-rest-1.0) of Microsoft Graph, with exactly the same name as in Azure AD Graph.

|Azure AD Graph <br>(v1.6) method |Microsoft Graph<br>(resource/method)|Comments|
|---|---|---|
| getObjectsByObjectId | beta/&nbsp;-&nbsp;directory/getByIds <br> v1.0/ - directory/getByIds | |
| restore | beta/&nbsp;-&nbsp;restore&nbsp;<br> v1.0/&nbsp;-&nbsp;restore&nbsp;(users&nbsp;and&nbsp;groups) | You can view deleted applications, users, and groups in beta\ and permanently delete them. |
| invalidateAllRefreshTokens | beta/ - Available; will be renamed <br> v1.0/ - _Not yet available_ | Will be renamed to invalidateSigninSessions. |
| getAvailableExtensionProperties | beta/ - _Not planned_ <br> v1.0/ - _Not planned_ | Not currently planned; may be revisited based on demand. |
| isMemberOf | beta/ - _Not planned_ <br> v1.0/ - _Not planned_ | Use checkMemberGroups instead. |
| addKey | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. | 
| removeKey | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. | 
| addPassword | beta/ - addPassword <br> v1.0/ - _Not yet available_ | | 
| removePassword | beta/ - removePassword <br> v1.0/ - _Not yet available_ | | 


## Next Steps

- Learn about [app registration, permissions and consent differences](migrate-azure-ad-graph-app-registration.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
