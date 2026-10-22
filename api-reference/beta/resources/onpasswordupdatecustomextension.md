---
title: "onPasswordUpdateCustomExtension resource type"
description: "Represents a custom authentication extension for the onPasswordUpdate event, used to synchronize password updates to external systems."
author: "junrlin"
ms.date: 10/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordUpdateCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [custom authentication extension](../resources/customauthenticationextension.md) for the **onPasswordUpdate** event. This extension allows organizations to notify an external system after a user completes a self-service password reset (SSPR), enabling the external system to synchronize the updated credential.

When a user completes SSPR, this extension calls a customer-provided API endpoint with an encrypted reference to the new password. The external system decrypts the reference and propagates the credential without changing the user-visible SSPR result.

The [onPasswordUpdateCustomExtensionHandler](../resources/onpasswordupdatecustomextensionhandler.md) references this resource through its **customExtension** relationship.

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [customAuthenticationExtension](../resources/customauthenticationextension.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the external system. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Error handling behavior when the external API fails or is unreachable. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP client configuration, including timeout and retry settings. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
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
  "@odata.type": "microsoft.graph.onPasswordUpdateCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordUpdateCustomExtension",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
  },
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  },
  "clientConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```
