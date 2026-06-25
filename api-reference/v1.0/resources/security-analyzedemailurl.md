---
title: "analyzedEmailUrl resource type"
description: "Represents information about URLs found in an analyzed email."
author: "MishraSoumyaMS"
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 05/27/2026
---

# analyzedEmailUrl resource type

Namespace: microsoft.graph.security


Represents information about URLs found in an [analyzed email](../resources/security-analyzedemail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionMethod|String|The method used to detect threats in the URL.|
|detonationDetails|[microsoft.graph.security.detonationDetails](../resources/security-detonationdetails.md)|Detonation data associated with the URL.|
|tenantAllowBlockListDetailInfo|String|Details of entries in tenant allow/block list configured by tenant.|
|threatType|microsoft.graph.security.threatType|The type of threat associated with the URL. The possible values are: `unknown`, `spam`, `malware`, `phishing`, `none`, `unknownFutureValue`.|
|url|String|The URL that is found in the email. This is full URL string, including query parameters.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailUrl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailUrl",
  "url": "String",
  "threatType": "String",
  "detectionMethod": "String",
  "tenantAllowBlockListDetailInfo": "String",
  "detonationDetails": {
    "@odata.type": "microsoft.graph.security.detonationDetails"
  }
}
```

