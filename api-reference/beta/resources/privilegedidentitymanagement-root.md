---
title: "Privileged Identity Management"
description: "APIs for Azure AD Privileged Identity Management to manage Azure Active Directory roles and Azure resource roles."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.prod: "governance"
author: "shauliu1"
---

# Privileged Identity Management (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!CAUTION]
>The Privileged Identity Management (PIM) API for **Azure AD roles** is deprecated and stopped returning data on May 31, 2021. Please use the [role management](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true) API.
>
>The Privileged Identity Management (PIM) API for **Azure resource roles** will be deprecated soon. Use the new [Azure REST PIM API for Azure resource roles](/rest/api/authorization/role-eligibility-schedule-requests).

[Azure Active Directory (Azure AD) Privileged Identity Management (PIM)](/azure/active-directory/privileged-identity-management/pim-configure) is a service that enables you to manage, control, and monitor access to important resources in your organization. This includes access to resources in Azure AD, Azure resources, and other Microsoft Online Services like Microsoft 365 or Microsoft Intune.

Microsoft Graph provides the following APIs to manage Azure AD roles and Azure resource roles:

- [APIs for Azure AD roles](privilegedidentitymanagement-directory.md)
- [APIs for Azure resource roles](privilegedidentitymanagement-resources.md)


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
