---
title: "analyzedEmailCompromiseIndicator resource type"
description: Represents the indicators which caused the mail to be marked as compromised.
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# compromiseIndicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|Indicator|
|verdict|[microsoft.graph.security.verdictCategory](#verdictCategory-values)|.The possible values are: `none`, `malware`, `phish`, `siteUnavailable`, `spam`, `decryptionFailed`, `unsupportedUriScheme`, `unsupportedFileType`, `undefined`, `unknownFutureValue`.|

### verdictCategory values 

|Member|
|:---|
|none|
|malware|
|phish|
|siteUnavailable|
|spam|
|decryptionFailed|
|unsupportedUriScheme|
|unsupportedFileType|
|undefined|
|unknownFutureValue|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.compromiseIndicator"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.compromiseIndicator",
  "verdict": "String",
  "value": "String"
}
```

