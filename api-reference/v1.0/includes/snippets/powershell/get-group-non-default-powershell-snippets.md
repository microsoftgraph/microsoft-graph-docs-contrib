---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

Get-MgGroup -GroupId $groupId -Property "accessType,allowExternalSenders,autoSubscribeNewMembers,isSubscribedByMail,unseenConversationsCount,unseenCount,unseenMessagesCount" 

```