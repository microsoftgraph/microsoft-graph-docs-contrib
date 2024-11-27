---
title: "appManagementPolicyActorExemptions resource type"
description: "Represents a collection of exemptions from the enforcement of identifierUri restrictions on an app management policy."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/17/2024
---

# appManagementPolicyActorExemptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of exemptions from the enforcement of [identifierUri restrictions](../resources/identifierurirestriction.md) on an app management policy.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customSecurityAttributes|[customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) collection| The collection of [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) to exempt from the policy enforcement. Limit of 5. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appManagementPolicyActorExemptions"
}
```