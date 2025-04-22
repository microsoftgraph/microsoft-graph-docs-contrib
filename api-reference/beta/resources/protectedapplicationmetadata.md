---
title: "protectedApplicationMetadata"
toc-title: "protectedApplicationMetadata (preview)"
description: "Represents metadata about an application whose activities are being governed by an integrated application."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# protectedApplicationMetadata complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about an application whose user activities are being monitored or governed by an [integratedApplicationMetadata](../resources/integratedapplicationmetadata.md). For example, if a network proxy (the integrated app) is monitoring traffic to Bing Chat (the protected app), this type would describe Bing Chat. Inherits from `integratedApplicationMetadata`.

## Properties

| Property      | Type   | Description                                                      |
| :------------ | :----- | :--------------------------------------------------------------- |
| applicationId | String | The unique identifier (e.g., Microsoft Entra App ID) of the protected application. |

Inherits properties from [integratedApplicationMetadata](../resources/integratedapplicationmetadata.md).

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectedApplicationMetadata",
  "baseType": "microsoft.graph.integratedApplicationMetadata",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.protectedApplicationMetadata",
  // Inherited properties from integratedApplicationMetadata
  "name": "String",
  "version": "String",

  // protectedApplicationMetadata properties
  "applicationId": "String"
}
```
