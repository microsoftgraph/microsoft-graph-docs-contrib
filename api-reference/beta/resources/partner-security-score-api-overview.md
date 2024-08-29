---
title: "Use the partner security score API in Microsoft Graph (preview)"
description: "The partner security score API helps Cloud Solution Provider (CSP) partners understand their security posture and their customer's security posture."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# Use the partner security score API in Microsoft Graph (preview)

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Partner Center ecosystem provides a security score to indirect providers or direct bill partners in the Cloud Solution Provider (CSP), Value Added Reseller, or Advisor programs. The goal of the score and requirements is to help partners understand the security posture of their tenant and their customer's tenants. The partner security score builds on the Identity and Microsoft 365 security scores to provide specific suggestions to their scenario.
The [Partner Security Score API](../resources/partner-security-partnersecurityscore.md) is a pivotal tool designed to empower Microsoft partners by providing a quantifiable measure of their security performance. This API facilitates partners in enhancing their security posture by offering a comprehensive security score based on their adherence to Microsoft's security requirements.

## Objectives

The primary objectives of the Security Score API include:
 
* __Quantifying Security Performance:__ Offering partners a numerical score that reflects their current security status.  
* __Guiding Security Enhancements with Actionable Insights:__ Providing actionable insights and recommendations to help partners bolster their security measures.  
* __Monitoring Security Evolution:__ Enabling partners to track their security improvements over time, fostering a culture of continuous security enhancement.  
 
Use Microsoft Graph [Partner Security Score API](../resources/partner-security-partnersecurityscore.md) to retrieve the score and insights into customer security posture.
The partner security score API is defined in the OData subnamespace microsoft.graph.partners.security.
 
> **Note:** In order to take actions for the security requirements, choose the action URL provisioned in the API response to go to the relevant UI.

The partner security score API is defined in the OData subnamespace `microsoft.graph.partners.security`.

## Authorization

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/partnersecurityscore-get-permissions.md)]

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Common use cases

The following are common requests for working with the partner security alert API in Microsoft Graph.

| Use cases   | REST operations | Try it in Graph Explorer |
|:---------------|:--------|:----------|
|Get partner security score| [List](../api/partner-security-partnersecurityscore-get.md) | [https://graph.microsoft.com/beta/security/partner/securityScore](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityScore&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
|List customer security insights |[List](../api/partner-security-partnersecurityscore-list-customerinsights.md)| [https://graph.microsoft.com/beta/security/partner/securityScore/customerInsights](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityScore/customerInsights&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |

## Related content

The partner security score API in Microsoft Graph provides a summary of your security posture and provides actions to improve. Follow these steps to get started:

- Drill down on the requirements and properties of the [partnerSecurityScore](../resources/partner-security-partnersecurityscore.md) resource.
- Try the API in the [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
