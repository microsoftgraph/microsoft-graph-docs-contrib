---
title: "Use the partner security alerts API in Microsoft Graph (preview)"
description: "The partner security alerts API can help CSP partners detect patterns of fraudulent activities and misuse in Azure resources of their customers."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# Use the partner security alerts API in Microsoft Graph (preview)

Namespace: microsoft.graph.partner.security

As a partner in the Cloud Solution Provider (CSP) program, you're responsible for your customer's Azure consumption; therefore, it's important that you're aware of any anomalous usage in your customer's Azure subscriptions. Microsoft is releasing the new API for partners to protect and respond to critical security alerts that impact the customers. Use Microsoft Graph [partner security alerts](../resources/partner-security-partnersecurityalert.md) to detect patterns of fraudulent activities and misuse in Azure resources to help reduce your exposure to online transaction risks. Mitigating and responding to the alerts within 24 hours can significantly help reduce the financial loss that may incur during the compromise.

For more details, please review [steps recommended](https://learn.microsoft.com/en-us/partner-center/azure-fraud-notification#what-additional-steps-can-you-take-to-lower-the-risk-of-compromise) to contain the compromise immediately on your customer’s tenant or Azure subscriptions.  

The partner security alerts API is defined in the OData subnamespace `microsoft.graph.partners.security`.

## Authorization

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/partnersecurityalert-get-permissions.md)]

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Common use cases

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityalert-list.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) collection|Get a list of the [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) objects and their properties.|
|[Get](../api/partner-security-partnersecurityalert-get.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md)|Read the properties of a [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) object.|
|[Update](../api/partner-security-partnersecurityalert-update.md)|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md)|Update the properties of a [microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) object.|
