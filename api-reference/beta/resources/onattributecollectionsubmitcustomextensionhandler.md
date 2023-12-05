---
title: "onAttributeCollectionSubmitCustomExtensionHandler resource type"
description: "Used for creating a new custom extension based on the **onAttributeCollectionSubmit** event."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionSubmitCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The 'onAttributeCollectionSubmit' event in the Azure AD auth pipeline enables this scenario and verifies sign up attributes when they are submitted. The custom extension can be used to do input validation checks on the attributes or allow the user to choose additional attributes.

Inherits from [onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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

