---
title: "customExtensionCallbackConfiguration resource type"
description: "Callback settings that define how long Azure AD can wait for a resume signal for the callout that it made to the logic app."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionCallbackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Callback settings that define how long Azure AD can wait for a resume signal for the callout that it made to the logic app. This is an abstract type that's inherited by [customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|The maximum duration in ISO 8601 format that Azure AD will wait for a resume action for the callout it sent to the logic app. The valid range for custom extensions in lifecycle workflows is five minutes to three hours. The valid range for custom extensions in entitlement management is between 5 minutes and 14 days. For example, `PT3H` refers to three hours, `P3D` refers to three days, `PT10M` refers to ten minutes.|


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
  "timeoutDuration": "String (duration)"
}
```

