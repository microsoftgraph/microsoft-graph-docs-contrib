---
title: "azureResourceEvidence resource type"
description: "Represents Azure Resource like VM, Storage, KeyVault etc."
ms.date: 05/16/2023
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# azureResourceEvidence resource type

Namespace: microsoft.graph.security

Represents Azure Resource like VM, Storage, KeyVault etc.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The azure resource id of the resource.|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.AzureResourceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.AzureResourceEvidence",
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
  "type": "String",
  "resourceType": "String",
  "resourceName": "String",
  "resourceId": "String"
}
```