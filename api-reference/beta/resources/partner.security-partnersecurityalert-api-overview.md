---
title: "CSP Partner Security Alerts API overview"
description: "In Microsoft Partner Center ecosystem, for Microsoft partners in the Cloud Solution Provider, Value Added Reseller, or Advisor programs,Partner Center Security Alerts helps partners respond quickly to security, fraud, and other events occurring in their customer’s tenant. For partners that have multiple Partner Center Microsoft Entra tenants, following APIs are provided to list and update alerts."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# CSP Partner Security Alerts API overview

Namespace: microsoft.graph.partner.security

As a partner in the Cloud Solution Provider (CSP) program, you are responsible for your customer's Azure consumption, so it is important that you are aware of any anomalous usage in your customer's Azure subscriptions. Use Microsoft Graph [partner security alerts](../resources/partner.security-partnersecurityalert.md) to detect patterns of fraudulent activities and misuse in Azure resources to help reduce your exposure to online transaction risks.

## Use cases

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner.security-partnersecurityalert-list.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) collection|Get a list of the [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) objects and their properties.|
|[Get](../api/partner.security-partnersecurityalert-get.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md)|Read the properties of a [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) object.|
|[Update](../api/partner.security-partnersecurityalert-update.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md)|Update the properties of a [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) object.|


## Authorization

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/partnersecurityalert-get-permissions.md)]

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

