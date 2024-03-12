---
title: "Examine Azure AD Graph APIs app usage"
description: "Describes how to audit Azure Active Directory (Azure AD) Graph APIs to migrate an app to Microsoft Graph API."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.topic: concept-article
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 02/14/2024
#Customer intent: As a developer, I want to learn what to investigate in my app code and logic, so that I can migrate my app from Azure AD Graph to Microsoft Graph.
---

# Examine Azure AD Graph APIs app usage

This is step 2 of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

While planning your migration to Microsoft Graph, take time to review your existing application and to catalog the Azure Active Directory (Azure AD) Graph APIs you're currently using.

Compare your list to the known differences. This helps identify specific changes you need to make to migrate your app. The nature of changes can range from simple changes easily resolved using an editor's search-and-replace features to more complicated updates that might require more analysis.

Microsoft Graph supports many of the same features and capabilities of Azure AD Graph, with a few key differences in the following categories:

- [Request differences](migrate-azure-ad-graph-request-differences.md)
- [Feature differences](migrate-azure-ad-graph-feature-differences.md)
- [Resource type differences](migrate-azure-ad-graph-resource-differences.md)
- [Property differences](migrate-azure-ad-graph-property-differences.md)
- [Method differences](migrate-azure-ad-graph-method-differences.md)
- [Permissions differences](migrate-azure-ad-graph-permissions-differences.md)

## Next step

> [!div class="nextstepaction"]
> [Review the migration checklist again](migrate-azure-ad-graph-planning-checklist.md)
