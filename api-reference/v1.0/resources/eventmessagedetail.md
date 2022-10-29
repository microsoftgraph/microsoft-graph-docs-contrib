---
title: "eventMessageDetail resource type"
description: "Represents details of a system event message."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# eventMessageDetail resource type

Namespace: microsoft.graph

Represents details of a system event message.

System messages are messages generated for events such as [members](../resources/conversationMember.md) added to a [channel](../resources/channel.md), **members** added to a [chat](../resources/chat.md), and [team](../resources/team.md) description updated.

### Supported events

| Event | Description |
| :---- | :---------- |
| [callEndedEventMessageDetail](../resources/callendedeventmessagedetail.md) | A call has ended. |
| [callRecordingEventMessageDetail](../resources/callrecordingeventmessagedetail.md) | Call recording is available. |
| [callStartedEventMessageDetail](../resources/callstartedeventmessagedetail.md) | A call has started. |
| [callTranscriptEventMessageDetail](../resources/calltranscripteventmessagedetail.md) | Call transcript is available. |
| [channelAddedEventMessageDetail](../resources/channeladdedeventmessagedetail.md) | A **channel** has been added. |
| [channelDeletedEventMessageDetail](../resources/channeldeletedeventmessagedetail.md) | A **channel** has been deleted. |
| [channelDescriptionUpdatedEventMessageDetail](../resources/channeldescriptionupdatedeventmessagedetail.md) | **Channel's** description has been updated. |
| [channelRenamedEventMessageDetail](../resources/channelrenamedeventmessagedetail.md) | A **channel** has been renamed. |
| [channelSetAsFavoriteByDefaultEventMessageDetail](../resources/channelsetasfavoritebydefaulteventmessagedetail.md) | A **channel** has been set as favorite by default. |
| [channelUnsetAsFavoriteByDefaultEventMessageDetail](../resources/channelunsetasfavoritebydefaulteventmessagedetail.md) | A **channel** has been unset as favorite by default. |
| [chatRenamedEventMessageDetail](../resources/chatrenamedeventmessagedetail.md) | A chat has been renamed. |
| [conversationMemberRoleUpdatedEventMessageDetail](../resources/conversationmemberroleupdatedeventmessagedetail.md) | Role has been updated for a **member**. |
| [meetingPolicyUpdatedEventMessageDetail](../resources/meetingpolicyupdatedeventmessagedetail.md) | Meeting policy has been updated. |
| [membersAddedEventMessageDetail](../resources/membersaddedeventmessagedetail.md) | **Members** have been added. |
| [membersDeletedEventMessageDetail](../resources/membersdeletedeventmessagedetail.md) | **Members** have been removed. |
| [membersJoinedEventMessageDetail](../resources/membersjoinedeventmessagedetail.md) | **Members** have joined. |
| [membersLeftEventMessageDetail](../resources/memberslefteventmessagedetail.md) | **Members** have left. |
| [messagePinnedEventMessageDetail](../resources/messagepinnedeventmessagedetail.md) | A message has been pinned. |
| [messageUnpinnedEventMessageDetail](../resources/messageunpinnedeventmessagedetail.md) | A message has been unpinned. |
| [tabUpdatedEventMessageDetail](../resources/tabupdatedeventmessagedetail.md) | A tab has been updated. |
| [teamArchivedEventMessageDetail](../resources/teamarchivedeventmessagedetail.md) | A **team** has been archived. |
| [teamCreatedEventMessageDetail](../resources/teamcreatedeventmessagedetail.md) | A **team** has been created. |
| [teamDescriptionUpdatedEventMessageDetail](../resources/teamdescriptionupdatedeventmessagedetail.md) | **Team's** description has been updated. |
| [teamJoiningDisabledEventMessageDetail](../resources/teamjoiningdisabledeventmessagedetail.md) | **Team** joining has been disabled. |
| [teamJoiningEnabledEventMessageDetail](../resources/teamjoiningenabledeventmessagedetail.md) | **Team** joining has been enabled. |
| [teamRenamedEventMessageDetail](../resources/teamrenamedeventmessagedetail.md) | A **team** has been renamed. |
| [teamsAppInstalledEventMessageDetail](../resources/teamsappinstalledeventmessagedetail.md) | [Teams app](../resources/teamsapp.md) has been installed. |
| [teamsAppRemovedEventMessageDetail](../resources/teamsappremovedeventmessagedetail.md) | **Teams app** has been removed. |
| [teamsAppUpgradedEventMessageDetail](../resources/teamsappupgradedeventmessagedetail.md) | **Teams app** has been upgraded. |
| [teamUnarchivedEventMessageDetail](../resources/teamunarchivedeventmessagedetail.md) | A **team** has been unarchived. |

## Properties
None.



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

