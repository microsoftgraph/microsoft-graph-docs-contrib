---
title: "virtualEventExternalInformation resource type"
description: "Represents the external information for a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventExternalInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the external information for a [virtual event](../resources/virtualevent.md).

The **applicationId** and **externalEventId** properties allow external event information (i.e. (unsupported information in the [virtual event](../resources/virtualevent.md)) to be associated with a virtual event.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationId|String| Identifier of the application that hosts the **externalEventId**. Read-only. |
|externalEventId|String| The identifier for a **virtualEventExternalInformation** object associates the virtual event with an event ID in an external application. This bundles all the information (both supported and not supported in [virtualEvent](../resources/virtualevent.md)) into one virtual event object. Optional. If set, the maximum supported length is 256 characters.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|virtualEvents|[virtualEvent](../resources/virtualevent.md)| Provides external information for a [virtual event](../resources/virtualevent.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventExternalInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventExternalInformation",
  "applicationId": "String",
  "externalEventId": "String"
}
```

## Related content

- [Virtual event](../resources/virtualevent.md)
- [Virtual event townhalls](../resources/virtualeventtownhall.md)
- [Virtual event webinars](../resources/virtualeventwebinar.md)
