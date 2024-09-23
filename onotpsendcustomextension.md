---
title: "onOtpSendCustomExtension resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onOtpSendCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onotpsendcustomextensionhandler-list-customextension.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) collection|Get a list of the [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) objects and their properties.|
|[Create](../api/onotpsendcustomextensionhandler-post-customextension.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Create a new [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Get](../api/onotpsendcustomextension-get.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Read the properties and relationships of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Update](../api/onotpsendcustomextension-update.md)|[onOtpSendCustomExtension](../resources/onotpsendcustomextension.md)|Update the properties of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[Delete](../api/onotpsendcustomextensionhandler-delete-customextension.md)|None|Delete an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.|
|[validateAuthenticationConfiguration](../api/onotpsendcustomextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

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

