---
title: "customTaskExtensionCallbackConfiguration resource type"
description: "**TODO: Add Description**"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtensionCallbackConfiguration resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

the custom task extension callback configuration resource type

Inherits from [customExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|The time duration before the **customTaskExtensionCallbackConfiguration** times out. Inherited from [customExtensionEndpointConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md).|

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
