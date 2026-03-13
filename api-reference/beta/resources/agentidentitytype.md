---
title: "agentIdentityType enum type"
description: Represents the type of Microsoft Entra agent identity for risk detection and management.
author: jiayle27
ms.date: 01/22/2026
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: enumPageType
---

# agentIdentityType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the type of Microsoft Entra agent identity for risk detection and management. This enumeration is used by the [riskyAgent](riskyagent.md) and [agentRiskDetection](agentriskdetection.md) resources to classify different types of agent identities.

## Members

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to get the following member in this evolvable enum: `agentIdentityBlueprintPrincipal`.

| Member | Description |
|:-------|:------------|
| agentIdentity | Represents a standard agent identity registered in Microsoft Entra ID. |
| agentUser | Represents a user account associated with an AI agent. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
| agentIdentityBlueprintPrincipal | Represents an agent identity blueprint principal that defines agent identity templates. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentIdentityType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentIdentityType"
}
```
