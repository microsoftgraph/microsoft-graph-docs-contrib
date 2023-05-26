---
title: "azureResourceEvidence resource type"
description: "Represents an Azure resource such as a VM, Storage, or KeyVault."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# azureResourceEvidence resource type

Namespace: microsoft.graph.security

Represents an Azure resource such as a VM, Storage, or KeyVault.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The unique identifier for the Azure resource.|
|resourceName|String|The name of the resource.|
|resourceType|String|The type of the resource.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.azureResourceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.azureResourceEvidence",
  "createdDateTime": "String (timestamp)",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "resourceId": "String",
  "resourceName": "String",
  "resourceType": "String",
  "roles": ["String"],
  "tags": ["String"],
  "type": "String",
  "verdict": "String"
}
```
