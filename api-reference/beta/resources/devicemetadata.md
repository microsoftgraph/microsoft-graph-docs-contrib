---
title: "deviceMetadata"
toc.title: "deviceMetadata (preview)"
description: "Contains details about the device involved in a session, including type and OS specifications."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: low
ms.subservice: "security"
doc_type: complexTypePageType
---

# deviceMetadata

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides specific details about the device involved in a user session, including its type (for example, "Desktop", "Mobile") and operating system information.

## Properties

| Property                    | Type                                                                                                               | Description                                       |
| :-------------------------- | :----------------------------------------------------------------------------------------------------------------- | :------------------------------------------------ |
| deviceType                  | String                                                                                                             | The general type of the device (for example, "Desktop", "Mobile", "Tablet"). |
| operatingSystemSpecifications | [operatingSystemSpecifications](../resources/operatingsystemspecifications.md) | Details about the operating system platform and version. |

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceMetadata",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceMetadata",
  "deviceType": "String",
  "operatingSystemSpecifications": {
    "@odata.type": "microsoft.operatingSystemSpecifications"
  }
}
```
