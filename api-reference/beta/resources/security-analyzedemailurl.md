---
title: "analyzedEmailUrl resource type"
description: "Represents information about URLs found in an analyzed email."
author: "MishraSoumyaMS"
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
---

# analyzedEmailUrl resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about URLs found in an [analyzed email](security-analyzedemail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionMethod|String|The method used to detect threats in the URL.|
|detonationDetails|[microsoft.graph.security.detonationDetails](../resources/security-detonationdetails.md)|Detonation data associated with the URL.|
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
  "detonationDetails": {
    "@odata.type": "microsoft.graph.security.detonationDetails"
  }
}
```

