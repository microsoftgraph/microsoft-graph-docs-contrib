---
title: "Overview of identity protection APIs in Microsoft Graph"
description: "Use Microsoft Graph to query and receive information about risks detected by Microsoft Entra ID Protection."
author: FaithOmbongi
ms.reviewer: etbasser
ms.localizationpriority: medium
ms.subservice: entra-sign-in
ms.topic: overview
ms.date: 01/09/2025
# customer intent: As a developer, I want to learn the capabilities of Microsoft Entra ID Protection that are available through Microsoft Graph so I can integrate with other solutions for long-term storage and analysis.
---

# Overview of identity protection APIs in Microsoft Graph

Namespace: microsoft.graph

Microsoft Entra [ID Protection](/entra/id-protection/overview-identity-protection) is tool that allows organizations to discover, investigate, and remediate identity-based risks in their Microsoft Entra organization.

Use the following Microsoft Graph APIs to query user and service principal risks detected by Microsoft Entra ID Protection:

## For users

- [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Microsoft Entra ID Protection include any identified suspicious actions related to user accounts in the directory.

- [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Microsoft Entra ID Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft's internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

  - APIs for manual remediation of risks by confirming a user as compromised or dismissing a risky user are also available.

- [signIn](signin.md) - Query Microsoft Graph for information about sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that an identity owner didn't authorize a given authentication request. These risks can be calculated in real-time or calculated offline using Microsoft's internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

## For service principals

- [servicePrincipalRiskDetection](serviceprincipalriskdetection.md) - Query Microsoft Graph for a list of service principal risk detections and associated information about the detections. Risk detections in Microsoft Entra ID Protection include any identified suspicious actions related to service principal accounts in the directory.

- [riskyServicePrincipals](riskyserviceprincipal.md) - Query Microsoft Graph for information about service principals that Microsoft Entra ID Protection detected as risky. Service principal risk represents the probability that a given identity or account is compromised. These risks are calculated asynchronously using data and patterns from Microsoft's internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

  - APIs for manual remediation of risks by confirming a service principal as compromised or dismissing a risky service principal are also available.

## Automatic remediation of risks

Apart from manual remediation of risky users and service principals, you can also automatically remediate risks by integrating Identity Protection with [Microsoft Entra Conditional Access policies](../resources/conditionalaccesspolicy.md). For more information, see [Configure and enable risk policies](/entra/id-protection/howto-identity-protection-configure-risk-policies).

## What can I do with identity protection APIs in Microsoft Graph?

The following are popular requests:

Operation | URL
:----------|:----
GET risky users | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers&version=v1.0)
GET risk detections | [GET https://graph.microsoft.com/v1.0/identityProtection/riskDetections](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskDetections&version=v1.0)
GET a user's risk history | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/{riskyUserId}/history](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers/{riskyUserId}/history&version=v1.0)
CONFIRM a user as compromised | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/confirmCompromised](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/confirmCompromised&version=v1.0)
DISMISS a risky user | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/dismiss](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/dismiss&version=v1.0)

## What licenses do I need?

Microsoft Entra ID Protection for both users and service principals is a premium feature. You need specific licenses to access the full reports. For more information, see [Microsoft Entra ID Protection license requirements](/entra/id-protection/overview-identity-protection#license-requirements).

## How much data is available?

The availability of risk data is governed by the [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).


## Related content

- [About Microsoft Entra ID Protection](/azure/active-directory/identity-protection/overview-identity-protection)
- [Get started with Microsoft Entra ID Protection and Microsoft Graph](/entra/id-protection/howto-identity-protection-graph-api)
- [Tutorial: Identify and remediate risks using Microsoft Graph APIs](/graph/tutorial-riskdetection-api).
