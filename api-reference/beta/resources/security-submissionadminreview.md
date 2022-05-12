---
title: "submissionAdminReview resource type"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionAdminReview resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reviewBy|String|**TODO: Add Description**|
|reviewDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewResult|submissionResultCategory|**TODO: Add Description**.The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown`, `noResultAvailable`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionAdminReview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionAdminReview",
  "reviewDateTime": "String (timestamp)",
  "reviewResult": "String",
  "reviewBy": "String"
}
```

