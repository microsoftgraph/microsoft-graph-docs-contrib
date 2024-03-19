---
title: "onAttributeCollectionStartCustomExtensionHandler resource type"
description: "Used for creating a new custom extension based on the onAttributeCollectionStart event to configure the collection of attributes upon user sign-up."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionStartCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onAttributeCollectionStart** event to configure the collection of attributes upon user sign-up via the [externalUsersSelfServiceSignUpEventsFlow](../resources/externalUsersSelfServiceSignUpEventsFlow.md) object. This event and custom extension enables the sign-up flow to block a user from continuing sign-up based on the federated identity or email and prefill attributes to be collected with prespecified values. 

Inherits from [onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|Configuration regarding properties of the custom extension that are can be overwritten per event listener.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md)|Used for creating a new custom extension based on the **onAttributeCollectionStart** event to configure the collection of attributes upon user sign-up.|

## JSON representation
The following JSON representation shows the resource type.
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

