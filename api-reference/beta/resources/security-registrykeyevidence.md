---
title: "registryKeyEvidence resource type"
description: "A registry key that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# registryKeyEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A registry key that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|registryHive|String|Registry hive of the key that the recorded action was applied to.|
|registryKey|String|Registry key that the recorded action was applied to.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.registryKeyEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.registryKeyEvidence",
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
  "registryKey": "String",
  "registryHive": "String"
}
```