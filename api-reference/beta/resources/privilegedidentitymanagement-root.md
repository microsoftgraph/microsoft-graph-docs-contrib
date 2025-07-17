---
title: "Privileged Identity Management"
description: "APIs for Microsoft Entra Privileged Identity Management to manage Microsoft Entra roles and Azure resource roles."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: "entra-id-governance"
author: "rkarim-ms"
ROBOTS: NOINDEX
ms.date: 03/08/2024
---

# Privileged Identity Management iteration 2 APIs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The Privileged Identity Management (PIM) API for **Azure resources** and **Microsoft Entra roles** iteration 2 will be deprecated soon. Use the new [Azure REST PIM API for Azure resources](/rest/api/authorization/role-eligibility-schedule-requests) and [PIM API for Microsoft Entra roles iteration 3](privilegedidentitymanagementv3-overview.md). To migrate, see the [migration guidance](/graph/api/resources/privilegedidentitymanagement-root).

[Privileged Identity Management (PIM)](/azure/active-directory/privileged-identity-management/pim-configure) is a service that enables you to manage, control, and monitor access to important resources in your organization. This scope includes access to resources in Microsoft Entra ID, Azure resources, and other Microsoft services like Microsoft 365 or Microsoft Intune.

There have been several iterations of the PIM API over the past few years. This iteration is the second iteration (here referred to as iteration 2) and it's succeeded by PIM iteration 3. For more information about the history of the PIM API, see [PIM API history](/azure/active-directory/privileged-identity-management/pim-apis#pim-api-history).

Microsoft Graph provides the following PIM iteration 2 APIs to manage Microsoft Entra roles and Azure resource roles. We recommend that you migrate from PIM iteration 2 API to PIM iteration 3 API.

- APIs for Microsoft Entra roles
- [APIs for Azure resources](privilegedidentitymanagement-resources.md)

## Migrate from PIM iteration 2 APIs to PIM iteration 3 APIs

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
