---
title: "Privileged Identity Management"
description: "APIs for Azure AD Privileged Identity Management to manage Azure Active Directory roles and Azure resource roles."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.prod: "governance"
author: "rkarim-ms"
---

# Privileged Identity Management (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!CAUTION]
>The Privileged Identity Management (PIM) API for **Azure AD roles** is deprecated and stopped returning data on May 31, 2021. Use the [PIM v3 for managing Azure AD roles](/graph/api/resources/privilegedidentitymanagementv3-overview) and see the [migration guidance below](#migrate-from-pim-v2-to-pim-v3-apis).
>
>The Privileged Identity Management (PIM) API for **Azure resources** will be deprecated soon. Use the new [Azure REST PIM API for Azure resources](/rest/api/authorization/role-eligibility-schedule-requests). To migrate, see the migration guidance below.

[Privileged Identity Management (PIM)](/azure/active-directory/privileged-identity-management/pim-configure) is a service that enables you to manage, control, and monitor access to important resources in your organization. This scope includes access to resources in Azure AD, Azure resources, and other Microsoft services like Microsoft 365 or Microsoft Intune.

There have been several iterations of the PIM API over the past few years. This iteration is the second iteration (here referred to as PIM v2) and it's succeeded by PIM v3. For more information about the history of the PIM API, see [PIM API history](/azure/active-directory/privileged-identity-management/pim-apis#pim-api-history).

Microsoft Graph provides the following PIM v2 APIs to manage Azure AD roles and Azure resource roles. We recommend that you migrate from PIM v2 to PIM v3.

- [APIs for Azure AD roles](privilegedidentitymanagement-directory.md) (deprecated)
- [APIs for Azure resources](privilegedidentitymanagement-resources.md)

## Migrate from PIM v2 to PIM v3 APIs

[!INCLUDE [pimv2AADRoles-migration](../../includes/pimv2AADRoles-migration.md)]

[!INCLUDE [pimv2AzureResources-migration](../../includes/pimv2AzureResources-migration.md)]

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
