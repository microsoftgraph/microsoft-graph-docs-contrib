---
title: "customAuthenticationExtension resource type"
description: "Custom authentication extensions let you interact with external systems during a user authentication session."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customAuthenticationExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom authentication extensions define interactions with external systems during a user authentication session. This is an abstract type from which the following types are derived.

- [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) resource type.
- [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) resource type.
- [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) resource type.

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

Learn how to use this API when [Configuring a custom claim provider token issuance event (preview)](/azure/active-directory/develop/custom-extension-get-started?tabs=microsoft-graph?toc=/graph/toc.json&context=graph/context).

> [!NOTE]
>
> You can have a maximum of 100 custom extension policies.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List custom authentication extensions](../api/identitycontainer-list-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md) collection|Retrieve a list of the object types that are derived from **customAuthenticationExtension**.|
|[Create custom authentication extension](../api/identitycontainer-post-customauthenticationextensions.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Create a new object type that is derived from **customAuthenticationExtension**.|
|[Get custom authentication extension](../api/customauthenticationextension-get.md)|[customAuthenticationExtension](../resources/customauthenticationextension.md)|Read the properties and relationships of an object type that is derived from **customAuthenticationExtension**.|
|[Update custom authentication extension](../api/customauthenticationextension-update.md)|None|Update the properties of an object type that is derived from **customAuthenticationExtension**.|
|[Delete custom authentication extension](../api/customauthenticationextension-delete.md)|None|Delete an object type that is derived from **customAuthenticationExtension**.|
|[Validate authentication configuration](../api/customauthenticationextension-validateauthenticationconfiguration.md)|[authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md)|Check validity of the endpoint and authentication configuration for a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.|
|**On attribute collection start**|||
|[Get on attribute collection start](../api/onattributecollectionstartcustomextension-get.md)|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md)|Read the properties and relationships of an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object.|
|[Update on attribute collection start](../api/onattributecollectionstartcustomextension-update.md)|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md)|Update the properties of an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object.|
|**On attribute collection submit**|||
|[Get on attribute collection submit](../api/onattributecollectionsubmitcustomextension-get.md)|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md)|Read the properties and relationships of an [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) object.|
|[Update on attribute collection submit](../api/onattributecollectionsubmitcustomextension-update.md)|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md)|Update the properties of an [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) object.|

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
The following JSON representation shows the resource type.
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

## Related content

- [Configure a custom claim provider token issuance event (preview)](/azure/active-directory/develop/custom-extension-get-started?tabs=microsoft-graph?toc=/graph/toc.json&context=graph/context)

