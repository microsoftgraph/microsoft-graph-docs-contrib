---
title: "Enum values"
description: "Microsoft Graph enumeration values"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: enumTypes
---

### longRunningOperationStatus values 



|Member|
|:---|
|notStarted|
|running|
|succeeded|
|failed|
|unknownFutureValue|

### longRunningOperationStatus values 



|Member|
|:---|
|notStarted|
|running|
|succeeded|
|failed|
|skipped|
|unknownFutureValue|

### submissionCategory values 



|Member|
|:---|
|notJunk|
|spam|
|phishing|
|malware|
|unknownFutureValue|

### submissionClientSource values 



|Member|
|:---|
|microsoft|
|other|
|unknownFutureValue|

### submissionContentType values 



|Member|
|:---|
|email|
|url|
|file|
|app|
|unknownFutureValue|

### submissionResultCategory values 



|Member|
|:---|
|notJunk|
|spam|
|phishing|
|malware|
|allowedByPolicy|
|blockedByPolicy|
|spoof|
|unknown|
|noResultAvailable|
|unknownFutureValue|

### submissionResultDetail values 



|Member|
|:---|
|none|
|underInvestigation|
|simulatedThreat|
|allowedBySecOps|
|allowedByThirdPartyFilters|
|messageNotFound|
|urlFileShouldNotBeBlocked|
|urlFileShouldBeBlocked|
|urlFileCannotMakeDecision|
|domainImpersonation|
|userImpersonation|
|brandImpersonation|
|outboundShouldNotBeBlocked|
|outboundShouldBeBlocked|
|outboundBulk|
|outboundCannotMakeDecision|
|outboundNotRescanned|
|zeroHourAutoPurgeAllowed|
|zeroHourAutoPurgeBlocked|
|zeroHourAutoPurgeQuarantineReleased|
|onPremisesSkip|
|allowedByTenantAllowBlockList|
|blockedByTenantAllowBlockList|
|allowedUrlByTenantAllowBlockList|
|allowedFileByTenantAllowBlockList|
|allowedSenderByTenantAllowBlockList|
|allowedRecipientByTenantAllowBlockList|
|blockedUrlByTenantAllowBlockList|
|blockedFileByTenantAllowBlockList|
|blockedSenderByTenantAllowBlockList|
|blockedRecipientByTenantAllowBlockList|
|allowedByConnection|
|blockedByConnection|
|allowedByExchangeTransportRule|
|blockedByExchangeTransportRule|
|quarantineReleased|
|quarantineReleasedThenBlocked|
|junkMailRuleDisabled|
|allowedByUserSetting|
|blockedByUserSetting|
|allowedByTenant|
|blockedByTenant|
|invalidFalsePositive|
|invalidFalseNegative|
|spoofBlocked|
|goodReclassifiedAsBad|
|goodReclassifiedAsBulk|
|goodReclassifiedAsGood|
|goodReclassifiedAsCannotMakeDecision|
|badReclassifiedAsGood|
|badReclassifiedAsBulk|
|badReclassifiedAsBad|
|badReclassifiedAsCannotMakeDecision|
|unknownFutureValue|

### submissionSource values 



|Member|
|:---|
|user|
|administrator|
|unknownFutureValue|

### tenantAllowBlockListAction values 



|Member|
|:---|
|allow|
|block|
|unknownFutureValue|

### tenantAllowBlockListEntryType values 



|Member|
|:---|
|url|
|fileHash|
|sender|
|recipient|
|unknownFutureValue|

### userMailboxSetting values 



|Member|
|:---|
|none|
|junkMailDeletion|
|isFromAddressInAddressBook|
|isFromAddressInAddressSafeList|
|isFromAddressInAddressBlockList|
|isFromAddressInAddressImplicitSafeList|
|isFromAddressInAddressImplicitJunkList|
|isFromDomainInDomainSafeList|
|isFromDomainInDomainBlockList|
|isRecipientInRecipientSafeList|
|customRule|
|junkMailRule|
|senderPraPresent|
|fromFirstTimeSender|
|exclusive|
|priorSeenPass|
|senderAuthenticationSucceeded|
|isJunkMailRuleEnabled|
|unknownFutureValue|

