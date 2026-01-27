---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource is used to configure the Teams Meeting Broadcast Policies.

More information: https://docs.microsoft.com/en-us/microsoftteams/teams-live-events/set-up-for-teams-live-events


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The identifier of the Teams Meeting Broadcast Policy. | - |
| AllowBroadcastScheduling | Write | Boolean | Specifies whether this user can create broadcast events in Teams. This settng impacts broadcasts that use both self-service and external encoder production methods. | - |
| AllowBroadcastTranscription | Write | Boolean | Specifies whether real-time transcription and translation can be enabled in the broadcast event. Note: this setting is applicable to broadcast events that use Teams Meeting production only and does not apply when external encoder is used as production method. | - |
| BroadcastAttendeeVisibilityMode | Write | String | Specifies the attendee visibility mode of the broadcast events created by this user.  This setting controls who can watch the broadcast event - e.g. anyone can watch this event including anonymous users or only authenticated users in my company can watch the event.  Note: this setting is applicable to broadcast events that use Teams Meeting production only and does not apply when external encoder is used as production method. | `Everyone`, `EveryoneInCompany`, `InvitedUsersInCompany`, `EveryoneInCompanyAndExternal`, `InvitedUsersInCompanyAndExternal` |
| BroadcastRecordingMode | Write | String | Specifies whether broadcast events created by this user are always recorded, never recorded or user can choose whether to record or not. Note: this setting is applicable to broadcast events that use Teams Meeting production only and does not apply when external encoder is used as production method. | `AlwaysEnabled`, `AlwaysDisabled`, `UserOverride` |
| Ensure | Write | String | Present ensures the Policy exists, absent ensures it's removed | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



