---
title: "registryValueEvidence resource type"
description: "A registry value that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
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
|mdeDeviceId|String|A unique identifier assigned to a device by Microsoft Defender for Endpoint.|
|registryHive|String|Registry hive of the key that the recorded action was applied to.|
|registryKey|String|Registry key that the recorded action was applied to.|
|registryValue|String|Data of the registry value that the recorded action was applied to.|
|registryValueName|String|Name of the registry value that the recorded action was applied to.|
|registryValueType|String|Data type, such as binary or string, of the registry value that the recorded action was applied to.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.registryValueEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
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
  "detailedRoles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "mdeDeviceId": "String",
  "registryKey": "String",
  "registryHive": "String",
  "registryValue": "String",
  "registryValueName": "String",
  "registryValueType": "String"
}
```