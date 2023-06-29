---
title: "Use the Microsoft Graph identity protection APIs"
description: "Use Microsoft Graph to query and receive information about risks detected by Azure AD Identity Protection."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: conceptualPageType
ms.date: 08/17/2022
---

# Use the Microsoft Graph identity protection APIs

Namespace: microsoft.graph

Azure Active Directory (Azure AD) [Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection) is tool that allows organizations to discover, investigate, and remediate identity-based risks in their Azure AD organization.

Use the following Microsoft Graph APIs to query user and service principal risks detected by Azure AD Identity Protection:

## For users

+ [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to user accounts in the directory.

    >[!CAUTION]
    >The **identityRiskEvents** API was deprecated and stopped returning data on January 10, 2020. It was replaced by the [riskDetection](riskdetection.md) API. For more information about the deprecation, see [Deprecation of the identityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

+ [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Azure AD Identity Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

+ [signIn](signin.md) - Query Microsoft Graph for information about Azure AD sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that a given authentication request isn’t authorized by the identity owner. These risks can be calculated in real-time or calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

## For service principals

+ [servicePrincipalRiskDetection](serviceprincipalriskdetection.md) - Query Microsoft Graph for a list of service principal risk detections and associated information about the detections. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to service principal accounts in the directory.

+ [riskyServicePrincipals](riskyserviceprincipal.md) - Query Microsoft Graph for information about service principals that Azure AD Identity Protection detected as risky. Service principal risk represents the probability that a given identity or account is compromised. These risks are calculated asynchronously using data and patterns from Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

## What can I do with identity protection APIs in Microsoft Graph?

The following are popular requests:

Operation | URL
:----------|:----
GET risky users | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers&version=v1.0)
GET risk detections | [GET https://graph.microsoft.com/v1.0/identityProtection/riskDetections](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskDetections&version=v1.0)
GET a user's risk history | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/{riskyUserId}/history](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers/{riskyUserId}/history&version=v1.0)
CONFIRM a user as compromised | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/confirmCompromised](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/confirmCompromised&version=v1.0)
DISMISS a risky user | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/dismiss](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/dismiss&version=v1.0)

For specific guidance and additional information, see [Identify and remediate risks using Microsoft Graph APIs](/graph/tutorial-riskdetection-api).

## What licenses do I need?

Azure AD Identity Protection is a premium feature. You need specific licenses to access full details. 

### For users
You need an Azure AD Premium P1 or P2 license to access the Microsoft Graph [riskDetection API](riskdetection.md) (note: P1 licenses receive limited risk information). The [riskyUsers API](riskyuser.md) is only available with an Azure AD Premium P2 license. 

### For service principals
You need a Workload Identities Premium license to access the Microsoft Graph [servicePrincipalRiskDetection API](serviceprincipalriskdetection.md) and the [riskyServicePrincipals API](riskyserviceprincipal.md).

## How much data is available?

The availability of risk data is governed by the [Azure AD data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).


## See also

* [About Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection)
* [Get started with Azure Active Directory Identity Protection and Microsoft Graph](/azure/active-directory/identity-protection/howto-identity-protection-graph-api)
