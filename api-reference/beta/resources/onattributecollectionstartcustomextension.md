---
title: "onAttributeCollectionStartCustomExtension resource type"
description: "Used for creating a new custom extension based on the onAttributeCollectionStart event."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionStartCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onAttributeCollectionStart** event to configure the collection of attributes upon user sign up. This includes which attributes to collect, how to display them, and API connectors for backwards compatiblity.

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAttributeCollectionStartCustomExtensions](../api/onattributecollectionstartcustomextension-list.md)|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) collection|Get a list of the [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) objects and their properties.|
|[Get onAttributeCollectionStartCustomExtension](../api/onattributecollectionstartcustomextension-get.md)|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md)|Read the properties and relationships of an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object.|
|[Update onAttributeCollectionStartCustomExtension](../api/onattributecollectionstartcustomextension-update.md)|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md)|Update the properties of an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object.|
|[Delete onAttributeCollectionStartCustomExtension](../api/onattributecollectionstartcustomextension-delete.md)|None|Delete an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object.|
|[validateAuthenticationConfiguration](../api/onattributecollectionstartcustomextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|check validity of the endpoint and and authentication configuration for a [customAuthenticationExtension](../resources/customauthenticationextension.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define how long Microsoft Entra ID can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|Description for the onAttributeCollectionStartCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the onAttributeCollectionStartCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Identifier for the onAttributeCollectionStartCustomExtension object. Inherited from entity. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionStartCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtension",
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

