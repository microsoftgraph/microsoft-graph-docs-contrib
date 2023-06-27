---
title: "Security enum values"
description: "Microsoft Graph security subnamespace enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.prod: "security"
author: "BenAlfasi"
---

# Security enum values

Namespace: microsoft.graph.security

### contentFormat values

| Member             |
|:-------------------|
| text               |
| html               |
| markdown           |
| unknownFutureValue |

### detectionStatus values

| Member             |
|:-------------------|
| detected           |
| blocked            |
| prevented          |
| unknownFutureValue |

### actionAfterRetentionPeriod values

| Member                 |
|:-----------------------|
| none                   |
| delete                 |
| startDispositionReview |
| unknownFutureValue     |

### behaviorDuringRetentionPeriod values

| Member                   |
|:-------------------------|
| doNotRetain              |
| retain                   |
| retainAsRecord           |
| retainAsRegulatoryRecord |
| unknownFutureValue       |

### defaultRecordBehavior values

| Member             |
|:-------------------|
| startLocked        |
| startUnlocked      |
| unknownFutureValue |

### eventPropagationStatus values

| Member             |
|:-------------------|
| none               |
| inProcessing       |
| failed             |
| success            |
| unknownFutureValue |

### eventStatusType values

| Member             |
|:-------------------|
| pending            |
| error              |
| success            |
| notAvaliable       |
| unknownFutureValue |

### hostReputationClassification values

| Member             |
|:-------------------|
| unknown            |
| neutral            |
| suspicious         |
| malicious          |
| unknownFutureValue |

### hostReputationRuleSeverity values

| Member             |
|:-------------------|
| unknown            |
| low                |
| medium             |
| high               |
| unknownFutureValue |

### indicatorSource values

| Member             |
|:-------------------|
| microsoft          |
| osint              |
| public             |
| unknownFutureValue |

### intelligenceProfileKind values

| Member             |
|:-------------------|
| actor              |
| tool               |
| unknownFutureValue |

### queryType values

| Member             |
|:-------------------|
| files              |
| messages           |
| unknownFutureValue |

### retentionTrigger values

| Member             |
|:-------------------|
| dateLabeled        |
| dateCreated        |
| dateModified       |
| dateOfEvent        |
| unknownFutureValue |

### vulnerabilitySeverity values

| Member             |
|:-------------------|
| none               |
| low                |
| medium             |
| high               |
| critical           |
| unknownFutureValue |

### deviceAssetIdentifier values

| Member                |
|:----------------------|
| deviceId              |
| deviceName            |
| remoteDeviceName      |
| targetDeviceName      |
| destinationDeviceName |
| unknownFutureValue    |

### deviceIdEntityIdentifier values

| Member             |
|:-------------------|
| deviceId           |
| unknownFutureValue |

### disableUserEntityIdentifier values

| Member                      |
|:----------------------------|
| accountSid                  |
| initiatingProcessAccountSid |
| requestAccountSid           |
| onPremSid                   |
| unknownFutureValue          |

### emailEntityIdentifier values

| Member                |
|:----------------------|
| networkMessageId      |
| recipientEmailAddress |
| unknownFutureValue    |

### fileEntityIdentifier values

| Member                  |
|:------------------------|
| sha1                    |
| initiatingProcessSHA1   |
| sha256                  |
| initiatingProcessSHA256 |
| unknownFutureValue      |

### forceUserPasswordResetEntityIdentifier values

| Member                      |
|:----------------------------|
| accountSid                  |
| initiatingProcessAccountSid |
| requestAccountSid           |
| onPremSid                   |
| unknownFutureValue          |

### huntingRuleErrorCode values

| Member                   |
|:-------------------------|
| queryExecutionFailed     |
| queryExecutionThrottling |
| queryExceededResultSize  |
| queryLimitsExceeded      |
| queryTimeout             |
| alertCreationFailed      |
| alertReportNotFound      |
| partialRowsFailed        |
| unknownFutureValue       |

### huntingRuleRunStatus values

| Member             |
|:-------------------|
| running            |
| completed          |
| failed             |
| partiallyFailed    |
| unknownFutureValue |

### isolationType values

| Member             |
|:-------------------|
| full               |
| selective          |
| unknownFutureValue |

### mailboxAssetIdentifier values

| Member                      |
|:----------------------------|
| accountUpn                  |
| fileOwnerUpn                |
| initiatingProcessAccountUpn |
| lastModifyingAccountUpn     |
| targetAccountUpn            |
| senderFromAddress           |
| senderDisplayName           |
| recipientEmailAddress       |
| senderMailFromAddress       |
| unknownFutureValue          |

### markUserAsCompromisedEntityIdentifier values

| Member                           |
|:---------------------------------|
| accountObjectId                  |
| initiatingProcessAccountObjectId |
| servicePrincipalId               |
| recipientObjectId                |
| unknownFutureValue               |

### scopeType values

| Member             |
|:-------------------|
| deviceGroup        |
| unknownFutureValue |

### stopAndQuarantineFileEntityIdentifier values

| Member                |
|:----------------------|
| deviceId              |
| sha1                  |
| initiatingProcessSHA1 |
| unknownFutureValue    |

### userAssetIdentifier values

| Member                      |
|:----------------------------|
| accountObjectId             |
| accountSid                  |
| accountUpn                  |
| accountName                 |
| accountDomain               |
| accountId                   |
| requestAccountSid           |
| requestAccountName          |
| requestAccountDomain        |
| recipientObjectId           |
| processAccountObjectId      |
| initiatingAccountSid        |
| initiatingProcessAccountUpn |
| initiatingAccountName       |
| initiatingAccountDomain     |
| servicePrincipalId          |
| servicePrincipalName        |
| targetAccountUpn            |
| unknownFutureValue          |

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
