---
title: "conditionalAccessTemplate resource type"
description: "Represents a Microsoft recommended template of best practice configurations for Azure Active Directory conditional access policies."
author: "lisaychuang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessTemplate resource type

Namespace: microsoft.graph

Represents a Microsoft recommended template of best practice configurations for Azure Active Directory [conditional access policies](../resources/conditionalaccesspolicy.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditionalAccessTemplates](../api/conditionalaccessroot-list-templates.md)|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) collection|Get a list of the [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) objects and their properties.|
|[Get conditionalAccessTemplate](../api/conditionalaccesstemplate-get.md)|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md)|Read the properties and relationships of a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String| The user-friendly name of the template. |
|details|[conditionalAccessPolicyDetail](../resources/conditionalaccesspolicydetail.md)| Complete list of policy details specific to the template. This property contains the JSON of policy settings for configuring a Conditional Access policy. |
|id|String| Immutable ID of a template. Inherited from [entity](../resources/entity.md). |
|name|String| The user-friendly name of the template. |
|scenarios|templateScenarios| List of conditional access scenarios that the template is recommended for. The possible values are: `new`, `secureFoundation`, `zeroTrust`, `remoteWork`, `protectAdmins`, `emergingThreats`, `unknownFutureValue`. This is a multi-valued enum. Supports `$filter` (`has`).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conditionalAccessTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessTemplate",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "scenarios": "String",
  "details": {
    "@odata.type": "microsoft.graph.conditionalAccessPolicyDetail"
  }
}
```
