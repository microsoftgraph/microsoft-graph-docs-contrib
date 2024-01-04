---
title: "analyzedEmailUrl resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# analyzedEmailUrl resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionMethod|String|**TODO: Add Description**|
|detonationDetails|[microsoft.graph.security.detonationDetails](../resources/security-detonationdetails.md)|**TODO: Add Description**|
|threatType|[threatType](#threattype-values)|**TODO: Add Description**.The possible values are: `unknown`, `spam`, `malware`, `phishing`, `none`, `unknownFutureValue`.|
|url|String|**TODO: Add Description**|

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

