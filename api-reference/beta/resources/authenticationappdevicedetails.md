---
title: "authenticationAppDeviceDetails resource type"
description: "Provides details about the app and device used during the Microsoft Entra authentication step."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationAppDeviceDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about the app and device used during the Microsoft Entra authentication step.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appVersion|String|The version of the client authentication app used during the authentication step.|
|clientApp|String|The name of the client authentication app used during the authentication step.|
|deviceId|String|ID of the device used during the authentication step.|
|operatingSystem|String|The operating system running on the device used for the authentication step.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAppDeviceDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAppDeviceDetails",
  "deviceId": "String",
  "operatingSystem": "String",
  "clientApp": "String",
  "appVersion": "String"
}
```
