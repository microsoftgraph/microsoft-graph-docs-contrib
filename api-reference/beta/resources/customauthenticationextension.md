---
title: "customAuthenticationExtension resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# customAuthenticationExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom Extensions are cool.
This is an abstract type.


Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customAuthenticationExtensions](../api/identitycontainer-list-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md) collection|Get a list of the [customAuthenticationExtension](../resources/customauthenticationextension.md) objects and their properties.|
|[Create customAuthenticationExtension](../api/identitycontainer-post-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Create a new [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[Get customAuthenticationExtension](../api/customauthenticationextension-get.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Read the properties and relationships of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[Update customAuthenticationExtension](../api/customauthenticationextension-update.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Update the properties of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[Delete customAuthenticationExtension](../api/identitycontainer-delete-customauthenticationextensions.md)|None|Deletes a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[validateAuthenticationConfiguration](../api/customauthenticationextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|**TODO: Add Description**|
|[validateAuthenticationConfiguration](../api/customauthenticationextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|**TODO: Add Description**|

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
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customAuthenticationExtension",
  "baseType": "microsoft.graph.customCalloutExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAuthenticationExtension",
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

