---
title: "onPasswordSubmitCustomExtension resource type"
description: "Represents a custom authentication extension for the onPasswordSubmit event, used for Just-In-Time migration from legacy authentication providers."
author: "diadabal"
ms.date: 01/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordSubmitCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom authentication extension for the **onPasswordSubmit** event. This extension enables organizations to validate user credentials against legacy authentication systems during the sign-in process, facilitating Just-In-Time (JIT) migration scenarios where passwords can't be exported from the legacy system.

When a user attempts to sign in, this extension calls a customer-provided API endpoint to validate the password against the legacy system. Upon successful validation, the user's credentials are persisted in Microsoft Entra ID, completing the migration for that user.

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [customAuthenticationExtension](../resources/customauthenticationextension.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the external system. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Error handling behavior if the external API fails or is unreachable. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP client configuration including timeout and retry settings. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|description|String|Description of the custom authentication extension. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|displayName|String|Display name for the custom authentication extension. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|HTTP endpoint configuration for the external API. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|id|String|Unique identifier for the custom authentication extension. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPasswordSubmitCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordSubmitCustomExtension",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.httpRequestEndpoint",
    "targetUrl": "String"
  },
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.azureAdTokenAuthentication",
    "resourceId": "String"
  },
  "clientConfiguration": {
    "timeoutInMilliseconds": 1024,
    "maximumRetries": 1024
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```

