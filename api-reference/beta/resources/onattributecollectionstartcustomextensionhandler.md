---
title: "onAttributeCollectionStartCustomExtensionHandler resource type"
description: "Used for creating a new custom extension based on the **onAttributeCollectionStart** event to configure the collection of attributes upon user sign up."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionStartCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The 'onAttributeCollectionStart' event in the Azure AD auth pipeline enables this scenario upon the start of the user attribution collection stage of a sign up flow. This event and custom extension enables the sign up flow to block a user from continuing sign-up based on the federated identity or email as well as pre-fill attributes to be collected with pre-specified values. 

Inherits from [onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md)|Used for creating a new custom extension based on the **onAttributeCollectionStart** event to configure the collection of attributes upon user sign up.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionStartCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",
  "configuration": {
    "@odata.type": "microsoft.graph.customExtensionOverwriteConfiguration"
  }
}
```

