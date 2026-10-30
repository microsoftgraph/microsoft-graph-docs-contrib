---
title: "httpRequestEndpoint resource type"
description: "The HTTP endpoint that a custom extension calls."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# httpRequestEndpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the HTTP endpoint that Microsoft Entra ID calls for a custom extension, such as a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md).

Inherits from [customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetUrl|String|The URL of the HTTP endpoint that Microsoft Entra ID calls for the custom extension.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.httpRequestEndpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.httpRequestEndpoint",
  "targetUrl": "String"
}
```
