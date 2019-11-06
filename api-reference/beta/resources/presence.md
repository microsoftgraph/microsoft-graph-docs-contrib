---
title: "presence resource type"
description: "This contains information regarding a user's presence including their availability, user activity, and when they were last active."
author: "VinodRavichandran"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# presence resource type

This contains information regarding a user's presence including their availability and user activity.

> **Note:** This is currently only supported for enterprise users of Microsoft Teams

## Methods

| Method                                                            | Return Type                                       | Description                                  |
|:------------------------------------------------------------------|:--------------------------------------------------|:---------------------------------------------|
| [Get presence](../api/get-presence.md)     | [presence](../resources/presence.md)     | Get a user's presence information
| [Get presence for multiple users](../api/get-presence-multiple-users.md)    |  [presence](../resources/presence.md) collection     |  Get the presence information for multiple users.      |


## Properties

| Relationship        | Type                                                 | Description                                                         |
|:--------------------|:-----------------------------------------------------|:--------------------------------------------------------------------|
|id    |  string     | 	The user object id   |
|availability    |  string collection   | 	The base presence information of a user. Possible values are `Available`, `Away`, `BeRightBack`, `Busy`, `DoNotDisturb`  |
|activity    |  string collection      | 	The supplemental information to a user's availability. Possible values are `Available`, `Away`, `Busy`, `InACall`, `InAMeeting`, `Offline`, `OutOfOffice`, `Presenting`       |

>**Note:** New values may be added to availability and activity in the future. To learn more about the different presence states, please view
>[User Presence in Teams](https://docs.microsoft.com/en-us/microsoftteams/presence-admins). 

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.presence"
}-->
```json
{
   "id":"string",
   "availability":"string",
   "activity":"string"
}
```
