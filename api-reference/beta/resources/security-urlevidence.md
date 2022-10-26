---
title: "urlEvidence resource type"
description: "A url that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# urlEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A URL that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|The Unique Resource Locator (URL).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.urlEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.urlEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "url": "String"
}
```