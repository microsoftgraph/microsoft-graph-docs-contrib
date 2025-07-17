---
title: "virtualEventExternalRegistrationInformation resource type"
description: "Represents the external information for a virtual event registration."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 12/09/2024
---

# virtualEventExternalRegistrationInformation resource type

Namespace: microsoft.graph

Represents the external information for a [virtual event registration](../resources/virtualeventregistration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|referrer|String| A URL or string that represents the location from which the registrant registered. Optional. |
|registrationId|String| The identifier for a **virtualEventExternalRegistrationInformation** object. Optional. If set, the maximum supported length is 256 characters.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventExternalRegistrationInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventExternalRegistrationInformation",
  "referrer": "String",
  "registrationId": "String"
}
```
