---
title: "Overview of identity protection APIs in Microsoft Graph"
description: "Use Microsoft Graph to query and receive information about risks detected by Microsoft Entra ID Protection."
author: FaithOmbongi
ms.reviewer: etbasser
ms.localizationpriority: medium
ms.subservice: entra-sign-in
ms.topic: overview
doc_type: conceptualPageType
ms.date: 01/09/2025
# customer intent: As a developer, I want to learn the capabilities of Microsoft Entra Identity Protection that are available through Microsoft Graph so I can integrate with other solutions for long-term storage and analysis.
---

# Overview of identity protection APIs in Microsoft Graph

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra [ID Protection](/entra/id-protection/overview-identity-protection) is tool that allows organizations to discover, investigate, and remediate identity-based risks in their Microsoft Entra organization.

Use the following Microsoft Graph APIs to query user and service principal risks detected by Microsoft Entra ID Protection:

## For users

- [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Microsoft Entra ID Protection include any identified suspicious actions related to user accounts in the directory.

    >[!CAUTION]
    >The **identityRiskEvents*- API was deprecated and stopped returning data on January 10, 2020. It was replaced by the [riskDetection](riskdetection.md) API. For more information about the deprecation, see [Deprecation of the identityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

- [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Microsoft Entra ID Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft's internal and external threat intelligence sources.

  - APIs for manual remediation of risks by confirming a user as compromised or dismissing a risky user are also available.

- [signIn](signin.md) - Query Microsoft Graph for information about sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that an identity owner didn't authorize a given authentication request. These risks can be calculated in real-time or calculated offline using Microsoft's internal and external threat intelligence sources.

## For service principals

- [servicePrincipalRiskDetection](serviceprincipalriskdetection.md) - Query Microsoft Graph for a list of service principal risk detections and associated information about the detections. Risk detections in Microsoft Entra ID Protection include any identified suspicious actions related to service principal accounts in the directory.

- [riskyServicePrincipals](riskyserviceprincipal.md) - Query Microsoft Graph for information about service principals that Microsoft Entra ID Protection detected as risky. Service principal risk represents the probability that a given identity or account is compromised. These risks are calculated asynchronously using data and patterns from Microsoft's internal and external threat intelligence sources.

  - APIs for manual remediation of risks by confirming a service principal as compromised or dismissing a risky service principal are also available.

## For agents

- [agentRiskDetection](agentriskdetection.md) - Query Microsoft Graph for a list of agent risk detections and associated information about the detections. Risk detections in Microsoft Entra ID Protection include any identified suspicious actions related to agent accounts in the directory.

- [riskyAgents](riskyagent.md) - Query Microsoft Graph for information about agents that Microsoft Entra ID Protection detected as risky. Agent risk represents the probability that a given identity or account is compromised. These risks are calculated asynchronously using data and patterns from Microsoft's internal and external threat intelligence sources.

  - APIs for manual remediation of risks by confirming an agent as compromised or dismissing a risky agent are also available.
 
## Integration with fraud protection providers to prevent fake account signups

Microsoft Entra External ID supports integration with third-party fraud protection providers, such as Arkose Labs and HUMAN Security, to help prevent fake account sign-ups and bot attacks. These providers offer comprehensive fraud protection solutions that enable organizations to detect and block automated attacks, such as bot-driven registrations, during the user sign-up process.

Using the [fraudProtectionProvider](../resources/fraudProtectionProvider.md) resource type and its associated APIs to manage the integration to these providers, and the [onFraudProtectionLoadStartListener](../resources/onFraudProtectionLoadStartListener.md) to link the protection with your apps.

## Automatic remediation of risks

Apart from manual remediation of risky users and service principals, you can also automatically remediate risks by integrating Identity Protection with [Microsoft Entra Conditional Access policies](../resources/conditionalaccesspolicy.md). For more information, see [Configure and enable risk policies](/entra/id-protection/howto-identity-protection-configure-risk-policies).

## What can I do with identity protection APIs in Microsoft Graph?

The following are popular requests:

Operation | URL
:----------|:----
GET risky users | [GET https://graph.microsoft.com/beta/identityProtection/riskyUsers](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers&version=beta)
GET risk detections | [GET https://graph.microsoft.com/beta/identityProtection/riskDetections](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskDetections&version=beta)
GET a user's risk history | [GET https://graph.microsoft.com/beta/identityProtection/riskyUsers/{riskyUserId}/history](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers/{riskyUserId}/history&version=beta)
CONFIRM a user as compromised | [POST https://graph.microsoft.com/beta/identityProtection/riskyUsers/confirmCompromised](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/confirmCompromised&version=beta)
DISMISS a risky user | [POST https://graph.microsoft.com/beta/identityProtection/riskyUsers/dismiss](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/dismiss&version=beta)

## What licenses do I need?

Microsoft Entra ID Protection for both users and service principals is a premium feature. You need specific licenses to access the full reports. For more information, see [Microsoft Entra ID Protection license requirements](/entra/id-protection/overview-identity-protection#license-requirements).

## How much data is available?

The availability of risk data is governed by the [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).


## Related content

- [About Microsoft Entra ID Protection](/entra/id-protection/overview-identity-protection)
- [Get started with Microsoft Entra ID Protection and Microsoft Graph](/entra/id-protection/howto-identity-protection-graph-api)
- [Tutorial: Identify and remediate risks using Microsoft Graph APIs](/graph/tutorial-riskdetection-api).
