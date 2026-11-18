---
title: "conditionalAccessSettings resource type (Conditional Access)"
description: "Represents tenant-wide Conditional Access settings, including user-action exclusions."
author: "vromanchik"
ms.reviewer: conditionalaccesspm
ms.date: 10/28/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessSettings resource type (Conditional Access)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide Conditional Access settings, including user-action exclusions for policies that target all resources.

Inherits from [entity](../resources/entity.md).

Access this singleton through `/identity/conditionalAccess/settings`. The singleton exists automatically; creating or listing settings isn't supported.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get conditionalAccessSettings (Conditional Access)](../api/conditionalaccesssettings-get.md)|[conditionalAccessSettings](../resources/conditionalaccesssettings.md)|Get the tenant's Conditional Access settings.|
|[Update conditionalAccessSettings (Conditional Access)](../api/conditionalaccesssettings-update.md)|[conditionalAccessSettings](../resources/conditionalaccesssettings.md)|Update the tenant's Conditional Access settings.|
|[Delete conditionalAccessSettings](../api/conditionalaccessroot-delete-settings.md)|None|Reset Conditional Access settings to their defaults.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|exclusions|[conditionalAccessExclusions](../resources/conditionalaccessexclusions.md)|The tenant-wide exclusions configuration.|
|id|String|The unique identifier of the settings resource. Read-only. Inherited from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|The date and time the settings were last modified, in ISO 8601 format and UTC. Nullable. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conditionalAccessSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessSettings",
  "id": "String (identifier)",
  "modifiedDateTime": "String (timestamp)",
  "exclusions": {
    "@odata.type": "microsoft.graph.conditionalAccessExclusions"
  }
}
```
