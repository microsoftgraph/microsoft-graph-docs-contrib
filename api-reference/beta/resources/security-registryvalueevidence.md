---
title: "registryValueEvidence resource type"
description: "A registry value that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# registryValueEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A registry value that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|registryHive|String|Registry hive of the key that the recorded action was applied to.|
|registryKey|String|Registry key that the recorded action was applied to.|
|registryValue|String|Data of the registry value that the recorded action was applied to.|
|registryValueName|String|Name of the registry value that the recorded action was applied to.|
|registryValueType|String|Data type, such as binary or string, of the registry value that the recorded action was applied to.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.registryValueEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.registryValueEvidence",
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
  "registryHive": "String",
  "registryValue": "String",
  "registryValueName": "String",
  "registryValueType": "String"
}
```