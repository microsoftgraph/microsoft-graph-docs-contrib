---
title: "onOtpSendCustomExtensionHandler resource type"
description: "Represents configuration information for creating a new custom extension based on the onEmailOtpSend event to configure the custom email provider for one time passcodes."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/25/2025
toc.title: On OTP send custom extension handler
---

# onOtpSendCustomExtensionHandler resource type

Namespace: microsoft.graph

Represents configuration information for creating a new custom extension based on the **onEmailOtpSend** event to configure the custom email provider for one time passcodes.


Inherits from [onOtpSendHandler](../resources/onotpsendhandler.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|Configuration regarding properties of the custom extension that are can be overwritten for the **onEmailOtpSendListener** event listener.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Used for creating a new custom extension based on the **onEmailOtpSend** event to configure the custom email provider for one time passcodes.|

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