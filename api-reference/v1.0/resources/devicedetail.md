---
title: "deviceDetail resource type"
description: "Indicates device details associated with a device used for signing in. The information includes information like device browser and  operating system, and whether the device is Microsoft Entra ID managed."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 08/09/2024
---

# deviceDetail resource type

Namespace: microsoft.graph

Indicates details of the device used in a sign-in activity. Includes information like device browser and OS info and if the device is Microsoft Entra ID-managed.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|browser|String|Indicates the browser information of the used in the sign-in. Populated for devices registered in Microsoft Entra.|
|deviceId|String|Refers to the unique ID of the device used in the sign-in. Populated for devices registered in Microsoft Entra.|
|displayName|String|Refers to the name of the device used in the sign-in. Populated for devices registered in Microsoft Entra.|
|isCompliant|Boolean|Indicates whether the device is compliant or not.|
|isManaged|Boolean|Indicates if the device is managed or not.|
|operatingSystem|String|Indicates the OS name and version used in the sign-in.|
|trustType|String|Indicates information on whether the device used in the sign-in is workplace-joined, Microsoft Entra-joined, domain-joined.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.deviceDetail"
}-->

```json
{
  "browser": "String",
  "deviceId": "String",
  "displayName": "String",
  "isCompliant": true,
  "isManaged": true,
  "operatingSystem": "String",
  "trustType": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "deviceDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
