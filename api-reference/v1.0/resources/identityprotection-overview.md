---
title: "Use the Microsoft Graph identity protection APIs"
description: "Use Microsoft Graph to query and receive information about risks detected by Azure AD Identity Protection."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: conceptualPageType
---

# Use the Microsoft Graph identity protection APIs

Namespace: microsoft.graph

Azure Active Directory (Azure AD) [Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection) is tool that allows organizations to discover, investigate, and remediate identity-based risks in their Azure AD organization. You can use the following Microsoft Graph APIs to query risks detected by Azure AD Identity Protection:

* [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to user accounts in the directory.

* [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Azure AD Identity Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* [signIn](signin.md) - Query Microsoft Graph for information about Azure AD sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that a given authentication request isn’t authorized by the identity owner. These risks can be calculated in real-time or calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.


## What can I do with identity protection APIs in Microsoft Graph?

The following are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET risky users | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers&version=v1.0)
GET risk detections | [GET https://graph.microsoft.com/v1.0/identityProtection/riskDetections](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskDetections&version=v1.0)
GET a user's risk history | [GET https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/{riskyUserId}/history](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers/{riskyUserId}/history&version=v1.0)
CONFIRM a user as compromised | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/confirmCompromised](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/confirmCompromised&version=v1.0)
DISMISS a risky user | [POST https://graph.microsoft.com/v1.0/identityProtection/riskyUsers/dismiss](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/dismiss&version=v1.0)

For specific guidance and additional information, see [Identify and remediate risks using Microsoft Graph APIs](/graph/tutorial-riskdetection-api).

## What licenses do I need?

Azure AD Identity Protection is a premium feature. You need an Azure AD Premium P1 or P2 license to access the Microsoft Graph [riskDetection API](riskdetection.md) (note: P1 licenses receive limited risk information). The [riskyUsers API](riskyuser.md) is only available with an Azure AD Premium P2 license.

## How much data is available?

The availability of risk data is governed by the [Azure AD data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## See also

* [About Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection)
* [Get started with Azure Active Directory Identity Protection and Microsoft Graph](/azure/active-directory/identity-protection/howto-identity-protection-graph-api)
