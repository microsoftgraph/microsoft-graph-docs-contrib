---
title: "customTaskExtensionCallbackConfiguration resource type"
description: "Defines if and in which time span a callback is expected from the Azure Logic App."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtensionCallbackConfiguration resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines if, and in, which time span a callback is expected from the Azure Logic App.

Inherits from  [customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration| Callback time out in ISO 8601 time duration. Accepted time durations are between five minutes to three hours. For example, PT5M for five minutes and PT3H for three hours. Inherited from [customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md).|
|authorizedApps|microsoft.graph.application collection| A collection of unique identifiers or **appIds** of the applications that are allowed to [resume](../api/identitygovernance-taskprocessingresult-resume.md) a task processing result.|


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
  "baseType": "microsoft.graph.customExtensionCallbackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
  "timeoutDuration": "String (duration)",
  "authorizedApps":[
    {
      "@odata.type": "microsoft.graph.application"
    }
] 
}
```
