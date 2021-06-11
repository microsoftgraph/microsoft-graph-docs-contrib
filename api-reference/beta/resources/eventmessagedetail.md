---
title: "eventMessageDetail resource type"
description: "Represents base type for event message detail."
author: "harshnat"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# eventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type for representing system event message details.

System messages are messages generated for events such as members added to a channel, channel name updated, channel description updated.

List of events supported

* [callEndedEventMessageDetail](../resources/callStartedEventMessageDetail.md)
* [callRecordingEventMessageDetail](../resources/callRecordingEventMessageDetail.md)
* [callStartedEventMessageDetail](../resources/callStartedEventMessageDetail.md)
* [callTranscriptEventMessageDetail](../resources/callTranscriptEventMessageDetail.md)
* [channelAddedEventMessageDetail](../resources/channelAddedEventMessageDetail.md)
* [channelDeletedEventMessageDetail](../resources/channelDeletedEventMessageDetail.md)
* [channelDescriptionUpdatedEventMessageDetail](../resources/channelDescriptionUpdatedEventMessageDetail.md)
* [channelRenamedEventMessageDetail](../resources/channelRenamedEventMessageDetail.md)
* [channelSetAsFavoriteByDefaultEventMessageDetail](../resources/channelSetAsFavoriteByDefaultEventMessageDetail.md)
* [channelUnsetAsFavoriteByDefaultEventMessageDetail](../resources/channelUnsetAsFavoriteByDefaultEventMessageDetail.md)
* [chatRenamedEventMessageDetail](../resources/chatRenamedEventMessageDetail.md)
* [conversationMemberRoleUpdatedEventMessageDetail](../resources/conversationMemberRoleUpdatedEventMessageDetail.md)
* [meetingPolicyUpdatedEventMessageDetail](../resources/meetingPolicyUpdatedEventMessageDetail.md)
* [membersAddedEventMessageDetail](../resources/membersAddedEventMessageDetail.md)
* [membersDeletedEventMessageDetail](../resources/membersDeletedEventMessageDetail.md)
* [membersJoinedEventMessageDetail](../resources/membersJoinedEventMessageDetail.md)
* [membersLeftEventMessageDetail](../resources/membersLeftEventMessageDetail.md)
* [tabUpdatedEventMessageDetail](../resources/tabUpdatedEventMessageDetail.md)
* [teamArchivedEventMessageDetail](../resources/teamArchivedEventMessageDetail.md)
* [teamCreatedEventMessageDetail](../resources/teamCreatedEventMessageDetail.md)
* [teamDescriptionUpdatedEventMessageDetail](../resources/teamDescriptionUpdatedEventMessageDetail.md)
* [teamJoiningDisabledEventMessageDetail](../resources/teamJoiningDisabledEventMessageDetail.md)
* [teamJoiningEnabledEventMessageDetail](../resources/teamJoiningEnabledEventMessageDetail.md)
* [teamRenamedEventMessageDetail](../resources/teamRenamedEventMessageDetail.md)
* [teamsAppInstalledEventMessageDetail](../resources/teamsAppInstalledEventMessageDetail.md)
* [teamsAppRemovedEventMessageDetail](../resources/teamsAppRemovedEventMessageDetail.md)
* [teamsAppUpgradedEventMessageDetail](../resources/teamsAppUpgradedEventMessageDetail.md)
* [teamUnarchivedEventMessageDetail](../resources/teamUnarchivedEventMessageDetail.md)

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.eventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.eventMessageDetail"
}
```

