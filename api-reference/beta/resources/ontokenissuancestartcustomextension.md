---
title: "onTokenIssuanceStartCustomExtension resource type"
description: "Custom extension to invoke when handling the event when a token is about to be issued to your application."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onTokenIssuanceStartCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom extension to invoke when handling the event when a token is about to be issued to your application.

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom authentication extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|claimsForTokenConfiguration|[onTokenIssuanceStartReturnClaim](../resources/ontokenissuancestartreturnclaim.md) collection|Collection of claims to be returned by the API called by this custom authentication extension.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings for the custom authentication extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|Description for the custom authentication extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the custom authentication extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for the API endpoint that the custom authentication extension will call. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Identifier for onTokenIssuanceStartCustomExtension. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onTokenIssuanceStartCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
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
  "claimsForTokenConfiguration": [
    {
      "@odata.type": "microsoft.graph.onTokenIssuanceStartReturnClaim"
    }
  ]
}
```

