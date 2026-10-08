---
title: "allExcludingAgentBuilderPlatformsSubjectSet resource type"
description: "Represents all agent identities except those created through the specified agent builder platforms. Use this type in the **scope** property of an [agentIdentityLifecyclePolicy](../resources/identitygovernance-agentidentitylifecyclepolicy.md)."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# allExcludingAgentBuilderPlatformsSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all agent identities except those created through the specified agent builder platforms. Use this type in the **scope** property of an [agentIdentityLifecyclePolicy](../resources/identitygovernance-agentidentitylifecyclepolicy.md).
Inherits from [microsoft.graph.subjectSet](../resources/subjectset.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| excludedAgentBuilderPlatforms | microsoft.graph.identityGovernance.agentBuilderPlatforms | The agent builder platforms whose agent identities are excluded from the policy scope. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `microsoftCopilotStudio`, `foundry`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.allExcludingAgentBuilderPlatformsSubjectSet"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.allExcludingAgentBuilderPlatformsSubjectSet",
  "excludedAgentBuilderPlatforms": "String"
}
```
