---
title: "customTaskExtensionCallbackConfiguration resource type"
description: "custom task extension resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtensionCallbackConfiguration resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The custom task extension callback configuration resource type

Inherits from  [customExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|A parameter that accepts an ISO 8601 time duration. Accepted time durations are between 5 min-3 hours. The accepted format is PT followed by an integer and M for minute or H for hour. Examples of these include: PT5M for 5 Minutes and PT3H for 3 Hours.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
  "timeoutDuration": "PT10M"
}
```
