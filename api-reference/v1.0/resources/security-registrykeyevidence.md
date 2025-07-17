---
title: "registryKeyEvidence resource type"
description: "A registry key that is reported in the alert as evidence."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# registryKeyEvidence resource type

Namespace: microsoft.graph.security

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
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.registryKeyEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
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