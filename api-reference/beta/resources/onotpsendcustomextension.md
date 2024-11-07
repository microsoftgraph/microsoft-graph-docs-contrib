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

For the list of API operations for managing this resource type, see the [customAuthenticationExtension](../resources/customauthenticationextension.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define:<br/><ul><li>The allowed time that Microsoft Entra ID waits for a connection.</li><li>The number of times you can retry a timed-out connection.</li><li>The exception scenarios when retries are allowed.<br/>Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|The description for the onEmailOtpSendCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Theisplay name for the onEmailOtpSendCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
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
  }
}
```
