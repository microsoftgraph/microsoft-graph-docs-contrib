---
title: "submissionAdminReview resource type"
description: "Represents admin review information for threat submission"
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# submissionAdminReview resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents admin review information for a threat submission. Currently, only a user reported email threat submission is supported and can be reviewed by an administrator.

## Properties
| Property       | Type                     | Description                                  |
|:---------------|:-------------------------|:---------------------------------------------|
| reviewBy       | String                   | Specifies who reviewed the email. The identification is an email ID or other identity strings.|
| reviewDateTime | DateTimeOffset           | Specifies the date time when the review occurred.|
| reviewResult   |microsoft.graph.security.submissionResultCategory | Specifies what the review result was. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown`, `noResultAvailable`, `unknownFutureValue`, `beingAnalyzed`, `notSubmittedToMicrosoft`, `phishingSimulation`, `allowedDueToOrganizationOverride`, `blockedDueToOrganizationOverride`, `allowedDueToUserOverride`, `blockedDueToUserOverride`, `itemNotfound`, `threatsFound`, `noThreatsFound`, `domainImpersonation`, `userImpersonation`, `brandImpersonation`, `authenticationFailure`, `spoofedBlocked`, `spoofedAllowed`, `bulk`, and `reasonLostInTransit`. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: `beingAnalyzed`, `notSubmittedToMicrosoft`, `phishingSimulation`, `allowedDueToOrganizationOverride`, `blockedDueToOrganizationOverride`, `allowedDueToUserOverride`, `blockedDueToUserOverride`, `itemNotfound`, `threatsFound`, `noThreatsFound`, `domainImpersonation`, `userImpersonation`, `brandImpersonation`, `authenticationFailure`, `spoofedBlocked`, `spoofedAllowed`, `bulk`, and `reasonLostInTransit`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionAdminReview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionAdminReview",
  "reviewDateTime": "String (timestamp)",
  "reviewResult": "String",
  "reviewBy": "String"
}
```

