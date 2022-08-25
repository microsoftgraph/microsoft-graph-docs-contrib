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

Inherits from  [customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration| Callback time out in ISO 8601 time duration. Accepted time durations are between five minutes to three hours. For example, PT5M for five minutes and PT3H for three hours. Inherited from [customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md).|

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
  "timeoutDuration": "String (duration)"
}
```
