---
title: "onAttributeCollectionSubmitCustomExtensionHandler resource type"
description: "Used for creating a new custom extension based on the onAttributeCollectionSubmit event to configure the collection of attributes upon user sign-up."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionSubmitCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for creating a new custom extension based on the **onAttributeCollectionSubmit** event to configure the verification of attributes when they're submitted via the [externalUsersSelfServiceSignUpEventsFlow](../resources/externalUsersSelfServiceSignUpEventsFlow.md) object. The custom extension can be used to do input validation checks on the attributes or allow the user to choose more attributes.

Inherits from [onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|Configuration regarding properties of the custom extension that can be overwritten per event listener.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md)|Used for creating a new custom extension based on the **onAttributeCollectionSubmit** event to configure the collection of attributes upon user sign-up.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",
  "configuration": {
    "@odata.type": "microsoft.graph.customExtensionOverwriteConfiguration"
  }
}
```

