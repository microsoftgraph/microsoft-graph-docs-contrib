---
title: "externalMeetingRegistrant resource type"
description: "Represents an external meeting registrant who has enrolled in an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# externalMeetingRegistrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external meeting registrant who has enrolled in an online meeting.

Inherits from [meetingRegistrantBase](../resources/meetingregistrantbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List externalMeetingRegistrants](../api/externalmeetingregistrant-list.md)|[externalMeetingRegistrant](../resources/externalmeetingregistrant.md) collection|Get a list of the [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) objects and their properties.|
|[Create externalMeetingRegistrant](../api/externalmeetingregistrant-post.md)|[externalMeetingRegistrant](../resources/externalmeetingregistrant.md)|Read the properties and relationships of an [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) object.|
|[Delete externalMeetingRegistrant](../api/externalmeetingregistrant-delete.md)|None|Delete an [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) object.|

## Properties

| Property   | Type   | Description                                                                  |
|:-----------|:-------|:-----------------------------------------------------------------------------|
| id         | String | The unique identifier of the registrant in the external registration system. Inherited from [meetingRegistrantBase](../resources/meetingregistrantbase.md). |
| joinWebUrl | String | A unique web URL for the registrant to join the meeting. Inherited from [meetingRegistrantBase](../resources/meetingregistrantbase.md). Read-only.          |
| tenantId   | String | The tenant ID of this registrant if in Azure Active Directory.               |
| userId     | String | The user ID of this registrant if in Azure Active Directory.                 |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalMeetingRegistrant",
  "baseType": "microsoft.graph.meetingRegistrantBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.externalMeetingRegistrant",
  "id": "String (identifier)",
  "joinWebUrl": "String",
  "userId": "String",
  "tenantId": "String"
}
```
