---
title: "onOtpSendCustomExtensionHandler resource type"
description: "Used for creating a new custom extension based on the onEmailOtpSend event to configure the custom email provider for Oone time passcodes."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onOtpSendCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **ononEmailOtpSend** event to configure the custom email provider for one time passcodes.


Inherits from [onOtpSendHandler](../resources/onotpsendhandler.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onOtpSendCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onOtpSendCustomExtensionHandler",
  "configuration": {
    "@odata.type": "microsoft.graph.customExtensionOverwriteConfiguration"
  }
}
```

