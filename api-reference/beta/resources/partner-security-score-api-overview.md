---
title: "Use the partner security score API in Microsoft Graph (preview)"
description: "The partner security score API helps Cloud Solution Provider (CSP) partners understand their security posture and their customer's security posture."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
ms.date: 08/30/2024
---

# Use the partner security score API in Microsoft Graph (preview)

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Partner Center ecosystem provides a security score to indirect providers or direct bill partners in the Cloud Solution Provider (CSP), Value Added Reseller, or Advisor programs. The goal of the score and requirements is to help partners understand the security posture of their tenant and their customer's tenants. The partner security score builds on the Identity and Microsoft 365 security scores to provide suggestions specific to their scenario.
The [partner security score API](../resources/partner-security-partnersecurityscore.md) is a pivotal tool designed to empower Microsoft partners by providing a quantifiable measure of their security performance. This API facilitates partners in enhancing their security posture by offering a comprehensive security score based on their adherence to Microsoft's security requirements.

The partner security score API is defined in the OData subnamespace `microsoft.graph.partners.security`.

## Objectives

The primary objectives of the security score API include:
 
* __Quantifying security performance:__ Offering partners a numerical score that reflects their current security status.  
* __Guiding security enhancements with actionable insights:__ Providing actionable insights and recommendations to help partners bolster their security measures.  
* __Monitoring security evolution:__ Enabling partners to track their security improvements over time, fostering a culture of continuous security enhancement.  
 
Use the Microsoft Graph [partner security score API](../resources/partner-security-partnersecurityscore.md) to retrieve the score and insights into your customer security posture.
 
> **Note:** In order to take actions for the security requirements, choose the action URL provisioned in the API response to go to the relevant UI.

## Common use cases

The following table shows common requests for working with the partner security alert API in Microsoft Graph.

| Use case   | REST operation | Try it in Graph Explorer |
|:---------------|:--------|:----------|
|Get partner security score| [Get](../api/partner-security-partnersecurityscore-get.md) | [https://graph.microsoft.com/beta/security/partner/securityScore](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityScore&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
|List customer security insights |[List](../api/partner-security-partnersecurityscore-list-customerinsights.md)| [https://graph.microsoft.com/beta/security/partner/securityScore/customerInsights](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityScore/customerInsights&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |

## Related content

The partner security score API in Microsoft Graph provides a summary of your security posture and provides actions to improve. Follow these steps to get started:

- Drill down on the requirements and properties of the [partnerSecurityScore](../resources/partner-security-partnersecurityscore.md) resource.
- Try the API in the [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
