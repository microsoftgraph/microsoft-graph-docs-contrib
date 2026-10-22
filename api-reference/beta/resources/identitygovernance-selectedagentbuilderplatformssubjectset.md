---
title: "selectedAgentBuilderPlatformsSubjectSet resource type"
description: "Represents an inclusion scope that selects agent identities created by one or more agent builder platforms for an agent identity lifecycle policy."
author: "faithwins"
ms.date: 09/30/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# selectedAgentBuilderPlatformsSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an inclusion scope that selects agent identities created by one or more agent builder platforms. Use this type in the **scope** property of an [agentIdentityLifecyclePolicy](../resources/identitygovernance-agentidentitylifecyclepolicy.md) resource. This type is valid only for agent identity lifecycle policies; using it with another lifecycle policy type returns `400 Bad Request`.

Inherits from [microsoft.graph.subjectSet](../resources/subjectset.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|includedAgentBuilderPlatforms|[microsoft.graph.identityGovernance.agentBuilderPlatforms](../resources/enums-identitygovernance.md#agentbuilderplatforms-values)|The agent builder platforms whose agent identities are included in the policy scope. This flags enumeration supports combining values in a comma-separated string. An agent is included when its builder platform matches any selected value. The possible values are: `microsoftCopilotStudio`, `foundry`, `unknownFutureValue`. You must specify at least one supported value. The `unknownFutureValue` value is reserved for future use and isn't supported in create or update requests.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.selectedAgentBuilderPlatformsSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.selectedAgentBuilderPlatformsSubjectSet",
  "includedAgentBuilderPlatforms": "String"
}
```
