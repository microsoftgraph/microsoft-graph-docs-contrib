---
title: "ipEvidence resource type"
description: "An IP Address that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---


# ipEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An IP Address that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ipAddress|String|The value of the IP Address, can be either in V4 address or V6 address format.|
|countryLetterCode|String|The two-letter country code according to ISO 3166 format, for example: `US`, `UK`, `CA`, etc..).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.ipEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ipEvidence",
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
  "ipAddress": "String",
  "countryLetterCode": "String"
}
```