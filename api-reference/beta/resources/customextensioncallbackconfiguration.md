---
title: "customExtensionCallbackConfiguration resource type"
description: "Callback settings that defines how long Azure AD can wait for a resume signal for the call out that was made by Azure AD."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionCallbackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Callback settings that defines how long Azure AD can wait for a resume signal for the call out that was made by Azure AD. This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|The max duration that Azure AD will wait for a resume action for the callout that was sent by Azure AD is represented in ISO 8601 format. The Valid range for entitlement management custom extension is between 5 minutes and 14 days. For example, `PT3H` refers to three hours, `P3D` refers to three days, `PT10M` refers to ten minutes.|

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

