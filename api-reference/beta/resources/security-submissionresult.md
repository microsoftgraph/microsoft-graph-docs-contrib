---
title: "submissionResult resource type"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|submissionResultCategory|**TODO: Add Description**.The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown`, `noResultAvailable`, `unknownFutureValue`.|
|detail|submissionResultDetail|**TODO: Add Description**.The possible values are: `none`, `underInvestigation`, `simulatedThreat`, `allowedBySecOps`, `allowedByThirdPartyFilters`, `messageNotFound`, `urlFileShouldNotBeBlocked`, `urlFileShouldBeBlocked`, `urlFileCannotMakeDecision`, `domainImpersonation`, `userImpersonation`, `brandImpersonation`, `outboundShouldNotBeBlocked`, `outboundShouldBeBlocked`, `outboundBulk`, `outboundCannotMakeDecision`, `outboundNotRescanned`, `zeroHourAutoPurgeAllowed`, `zeroHourAutoPurgeBlocked`, `zeroHourAutoPurgeQuarantineReleased`, `onPremisesSkip`, `allowedByTenantAllowBlockList`, `blockedByTenantAllowBlockList`, `allowedUrlByTenantAllowBlockList`, `allowedFileByTenantAllowBlockList`, `allowedSenderByTenantAllowBlockList`, `allowedRecipientByTenantAllowBlockList`, `blockedUrlByTenantAllowBlockList`, `blockedFileByTenantAllowBlockList`, `blockedSenderByTenantAllowBlockList`, `blockedRecipientByTenantAllowBlockList`, `allowedByConnection`, `blockedByConnection`, `allowedByExchangeTransportRule`, `blockedByExchangeTransportRule`, `quarantineReleased`, `quarantineReleasedThenBlocked`, `junkMailRuleDisabled`, `allowedByUserSetting`, `blockedByUserSetting`, `allowedByTenant`, `blockedByTenant`, `invalidFalsePositive`, `invalidFalseNegative`, `spoofBlocked`, `goodReclassifiedAsBad`, `goodReclassifiedAsBulk`, `goodReclassifiedAsGood`, `goodReclassifiedAsCannotMakeDecision`, `badReclassifiedAsGood`, `badReclassifiedAsBulk`, `badReclassifiedAsBad`, `badReclassifiedAsCannotMakeDecision`, `unknownFutureValue`.|
|detectedFiles|[microsoft.graph.security.submissionDetectedFile](../resources/security-submissiondetectedfile.md) collection|**TODO: Add Description**|
|detectedUrls|String collection|**TODO: Add Description**|
|userMailboxSetting|userMailboxSetting|**TODO: Add Description**.The possible values are: `none`, `junkMailDeletion`, `isFromAddressInAddressBook`, `isFromAddressInAddressSafeList`, `isFromAddressInAddressBlockList`, `isFromAddressInAddressImplicitSafeList`, `isFromAddressInAddressImplicitJunkList`, `isFromDomainInDomainSafeList`, `isFromDomainInDomainBlockList`, `isRecipientInRecipientSafeList`, `customRule`, `junkMailRule`, `senderPraPresent`, `fromFirstTimeSender`, `exclusive`, `priorSeenPass`, `senderAuthenticationSucceeded`, `isJunkMailRuleEnabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionResult",
  "category": "String",
  "detail": "String",
  "userMailboxSetting": "String",
  "detectedUrls": [
    "String"
  ],
  "detectedFiles": [
    {
      "@odata.type": "microsoft.graph.security.submissionDetectedFile"
    }
  ]
}
```

