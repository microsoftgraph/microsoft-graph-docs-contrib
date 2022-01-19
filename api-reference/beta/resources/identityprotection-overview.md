---
title: "Use the Azure AD identity protection APIs"
description: "Use Microsoft Graph to query the Identity Protection APIs to receive information about risk detected by Azure AD Identity Protection."
author: "cloudhandler"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: conceptualPageType
---

# Use the Azure AD identity protection API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Identity Protection is tool that allows organizations to discover, investigate, and remediate identity-based risks in their Azure AD organization. You can use the following Microsoft Graph APIs to query risks detected by Identity Protection:

* [riskDetection](riskdetection.md) - Query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to user accounts in the directory.

    >[!CAUTION]
    >The **identityRiskEvents** API was deprecated and stopped returning data on January 10, 2020. It was replaced by the [riskDetection](riskdetection.md) API. For more information about the deprecation, see [Deprecation of the IdentityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

* [riskyUsers](riskyuser.md) - Query Microsoft Graph for information about users that Identity Protection detected as risky. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* [signIn](signin.md) - Query Microsoft Graph for information about Azure AD sign-ins with specific properties related to risk state, detail, and level. A sign-in risk represents the probability that a given authentication request isn’t authorized by the identity owner. These risks can be calculated in real-time or calculated offline using Microsoft’s internal and external threat intelligence sources, including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.


## What can I do with Identity Protection APIs in Microsoft Graph?

The following are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET risky users | [GET https://graph.microsoft.com/beta/identityProtection/riskyUsers](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers&version=beta)
GET risk detections | [GET https://graph.microsoft.com/beta/identityProtection/riskDetections](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskDetections&version=beta)
GET a user's risk history | [GET https://graph.microsoft.com/beta/identityProtection/riskyUsers/{riskyUserId}/history](https://developer.microsoft.com/graph/graph-explorer?request=identityProtection/riskyUsers/{riskyUserId}/history&version=beta)
CONFIRM a user as compromised | [POST https://graph.microsoft.com/beta/identityProtection/riskyUsers/confirmCompromised](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/confirmCompromised&version=beta)
DISMISS a risky user | [POST https://graph.microsoft.com/beta/identityProtection/riskyUsers/dismiss](https://developer.microsoft.com/graph/graph-explorer?request=/identityProtection/riskyUsers/dismiss&version=beta)

For specific guidance and additional information, see [Identify and remediate risks using Microsoft Graph APIs](/graph/tutorial-riskdetection-api).

## What licenses do I need?

Azure AD Identity Protection is a premium feature. You need an Azure AD Premium P1 or P2 license to access the riskDetection API (note: P1 licenses receive limited risk information). The riskyUsers API is only available to Azure AD Premium P2 licenses only.

## See also

* [About Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection)
* [Get started with Azure Active Directory identity protection and Microsoft Graph](/azure/active-directory/identity-protection/howto-identity-protection-graph-api)
