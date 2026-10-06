---
title: "lifecyclePolicyPriorityConfiguration resource type"
description: "Represents the priority order in which lifecycle policies are evaluated for a subject type."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyPriorityConfiguration resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the ordered list of [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) objects that are evaluated for a given subject type. Policies are evaluated in priority order, and only the highest-priority matching policy binds to an identity.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lifecyclePolicyPriorityConfigurations](../api/identitygovernance-lifecycleworkflowscontainer-list-lifecyclepolicypriorityconfigurations.md)|[microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) collection|Get a list of the lifecyclePolicyPriorityConfiguration objects and their properties.|
|[Get lifecyclePolicyPriorityConfiguration](../api/identitygovernance-lifecyclepolicypriorityconfiguration-get.md)|[microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md)|Read the properties and relationships of [lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) object.|
|[Update lifecyclePolicyPriorityConfiguration](../api/identitygovernance-lifecyclepolicypriorityconfiguration-update.md)|[microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md)|Update the properties of a lifecyclePolicyPriorityConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the priority configuration, which corresponds to the subject type that the configuration applies to. Inherited from [entity](../resources/entity.md).|
|orderedPolicyIds|String collection|The identifiers of the lifecycle policies in evaluation priority order. The first policy in the collection has the highest priority. A maximum of 10 policies are allowed per subject type.|
|subjectType|[microsoft.graph.identityGovernance.subjectType](../resources/enums-identitygovernance.md#subjecttype-values)|The subject type that the lifecycle policies in this configuration apply to. The possible values are: `user`, `agentIdentity`, `unknownFutureValue`, `provisioningObject`. Use the `Prefer: include-unknown-enum-members` request header to get the `provisioningObject` value in this evolvable enum. Immutable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration",
  "id": "String (identifier)",
  "orderedPolicyIds": [
    "String"
  ],
  "subjectType": "String"
}
```
