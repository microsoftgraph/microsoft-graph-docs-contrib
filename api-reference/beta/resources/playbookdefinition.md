---
title: "playbookDefinition resource type"
description: "Represents a predefined security playbook that a user can run in an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# playbookDefinition resource type

Namespace: microsoft.graph

Represents a predefined security playbook that a user can run in an agentic session. The catalog is read-only. Select an existing definition by its **id** when creating a session; **uniqueName** is a separate catalog name, not an alternate addressing key.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agenticsecurityroot-list-playbookdefinitions.md)|[playbookDefinition](../resources/playbookdefinition.md) collection|Get the catalog.|
|[Get](../api/playbookdefinition-get.md)|[playbookDefinition](../resources/playbookdefinition.md)|Read a definition.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|acceptedInputTypes|investigationInputType collection|The input kinds accepted by this playbook. The possible values are: `defenderIncidentId`, `defenderAlertId`, `defenderThreatIntelligenceId`, `azureSubscriptionId`, `azureIdentityId`, `keyword`, `unknownFutureValue`. `unknownFutureValue` isn't a valid value when creating a session. Read-only.|
|description|String|The description of the work performed by the playbook. Read-only.|
|displayName|String|The human-readable name of the playbook. Read-only.|
|id|String|The service-generated, persisted GUID-string identifier of the playbook definition. Read-only.|
|uniqueName|String|The immutable, unique catalog name, such as `investigate-incident`. Distinct from **id**. Alternate-key addressing isn't supported. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.playbookDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.playbookDefinition",
  "id": "String (identifier)",
  "uniqueName": "String",
  "displayName": "String",
  "description": "String",
  "acceptedInputTypes": [
    "String"
  ]
}
```
