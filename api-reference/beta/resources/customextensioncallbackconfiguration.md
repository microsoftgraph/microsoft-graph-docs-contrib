---
title: "customExtensionCallbackConfiguration resource type"
description: "The callback configuration for a custom task extension that's linked to an Azure Logic App."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionCallbackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type describing the callback configuration of a [custom callout extension](../resources/customcalloutextension.md).

This abstract type is inherited by:
+ [customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|Callback time out in ISO 8601 time duration. Accepted time durations are between five minutes to three hours. For example, PT5M for five minutes and PT3H for three hours.|
|authorizedApps|microsoft.graph.application collection| Unique identifier for the application object.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
}
-->
``` json
{
"@odata.type": "#microsoft.graph.customExtensionCallbackConfiguration",
"timeoutDuration": "String (duration)",
"authorizedApps":[
{
"@odata.type": "microsoft.graph.application"
}
] 
}
```
