---
title: "deviceMetadata resource type"
description: "Contains details about the device involved in a session, including type and OS specifications."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: low
ms.subservice: "security"
doc_type: resourcePageType
---

# deviceMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about the device involved in a session, including type and OS specifications.

## Properties

| Property                    | Type                                                                                                               | Description                                       |
| :-------------------------- | :----------------------------------------------------------------------------------------------------------------- | :------------------------------------------------ |
| deviceType                  | String                                                                                                             | Optional. The general type of the device (for example, "Managed", "Unmanaged"). |
| operatingSystemSpecifications | [operatingSystemSpecifications](../resources/operatingsystemspecifications.md)                                   | Details about the operating system platform and version. |
| ipAddress                   | String                                                                                                             | The Internet Protocol (IP) address of the device. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
    "@odata.type": "microsoft.graph.operatingSystemSpecifications"
  },
  "ipAddress": "String"
}
```
