---
title: "onOtpSendCustomExtension resource type"
description: "Used for creating a new custom extension based on the onEmailOtpSend event."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 12/10/2024
---

# onOtpSendCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onEmailOtpSend** event.


Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/onotpsendcustomextension-get.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Read the properties and relationships of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Update](../api/onotpsendcustomextension-update.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Update the properties of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings that define how long Microsoft Entra ID can wait for a response from an external app. After this time, Microsoft Entra ID shuts down the connection when trying to trigger the external app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|The description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|The display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The configuration for the API endpoint that the custom extension calls. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Let to configure behavior if the call to custom authentication extension returns error. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md). Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onOtpSendCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onOtpSendCustomExtension",
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
  },
  "clientConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
  },
  "description": "String",
  "displayName": "String",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```
