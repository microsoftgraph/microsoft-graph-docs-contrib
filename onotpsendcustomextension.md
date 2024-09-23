---
title: "onOtpSendCustomExtension resource type"
description: "Used for creating a new custom extension based on the onEmailOtpSend event."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onOtpSendCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onEmailOtpSend** event.


Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onotpsendcustomextensionhandler-list-customextension.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) collection|Get a list of the [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) objects and their properties.|
|[Create](../api/onotpsendcustomextensionhandler-post-customextension.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Create a new [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Get](../api/onotpsendcustomextension-get.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Read the properties and relationships of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Update](../api/onotpsendcustomextension-update.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Update the properties of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Delete](../api/onotpsendcustomextensionhandler-delete-customextension.md)|None|Delete an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[validateAuthenticationConfiguration](../api/onotpsendcustomextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|Validate incoming tokens with authentication events.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define how long Microsoft Entra ID can wait for a connection, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|Description for the onEmailOtpSendCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the onEmailOtpSendCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Identifier for the onEmailOtpSendCustomExtension object. Inherited from [entity](../resources/entity.md).|

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
  }
}
```

