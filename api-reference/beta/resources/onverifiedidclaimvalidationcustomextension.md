---
title: "onVerifiedIdClaimValidationCustomExtension resource type"
description: "Represents a custom authentication extension for the onVerifiedIdClaimValidation event, used for validating claims from Verified ID credential presentations."
author: "vbogomaz"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [custom authentication extension](../resources/customauthenticationextension.md) for the **onVerifiedIdClaimValidation** event. This extension allows organizations to validate claims from Verified ID credential presentations during authentication flows by calling an external API endpoint.

When a user presents a Verified ID credential during authentication, this extension calls a customer-provided API endpoint with the Verified ID claims context, including the user's Entra account information and the claims dictionary from the credential presentation. The external API evaluates the claims and returns a validation result that indicates success or failure.

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [customAuthenticationExtension](../resources/customauthenticationextension.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the external system. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Error handling behavior when the external API fails or is unreachable. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP client configuration including timeout and retry settings. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|Description of the custom authentication extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the custom authentication extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|HTTP endpoint configuration for the external API. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Unique identifier for the custom authentication extension. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onVerifiedIdClaimValidationCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onVerifiedIdClaimValidationCustomExtension",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.httpRequestEndpoint"
  },
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.azureAdTokenAuthentication"
  },
  "clientConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```
