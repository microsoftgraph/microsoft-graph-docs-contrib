---
title: "virtualEventExternalRegistrationInformation resource type"
description: "Represents the external information for a virtual event registration."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventExternalRegistrationInformation resource type

Namespace: microsoft.graph

Represents the external information for a [virtual event registration](../resources/virtualeventregistration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|referrer|String| A URL or string representing the location that the registrant registered from. Optional.|
|registrationId|String| String identifier for a [virtualEventExternalRegistrationInformation](../resources/virtualeventexternalregistrationinformation.md) object. Optional.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|virtualEventRegistrations|[virtualEventRegistration](../resources/virtualeventregistration.md)| Registrations for a virtual event.|

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

- [Virtual event registration](../resources/virtualeventregistration.md)
