---
title: "onAttributeCollectionSubmitCustomExtension resource type"
description: "Used for creating a new custom extension based on the onAttributeCollectionSubmit event."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionSubmitCustomExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onAttributeCollectionSubmit** event. Used for verifying sign up attributes when they are submitted. The custom extension can be used to do input validation checks on the attributes or allow the user to choose additional attributes. 

Inherits from [customAuthenticationExtension](../resources/customauthenticationextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAttributeCollectionSubmitCustomExtensions](../api/onattributecollectionsubmitcustomextension-list.md)|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) collection|Get a list of the [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) objects and their properties.|
|[Get onAttributeCollectionSubmitCustomExtension](../api/onattributecollectionsubmitcustomextension-get.md)|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md)|Read the properties and relationships of an [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) object.|
|[Update onAttributeCollectionSubmitCustomExtension](../api/onattributecollectionsubmitcustomextension-update.md)|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md)|Update the properties of an [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) object.|
|[Delete onAttributeCollectionSubmitCustomExtension](../api/onattributecollectionsubmitcustomextension-delete.md)|None|Delete an [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) object.|
|[validateAuthenticationConfiguration](../api/onattributecollectionsubmitcustomextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|check validity of the endpoint and and authentication configuration for a [customAuthenticationExtension](../resources/customauthenticationextension.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define how long Microsoft Entra ID can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed.  Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|Description for the onAttributeCollectionSubmitCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the onAttributeCollectionSubmitCustomExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Identifier for the onAttributeCollectionSubmitCustomExtension object. Inherited from entity. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionSubmitCustomExtension",
  "baseType": "microsoft.graph.customAuthenticationExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtension",
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

