---
title: "customExtensionOverwriteConfiguration resource type"
description: "Configuration regarding properties of the custom extension which can be overwritten per-event listener."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# customExtensionOverwriteConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration regarding properties of the custom extension which can be overwritten per-event listener. If no values are provided, the properties on the custom extension are used.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|Optional. Configuration of calling external API, such as timeout, retryCount, retriableResponseCodes.|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Optional. Configuration to determine the behavior of custom extension when API call fails, behavior like whether to continue on error or display an error page. |

## Relationships
None

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionOverwriteConfiguration",
  "configuration": {
    "@odata.type": "microsoft.graph.clientConfiguration"
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```

