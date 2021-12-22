---
title: "authenticationRequirementPolicy resource type"
description: "Source of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults."
ms.localizationpriority: medium
author: "danielwood95"
ms.prod: "identity-and-access"
doc_type: resourcePageType
---

# authenticationRequirementPolicy resource type

Namespace: microsoft.graph
Source of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults. 



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|requirementProvider|requirementProvider|Represents the source of authentication.|
|detail|String|Source of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
}-->

```json
{
  "requirementProvider": "string",
  "detail": "string"
}

```
