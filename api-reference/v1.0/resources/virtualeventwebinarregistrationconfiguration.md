---
title: "virtualEventWebinarRegistrationConfiguration resource type"
description: "Contains information about a webinar registration configuration."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# virtualEventWebinarRegistrationConfiguration resource type

Namespace: microsoft.graph

Contains information about a webinar registration configuration.

Currently, the **virtualEventWebinarRegistrationConfiguration** resource inherits a subset of the properties and relationships from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get](../api/virtualeventwebinarregistrationconfiguration-get.md) | [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) | Read the properties and relationships of a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
| registrationWebUrl | String | Registration portal URL of the webinar. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "baseType": "microsoft.graph.virtualEventRegistrationConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "registrationWebUrl": "String"
}
```
