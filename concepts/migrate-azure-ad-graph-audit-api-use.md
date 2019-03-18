---
title: "Audit Azure AD Graph apps to Microsoft Graph  | Microsoft Graph"
description: "Describes how to audit Azure Active Directory (Azure AD) APIs to migrate an app to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Audit use of Azure AD Graph APIs

While planning your migration to Microsoft Graph, take time to review your existing application and to catalog the Azure AD Graph APIs you're currently using.

Compare your list to the known differences.  This helps identify specific changes you'll need to make to migrate your app.  These may include simple changes easily resolved using an editor's search-and-replace features or more complicated updates that might require more analysis.

Broadly speaking, Microsoft Graph supports many of the same features and capabilities of Azure AD graph.  There are a few key differences; however.  

The following checklists highlight specific differences between Azure AD Graph and Microsoft Graph:

- Resource changes to names and responses.
- Response object property changes for user and group resources. 
- Method changes
- API syntax/modeling changes

You'll also want to verify the permissions required for the features you're using.  In some cases, more granular permissions are available.

To learn more, see [Permissions](/concepts/permissions-reference.md).

## Example - ??

_TODO: Develop comparative examples showing 1) a simple (search-and-replace) example and 2) a slightly more complex example (tenantDetail versus organization?)_

## Next Steps

_TODO: Repeat section from earlier pages_

## Next Steps

- Learn about [Link to next article in the series](#).
- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).

