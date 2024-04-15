---
title: "customExtensionOverwriteConfiguration resource type"
description: "Configuration regarding properties of the custom extension which can be overwritten per event listener. If no values are provided, the properties on the custom extension are used."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customExtensionOverwriteConfiguration resource type

Namespace: microsoft.graph

Configuration regarding properties of the custom extension which can be overwritten per event listener. If no values are provided, the properties on the custom extension are used.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|Configuration regarding properties of the custom extension which can be overwritten per event listener. If no values are provided, the properties on the custom extension are used.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionOverwriteConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionOverwriteConfiguration",
  "clientConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
  }
}
```

