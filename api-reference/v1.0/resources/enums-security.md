---
title: "Security enum values"
description: "Microsoft Graph security subnamespace enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "security"
author: "BenAlfasi"
---

# Security enum values

Namespace: microsoft.graph.security

### behaviorDuringRetentionPeriod values

| Member                   |
| :----------------------- |
| doNotRetain              |
| retain                   |
| retainAsRecord           |
| retainAsRegulatoryRecord |
| unknownFutureValue       |

### contentFormat values

| Member             |
| :----------------- |
| text               |
| html               |
| markdown           |
| unknownFutureValue |

### detectionStatus values

| Member
|:--------------
| detected
| blocked
| prevented
| unknownFutureValue

### eventPropagationStatus values

| Member             |
| :----------------- |
| none               |
| inProcessing       |
| failed             |
| success            |
| unknownFutureValue |

### eventStatusType values

| Member             |
| :----------------- |
| pending            |
| error              |
| success            |
| notAvaliable       |
| unknownFutureValue |

### hostPortProtocol values

| Member             |
| :----------------- |
| tcp                |
| udp                |
| unknownFutureValue |

### hostPortStatus values

| Member             |
| :----------------- |
| open               |
| filtered           |
| closed             |
| unknownFutureValue |

### hostReputationClassification values

| Member             |
| :----------------- |
| unknown            |
| neutral            |
| suspicious         |
| malicious          |
| unknownFutureValue |

### hostReputationRuleSeverity values

| Member             |
| :----------------- |
| unknown            |
| low                |
| medium             |
| high               |
| unknownFutureValue |

### indicatorSource values

| Member             |
| :----------------- |
| microsoft          |
| osint              |
| public             |
| unknownFutureValue |

### intelligenceProfileKind values

| Member             |
| :----------------- |
| actor              |
| tool               |
| unknownFutureValue |

### queryType values

| Member             |
| :----------------- |
| files              |
| messages           |
| unknownFutureValue |

### vulnerabilitySeverity values

| Member             |
| :----------------- |
| none               |
| low                |
| medium             |
| high               |
| critical           |
| unknownFutureValue |

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
