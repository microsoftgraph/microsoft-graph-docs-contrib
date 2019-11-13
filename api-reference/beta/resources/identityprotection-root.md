---
title: "Use the Azure AD identity protection APIs (preview)"
description: "You can use Microsoft Graph to query the Identity Protection APIs to receive information about risk detected by Azure AD Identity Protection."
author: "cloudhandler"
localization_priority: Normal
ms.prod: "security"
doc_type: conceptualPageType
---

# Use the Azure AD identity protection API (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Identity Protection is a tool that allows organizations to accomplish three key tasks to discover, investigate, and remediate user compromise risk in their environment. You can use Microsoft Graph to query risk detected by Identity Protection using four APIs. 

* **[riskDetection](riskdetection.md) API**, allows you to query Microsoft Graph for a list of both user and sign-in linked risk detections and associated information about the detection. Risk detections in Azure AD Identity Protection include any identified suspicious actions related to user accounts in the directory.

* **[riskyUsers](riskyusers.md) API**, allows you to query Microsoft Graph for information about users Identity Protection detected as risk. User risk represents the probability that a given identity or account is compromised. These risks are calculated offline using Microsoft’s internal and external threat intelligence sources including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* **[signIn](signin.md) API**, allows you to query Microsoft Graph for information on Azure AD sign-ins with specific properties related to risk state, detail, and level. A sign-in risks represent the probability that a given authentication request isn’t authorized by the identity owner. These risks can be calculated in real-time or calculated offline using Microsoft’s internal and external threat intelligence sources including security researchers, law enforcement professionals, security teams at Microsoft, and other trusted sources.

* **[identityRiskEvents](identityriskevent.md) API**, allows you to query Microsoft Graph for a list of risk detections and associated information- however, new use of this API is not recommended due to upcoming deprecation and current use should be move to riskDetections.

>[!NOTE]
>The identityRiskEvents API will be deprecated for the .com endpoint on January 10, 2020. [Learn more here](https://developer.microsoft.com/en-us/office/blogs/deprecatation-of-the-identityriskevents-api/).

# See also

* [About Azure Active Directory Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/identity-protection/overview-identity-protection)
* [Get started with Azure Active Directory identity protection and Microsoft Graph](https://docs.microsoft.com/en-us/azure/active-directory/identity-protection/howto-identity-protection-graph-api)
