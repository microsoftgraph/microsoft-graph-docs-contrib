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

Broadly speaking, Microsoft Graph supports many of the same features and capabilities of Azure AD graph.  There are a few key differences:

- [Request differences](migrate-azure-ad-graph-request-differences.md)
- [Resource type](migrate-azure-ad-graph-resource-differences.md) (entity) differences
- [Property differences](migrate-azure-ad-graph-property-differences.md)
- [Method differences](migrate-azure-ad-graph-method-differences.md)
- [Feature differences](migrate-azure-ad-graph-feature-differences.md)

You'll also want to verify the permissions required for the features you're using.  In some cases, more granular permissions are available.

To learn more, see [Permissions](/concepts/permissions-reference.md).

## Next Steps

- Learn how [requests differ](migrate-azure-ad-graph-request-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
