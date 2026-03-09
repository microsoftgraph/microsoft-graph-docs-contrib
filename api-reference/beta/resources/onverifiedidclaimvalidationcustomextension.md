---
title: "onVerifiedIdClaimValidationCustomExtension resource type"
description: "A derived class of customAuthenticationExtension for the OnVerifiedIdClaimValidation event, used to validate claims from Verified ID credential presentations during authentication flows."
author: "FaithOmbongi"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A derived class of [customAuthenticationExtension](customauthenticationextension.md) for the OnVerifiedIdClaimValidation event. This custom extension type enables organizations to validate claims from Verified ID credential presentations during authentication flows by calling an external API.

When a user presents a Verified ID credential during authentication, the claims within that credential (such as name, date of birth, document details) can be validated against expected values. This extension allows a custom API to perform this validation and return either a pass or fail result with details about which claims failed validation.

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

## Methods

This resource is part of a polymorphic collection managed by the [customAuthenticationExtension](customauthenticationextension.md) base type. Operations are performed through the base type endpoints:

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md) collection|Get a list of custom authentication extensions, including onVerifiedIdClaimValidationCustomExtension objects.|
|[Create](../api/identitycontainer-post-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Create a new onVerifiedIdClaimValidationCustomExtension object.|
|[Get](../api/customauthenticationextension-get.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Read the properties and relationships of an onVerifiedIdClaimValidationCustomExtension object.|
|[Update](../api/customauthenticationextension-update.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Update the properties of an onVerifiedIdClaimValidationCustomExtension object.|
|[Delete](../api/customauthenticationextension-delete.md)|None|Delete an onVerifiedIdClaimValidationCustomExtension object.|
|[validateAuthenticationConfiguration](../api/customauthenticationextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|Validate the authentication configuration for the custom extension.|

## Properties

This resource type has no additional properties beyond those inherited from [customAuthenticationExtension](customauthenticationextension.md).

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Defines the error handling behavior when the external API returns an error. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The client configuration that defines how long Microsoft Entra ID waits for a response from the external API, and how many retry attempts it makes. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|A description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|A display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The HTTP endpoint configuration for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Unique identifier for the custom extension. Inherited from [entity](../resources/entity.md).|

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
