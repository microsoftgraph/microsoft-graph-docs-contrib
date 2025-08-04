---
title: "onOtpSendCustomExtension resource type"
description: "Used for creating a new custom extension based on the onEmailOtpSend event."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/28/2025
toc.title: On OTP send custom extension
---

# onOtpSendCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onEmailOtpSend** event.


Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

For more information, see [Configure a custom email provider for one time passcode send events (preview)](/entra/identity-platform/custom-extension-email-otp-get-started) or [Try out this event in the Woodgrove demo tenant](/entra/identity-platform/custom-extension-overview#one-time-passcode-send).

## Methods
None.

For the list of API operations for managing this resource type, see the [customAuthenticationExtension](../resources/customauthenticationextension.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Let to configure behavior if the call to custom authentication extension returns error. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md). Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings that define how long Microsoft Entra ID can wait for a response from an external app. After this time, Microsoft Entra ID shuts down the connection when trying to trigger the external app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|The description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|The display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The configuration for the API endpoint that the custom extension calls. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|id|String|The unique identifier for the onEmailOtpSendCustomExtension object. Inherited from [entity](../resources/entity.md).|

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
  "id": "String (identifier)",
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
