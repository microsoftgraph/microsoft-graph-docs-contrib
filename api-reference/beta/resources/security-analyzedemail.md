---
title: "analyzedEmail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# analyzedEmail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List analyzedEmail objects](../api/security-collaborationroot-list-analyzedemails.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) collection|Get a list of the [microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) objects and their properties.|
|[Get analyzedEmail](../api/security-analyzedemail-get.md)|[microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md)|Read the properties and relationships of a [microsoft.graph.security.analyzedEmail](../resources/security-analyzedemail.md) object.|
|[remediate](../api/security-analyzedemail-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertIds|String collection|**TODO: Add Description**|
|attachments|[microsoft.graph.security.analyzedEmailAttachment](../resources/security-analyzedemailattachment.md) collection|**TODO: Add Description**|
|attachmentsCount|Int32|**TODO: Add Description**|
|authenticationDetails|[microsoft.graph.security.analyzedEmailAuthenticationDetail](../resources/security-analyzedemailauthenticationdetail.md)|**TODO: Add Description**|
|bulkComplaintLevel|String|**TODO: Add Description**|
|contexts|String collection|**TODO: Add Description**|
|detectionMethods|String collection|**TODO: Add Description**|
|directionality|[microsoft.graph.security.antispamDirectionality](#antispamdirectionality-values)|**TODO: Add Description**.The possible values are: `unknown`, `inbound`, `outbound`, `intraOrg`, `unknownFutureValue`.|
|distributionList|String|**TODO: Add Description**|
|emailClusterId|String|**TODO: Add Description**|
|exchangeTransportRules|[microsoft.graph.security.analyzedEmailExchangeTransportRuleInfo](../resources/security-analyzedemailexchangetransportruleinfo.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|internetMessageId|String|**TODO: Add Description**|
|language|String|**TODO: Add Description**|
|latestDelivery|[microsoft.graph.security.analyzedEmailDeliveryDetail](../resources/security-analyzedemaildeliverydetail.md)|**TODO: Add Description**|
|loggedDateTime|DateTimeOffset|**TODO: Add Description**|
|networkMessageId|String|**TODO: Add Description**|
|originalDelivery|[microsoft.graph.security.analyzedEmailDeliveryDetail](../resources/security-analyzedemaildeliverydetail.md)|**TODO: Add Description**|
|overrideSources|String collection|**TODO: Add Description**|
|phishConfidenceLevel|String|**TODO: Add Description**|
|policy|String|**TODO: Add Description**|
|policyAction|String|**TODO: Add Description**|
|recipientEmailAddresses|String collection|**TODO: Add Description**|
|returnPath|String|**TODO: Add Description**|
|senderDetail|[microsoft.graph.security.analyzedEmailSenderDetail](../resources/security-analyzedemailsenderdetail.md)|**TODO: Add Description**|
|sizeInBytes|Int32|**TODO: Add Description**|
|spamConfidenceLevel|String|**TODO: Add Description**|
|subject|String|**TODO: Add Description**|
|threatType|[threatType](#threattype-values)|**TODO: Add Description**.The possible values are: `unknown`, `spam`, `malware`, `phishing`, `none`, `unknownFutureValue`.|
|urls|[microsoft.graph.security.analyzedEmailUrl](../resources/security-analyzedemailurl.md) collection|**TODO: Add Description**|
|urlsCount|Int32|**TODO: Add Description**|

### antispamDirectionality values

|Member|
|:---|
|unknown|
|inbound|
|outbound|
|intraOrg|
|unknownFutureValue|

### threatType values

|Member|
|:---|
|unknown|
|spam|
|malware|
|phishing|
|none|
|unknownFutureValue|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.analyzedEmail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmail",
  "id": "String (identifier)",
  "loggedDateTime": "String (timestamp)",
  "networkMessageId": "String",
  "internetMessageId": "String",
  "senderDetail": {
    "@odata.type": "microsoft.graph.security.analyzedEmailSenderDetail"
  },
  "recipientEmailAddresses": [
    "String"
  ],
  "distributionList": "String",
  "subject": "String",
  "returnPath": "String",
  "directionality": "String",
  "originalDelivery": {
    "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
  },
  "latestDelivery": {
    "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
  },
  "attachmentsCount": "Integer",
  "attachments": [
    {
      "@odata.type": "microsoft.graph.security.analyzedEmailAttachment"
    }
  ],
  "urlsCount": "Integer",
  "urls": [
    {
      "@odata.type": "microsoft.graph.security.analyzedEmailUrl"
    }
  ],
  "language": "String",
  "sizeInBytes": "Integer",
  "alertIds": [
    "String"
  ],
  "exchangeTransportRules": [
    {
      "@odata.type": "microsoft.graph.security.analyzedEmailExchangeTransportRuleInfo"
    }
  ],
  "overrideSources": [
    "String"
  ],
  "threatType": "String",
  "detectionMethods": [
    "String"
  ],
  "contexts": [
    "String"
  ],
  "authenticationDetails": {
    "@odata.type": "microsoft.graph.security.analyzedEmailAuthenticationDetail"
  },
  "phishConfidenceLevel": "String",
  "spamConfidenceLevel": "String",
  "bulkComplaintLevel": "String",
  "emailClusterId": "String",
  "policyAction": "String",
  "policy": "String"
}
```

