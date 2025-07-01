---
title: "protectedApplicationMetadata resource type"
description: "Represents metadata about an application whose activities are being governed by an integrated application."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectedApplicationMetadata resource type

Namespace: microsoft.graph

Represents metadata about an application whose activities governed by an integrated application.

Inhertits from [integratedApplicationMetadata](./integratedapplicationmetadata.md).

For internal use only. Don't use.

## Properties

| Property      | Type   | Description                                                      |
| :------------ | :----- | :--------------------------------------------------------------- |
| applicationLocation | [policyLocation](../resources/policylocation.md) |The client (application) ID of the Microsoft Entra application. Required.|
| name     | String | The name of the integrated application. Inherited from [integratedApplicationMetadata](./integratedapplicationmetadata.md).       |
| version  | String | The version number of the integrated application. Inherited from [integratedApplicationMetadata](./integratedapplicationmetadata.md). |

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
    "location": "String"
  }
}
```
