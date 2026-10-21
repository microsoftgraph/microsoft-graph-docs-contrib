---
title: "onPasswordUpdateCustomExtensionHandler resource type"
description: "Represents a handler that invokes a custom authentication extension after a password update."
author: "junrlin"
ms.date: 10/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordUpdateCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a handler that invokes a custom authentication extension API after a user completes a self-service password reset. The handler enables an external system to synchronize the updated credential.

This type is configured through the **handler** property of an [onPasswordUpdateListener](../resources/onpasswordupdatelistener.md).

Inherits from [onPasswordUpdateHandler](../resources/onpasswordupdatehandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|Configuration that overrides the default settings from the referenced custom extension, such as timeout and retry values.|
|expirationDateTime|DateTimeOffset|The date and time at which the listener stops invoking the custom extension. The value must be in the future and can't be more than six months after the create or PATCH request. Renew the value by updating the listener. After the value passes, the callout is skipped until the listener is renewed or recreated.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onPasswordUpdateCustomExtension](../resources/onpasswordupdatecustomextension.md)|Reference to the custom authentication extension that is invoked to synchronize the updated credential. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPasswordUpdateCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordUpdateCustomExtensionHandler",
  "configuration": {
    "@odata.type": "microsoft.graph.customExtensionOverwriteConfiguration"
  },
  "expirationDateTime": "String (timestamp)",
  "customExtension": {
    "@odata.type": "microsoft.graph.onPasswordUpdateCustomExtension"
  }
}
```
