---
title: "externalMeetingRegistrant resource type"
description: "Represents an external meeting registrant who enrolled in an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: External Meeting Registrant (deprecated)
ms.date: 10/15/2024
---

# externalMeetingRegistrant resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external meeting registrant who enrolled in an online meeting.

Inherits from [meetingRegistrantBase](../resources/meetingregistrantbase.md).

> [!CAUTION]
> The external meeting registrant API is deprecated and will stop returning data on **December 12, 2024**. Please use the new [webinar APIs](../resources/virtualeventwebinar.md). For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/externalmeetingregistrant-list.md)|[externalMeetingRegistrant](../resources/externalmeetingregistrant.md) collection|Get a list of the [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) objects and their properties.|
|[Create](../api/externalmeetingregistrant-post.md)|[externalMeetingRegistrant](../resources/externalmeetingregistrant.md)|Read the properties and relationships of an [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) object.|
|[Delete](../api/externalmeetingregistrant-delete.md)|None|Delete an [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) object.|

## Properties

| Property   | Type   | Description                                                                  |
|:-----------|:-------|:-----------------------------------------------------------------------------|
| id         | String | The unique identifier of the registrant in the external registration system. Inherited from [meetingRegistrantBase](../resources/meetingregistrantbase.md). |
| joinWebUrl | String | A unique web URL for the registrant to join the meeting. Inherited from [meetingRegistrantBase](../resources/meetingregistrantbase.md). Read-only.          |
| tenantId   | String | The tenant ID of this registrant if in Microsoft Entra ID.               |
| userId     | String | The user ID of this registrant if in Microsoft Entra ID.                 |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
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
