---
title: "httpRequestEndpoint resource type"
description: "Defines the HTTP endpoint that Microsoft Entra ID calls for a custom extension."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/16/2026
---

# httpRequestEndpoint resource type

Namespace: microsoft.graph

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
