---
title: "virtualEventWebinarRegistrationConfiguration resource type"
description: "Contains information about a webinar registration configuration."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

Namespace: microsoft.graph

# virtualEventWebinarRegistrationConfiguration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a webinar registration configuration.

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [Get virtualEventWebinarRegistrationConfiguration](../api/virtualeventwebinarregistrationconfiguration-get.md) | [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) | Read the properties and relationships of a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object. |

## Properties

| Property | Type | Description |
| ---------| ---- | ------------|
| registrationWebUrl | String | Registration portal URL of the webinar. |

## JSON representation

The following JSON representation shows the resource type.

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
