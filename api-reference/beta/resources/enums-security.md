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

|Member|
|:---|
|text|
|html|
|markdown|
|unknownFutureValue|

### detectionStatus values

| Member
|:--------------
| detected
| blocked
| prevented
| unknownFutureValue

### actionAfterRetentionPeriod values 



|Member|
|:---|
|none|
|delete|
|startDispositionReview|
|unknownFutureValue|

### behaviorDuringRetentionPeriod values 



|Member|
|:---|
|doNotRetain|
|retain|
|retainAsRecord|
|retainAsRegulatoryRecord|
|unknownFutureValue|


### defaultRecordBehavior values 



|Member|
|:---|
|startLocked|
|startUnlocked|
|unknownFutureValue|


### eventPropagationStatus values 



|Member|
|:---|
|none|
|inProcessing|
|failed|
|success|
|unknownFutureValue|

### eventStatusType values 



|Member|
|:---|
|pending|
|error|
|success|
|notAvaliable|
|unknownFutureValue|

### hostReputationClassification values

|Member|
|:---|
|unknown|
|neutral|
|suspicious|
|malicious|
|unknownFutureValue|

### hostReputationRuleSeverity values

|Member|
|:---|
|unknown|
|low|
|medium|
|high|
|unknownFutureValue|

### indicatorSource values

|Member|
|:---|
|microsoftDefenderThreatIntelligence|
|openSourceIntelligence|
|public|
|unknownFutureValue|

### intelligenceProfileKind values

|Member|
|:---|
|actor|
|tool|
|unknownFutureValue|

### queryType values 



|Member|
|:---|
|files|
|messages|
|unknownFutureValue|



### retentionTrigger values 



|Member|
|:---|
|dateLabeled|
|dateCreated|
|dateModified|
|dateOfEvent|
|unknownFutureValue|

### vulnerabilitySeverity values

|Member|
|:---|
|none|
|low|
|medium|
|high|
|critical|
|unknownFutureValue|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
