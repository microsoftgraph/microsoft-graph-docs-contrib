---
title: "conditionalAccessTemplate resource type"
description: "Represents a Microsoft recommended template for Azure Active Directory conditional access policy."
author: "xuchen1"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessTemplate resource type

Namespace: microsoft.graph

Represents a Microsoft recommended template for Azure Active Directory conditional access policies.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditionalAccessTemplates](../api/conditionalaccessroot-list-templates.md)|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) collection|Get a list of the [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) objects and their properties.|
|[Get conditionalAccessTemplate](../api/conditionalaccesstemplate-get.md)|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md)|Read the properties and relationships of a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String| The human-readable name of the template. |
|details|[conditionalAccessPolicyDetail](../resources/conditionalaccesspolicydetail.md)| Complete list of policy details specific to the template. This property contains the JSON of policy settings for configuring a Conditional Access policy. |
|id|String| Immutable id of a template, this value will be represented as GUID. Inherited from [entity](../resources/entity.md). |
|name|String| The human-readable name of the template. |
|scenarios|templateScenarios| List of scenarios a template is recommended for. The following are valid scenarios `new`, `secureFoundation`, `zeroTrust`, `remoteWork`, `protectAdmins`, `emergingThreats`. |

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