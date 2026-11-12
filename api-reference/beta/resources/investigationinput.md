---
title: "investigationInput resource type"
description: "Represents an external resource identifier or keyword supplied to an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# investigationInput resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external resource identifier or keyword supplied to an agentic session. Inputs are shared session context, not a record of the exact input consumed by each agent run. Supply inputs only inline when creating the session; subsequent input writes aren't supported.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List inputs](../api/investigationsession-list-inputs.md)|[investigationInput](../resources/investigationinput.md) collection|Get the session inputs.|
|[Get](../api/investigationinput-get.md)|[investigationInput](../resources/investigationinput.md)|Read an input.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name populated by the service when available. Read-only.|
|id|String|The stable, service-generated input identifier, unique within its containing session. Read-only. Don't supply it on deep insert.|
|kind|investigationInputType|The input kind. Required when creating a session and immutable afterward. The possible values are: `defenderIncidentId`, `defenderAlertId`, `defenderThreatIntelligenceId`, `azureSubscriptionId`, `azureIdentityId`, `keyword`, `unknownFutureValue`. The selected playbook must accept the kind. Don't supply `unknownFutureValue`.|
|value|String|The type-specific resource identifier or keyword text. Required when creating a session and immutable afterward.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.investigationInput",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.investigationInput",
  "id": "String (identifier)",
  "value": "String",
  "kind": "String",
  "displayName": "String"
}
```
