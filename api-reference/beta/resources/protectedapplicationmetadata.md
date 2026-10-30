---
title: "protectedApplicationMetadata resource type"
description: "Represents metadata about an application whose activities are being governed by an integrated application."
author: "ArunGedela"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectedApplicationMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about an application whose activities are governed by an integrated application.

Inherits from [integratedApplicationMetadata](integratedapplicationmetadata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationLocation|[policyLocation](policylocation.md)|The location that identifies the protected application. For agent evaluation, use [policyLocationAgent](policylocationagent.md). Optional.|
|name|String|The name of the protected application. Inherited from [integratedApplicationMetadata](integratedapplicationmetadata.md). Optional.|
|version|String|The version of the protected application. Inherited from [integratedApplicationMetadata](integratedapplicationmetadata.md). Optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectedApplicationMetadata",
  "openType": false
}-->
```json
{
  "@odata.type": "#microsoft.graph.protectedApplicationMetadata",
  "applicationLocation": {
    "@odata.type": "microsoft.graph.policyLocation"
  },
  "name": "String",
  "version": "String"
}
```
