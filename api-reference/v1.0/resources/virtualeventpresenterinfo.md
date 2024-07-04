---
title: "virtualEventPresenterInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventPresenterInfo resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [meetingParticipantInfo](../resources/meetingparticipantinfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identity|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [meetingParticipantInfo](../resources/meetingparticipantinfo.md).|
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|**TODO: Add Description**|
|role|onlineMeetingRole|**TODO: Add Description** Inherited from [meetingParticipantInfo](../resources/meetingparticipantinfo.md).The possible values are: `attendee`, `presenter`, `unknownFutureValue`, `producer`, `coorganizer`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `producer` , `coorganizer`.|
|upn|String|**TODO: Add Description** Inherited from [meetingParticipantInfo](../resources/meetingparticipantinfo.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventPresenterInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventPresenterInfo",
  "identity": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "upn": "String",
  "role": "String",
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  }
}
```

