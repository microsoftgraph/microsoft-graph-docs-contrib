---
title: "virtualEventWebinarRegistrationConfiguration resource type"
description: "Contains information about a webinar registration configuration."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the webinar registration configuration. 

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [Get virtualEventWebinarRegistrationConfiguration](../api/virtualeventwebinarregistrationconfiguration-get.md) | [webinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) collection | Read the properties and relationships of a [webinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object. |

## Properties

| Property | Type | Description |
| ---------| ---- | ---------- -|
| registrationWebUrl | String | Registration portal URL of the webinar. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "registrationWebUrl": "String"
}
```
