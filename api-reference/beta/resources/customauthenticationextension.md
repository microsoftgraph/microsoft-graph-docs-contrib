---
title: "customAuthenticationExtension resource type"
description: "Custom authentication extensions let you interact with external systems during a user authentication session."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# customAuthenticationExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom authentication extensions define interactions with external systems during a user authentication session. This is an abstract type that's inherited by the [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) derived type.


Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customAuthenticationExtensions](../api/identitycontainer-list-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md) collection|Get a list of the [customAuthenticationExtension](../resources/customauthenticationextension.md) objects and their properties.|
|[Create customAuthenticationExtension](../api/identitycontainer-post-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Create a new [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[Get customAuthenticationExtension](../api/customauthenticationextension-get.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Read the properties and relationships of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[Update customAuthenticationExtension](../api/customauthenticationextension-update.md)|None|Update the properties of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[Delete customAuthenticationExtension](../api/customauthenticationextension-delete.md)|None|Delete a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|[validateAuthenticationConfiguration](../api/customauthenticationextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|Check validity of the endpoint and and authentication configuration for a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for the customAuthenticationExtension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings for the customAuthenticationExtension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|The description of the customAuthenticationExtension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|The display name for the customAuthenticationExtension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The HTTP endpoint that this custom extension calls. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Identifier for the customAuthenticationExtension. Inherited from [entity](../resources/entity.md).|

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

