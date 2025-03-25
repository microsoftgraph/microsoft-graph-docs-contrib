---
title: "whatIfAnalysisResult resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 03/21/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# whatIfAnalysisResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/whatifanalysisresult-list.md)|[whatIfAnalysisResult](../resources/whatifanalysisresult.md) collection|Get a list of the whatIfAnalysisResult objects and their properties.|
|[Get](../api/whatifanalysisresult-get.md)|[whatIfAnalysisResult](../resources/whatifanalysisresult.md)|Read the properties and relationships of a whatIfAnalysisResult object.|
|[Update](../api/whatifanalysisresult-update.md)|[whatIfAnalysisResult](../resources/whatifanalysisresult.md)|Update the properties of a whatIfAnalysisResult object.|
|[Delete](../api/whatifanalysisresult-delete.md)|None|Delete a whatIfAnalysisResult object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|analysisReasons|whatIfAnalysisReasons|**TODO: Add Description**.The possible values are: `notSet`, `notEnoughInformation`, `invalidCondition`, `users`, `workloadIdentities`, `application`, `userActions`, `authenticationContext`, `devicePlatform`, `devices`, `clientApps`, `location`, `signInRisk`, `emptyPolicy`, `invalidPolicy`, `policyNotEnabled`, `userRisk`, `time`, `insiderRisk`, `authenticationFlow`, `unknownFutureValue`.|
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|description|String|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|displayName|String|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|grantControls|[conditionalAccessGrantControls](../resources/conditionalaccessgrantcontrols.md)|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|policyApplies|Boolean|**TODO: Add Description**|
|sessionControls|[conditionalAccessSessionControls](../resources/conditionalaccesssessioncontrols.md)|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).|
|state|conditionalAccessPolicyState|**TODO: Add Description** Inherited from [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).The possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`, `partiallyEnabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.whatIfAnalysisResult",
  "baseType": "microsoft.graph.conditionalAccessPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.whatIfAnalysisResult",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "state": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
  },
  "grantControls": {
    "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
  },
  "sessionControls": {
    "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
  },
  "policyApplies": "Boolean",
  "analysisReasons": "String"
}
```

