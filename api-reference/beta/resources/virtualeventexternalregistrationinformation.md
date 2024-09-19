---
title: "virtualEventExternalRegistrationInformation resource type"
description: "Represents the external registration information for a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventExternalRegistrationInformation resource type

Namespace: microsoft.graph

Represents the external registration information for a [virtual event](../resources/virtualevent.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|referrer|String| (TO DO: PLACEHOLDER DESCRIPTION)|
|registrationId|String| (TO DO: PLACEHOLDER DESCRIPTION)|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|virtualEventRegistrations|[virtualEventRegistration](../resources/virtualeventregistration.md)| TODO: UPDATE DESCRIPTION: Provides external information for a [virtual event](../resources/virtualevent.md).|

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

## Related content

- [Virtual event](../resources/virtualevent.md)
- [Virtual event registration](../resources/virtualeventregistration.md)
