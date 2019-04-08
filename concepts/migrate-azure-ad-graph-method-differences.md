---
title: "Method differences between Azure AD and Microsoft Graph | Microsoft Graph"
description: "Describes method differences between Azure Active Directory (Azure AD) Graph API and Microsoft Graph API (REST)."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Method differences between Azure AD and Microsoft Graph

A handful of Azure AD Graph methods have also changed:

|Azure AD Graph <br>(v1.6) method |Microsoft Graph<br>(resource/method)|Comments|
|---|---|---|
| getObjectsByObjectId | beta/&nbsp;-&nbsp;directory/getByIds <br> v1.0/ - directory/getByIds | |
| restore (for applications) | beta/&nbsp;-&nbsp;restore&nbsp;(users&nbsp;and&nbsp;groups) <br> v1.0/&nbsp;-&nbsp;restore&nbsp;(users&nbsp;and&nbsp;groups) | You can view deleted applications in beta\ and permanently delete them. |
| invalidateAllRefreshTokens | beta/ - Available; will be renamed <br> v1.0/ - _Not yet available_ | Will be renamed to invalidateSigninSessions. |
| getAvailableExtensionProperties | beta/ - _Not planned_ <br> v1.0/ - _Not planned_ | Not currently planned; may be revisited based on demand. |
| isMemberOf | beta/ - _Not planned_ <br> v1.0/ - _Not planned_ | Use checkMemberGroups instead. |
| addKey | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. | 
| removeKey | beta/ - _Not yet available_ <br> v1.0/ - _Not yet available_ | Planned, but not yet available. | 
| addPassword | beta/ - addPassword <br> v1.0/ - _Not yet available_ | | 
| removePassword | beta/ - removePassword <br> v1.0/ - _Not yet available_ | | 


## Next Steps

- Learn about [service feature differences](migrate-azure-ad-graph-feature-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
