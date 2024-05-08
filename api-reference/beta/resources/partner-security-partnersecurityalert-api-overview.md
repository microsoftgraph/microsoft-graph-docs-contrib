---
title: "Use the partner security alert API in Microsoft Graph (preview)"
description: "The partner security alert API can help CSP partners detect patterns of fraudulent activities and misuse in Azure resources of their customers."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# Use the partner security alert API in Microsoft Graph (preview)

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

As a partner in the Cloud Solution Provider (CSP) program, you're responsible for your customer's Azure consumption; therefore, it's important that you're aware of any anomalous usage in your customer's Azure subscriptions. Use Microsoft Graph [partner security alert](../resources/partner-security-partnersecurityalert.md) API to detect patterns of fraudulent activities and misuse in Azure resources to help reduce your exposure to online transaction risks. Mitigating and responding to the alerts within 24 hours can significantly minimize the financial loss that your customers might incur during the compromise.

For information about how to contain a compromise on your customer's tenant or Azure subscriptions, see [What additional steps can you take to lower the risk of compromise](/partner-center/azure-fraud-notification#what-additional-steps-can-you-take-to-lower-the-risk-of-compromise).

The partner security alert API is defined in the OData subnamespace `microsoft.graph.partners.security`.

## Common use cases

The following are requests for working with the partner security alert API in Microsoft Graph.

| Use cases   | REST operations | Try it in Graph Explorer |
|:---------------|:--------|:----------|
|List partner security alerts| [List](../api/partner-security-partnersecurityalert-list-securityalerts.md) | [https://graph.microsoft.com/beta/security/partner/securityAlerts](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityAlerts&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
|Get a partner security alert |[Get](../api/partner-security-partnersecurityalert-get.md)| [https://graph.microsoft.com/beta/security/partner/securityAlerts/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityAlerts/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
|Update a partner security alert |[Update](../api/partner-security-partnersecurityalert-update.md)| [https://graph.microsoft.com/beta/security/partner/securityAlerts/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/partner/securityAlerts/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com) |

## Next steps

The partner security alert API in Microsoft Graph enables detection of fraudulent activities and misuse in Azure resources, which helps reduce your exposure to online transaction risks. Follow these steps to get started:

- Drill down on the methods and properties of the [partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) resource.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
