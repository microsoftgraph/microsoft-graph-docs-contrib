---
title: "protectedApplicationMetadata resource type"
description: "Represents metadata about an application whose activities are being governed by an integrated application."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectedApplicationMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about an application whose activities are governed by an integrated application.

In Agent-to-Tool (A2T) scenarios, this resource identifies both the agent initiating operations and the tool receiving content, enabling Microsoft Purview Data Loss Prevention (DLP) policies to evaluate data movement between agents and external tools.

Inherits from [integratedApplicationMetadata](./integratedapplicationmetadata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationLocation|[policyLocation](../resources/policylocation.md)|The location of the application being protected. For Agent-to-Tool (A2T) scenarios, this represents the tool receiving the content. Required.|
|name|String|The name of the integrated application. Inherited from [integratedApplicationMetadata](./integratedapplicationmetadata.md).|
|sourceLocation|[policyLocation](../resources/policylocation.md)|Identifies the source location of the content being evaluated. For Agent-to-Tool (A2T) scenarios, this represents the agent initiating the operation. Used together with **applicationLocation** to determine the applicable Microsoft Purview policies.|
|version|String|The version number of the integrated application. Inherited from [integratedApplicationMetadata](./integratedapplicationmetadata.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectedApplicationMetadata",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.protectedApplicationMetadata",
  "applicationLocation": {
    "@odata.type": "#microsoft.graph.policyLocation",
    "value": "String"
  },
  "sourceLocation": {
    "@odata.type": "#microsoft.graph.policyLocation",
    "value": "String"
  }
}
```
