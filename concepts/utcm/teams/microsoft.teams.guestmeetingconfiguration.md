---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource is used to configure the Teams Guest Meetings Configuration.

More information: https://docs.microsoft.com/en-us/microsoftteams/set-up-guests


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The only valid input is Global - the tenant wide configuration | `Global` |
| AllowIPVideo | Write | Boolean | Determines whether video is enabled in a user's meetings or calls. Set this to TRUE to allow guests to share their video. Set this to FALSE to prohibit guests from sharing their video. | - |
| LiveCaptionsEnabledType | Write | String | Determines whether real-time captions are available for guests in Teams meetings. | `Disabled`, `DisabledUserOverride` |
| ScreenSharingMode | Write | String | Determines the mode in which guests can share a screen in calls or meetings. Set this to SingleApplication to allow the user to share an application at a given point in time. Set this to EntireScreen to allow the user to share anything on their screens. Set this to Disabled to prohibit the user from sharing their screens. | `Disabled`, `EntireScreen`, `SingleApplication` |
| AllowMeetNow | Write | Boolean | Determines whether guests can start ad-hoc meetings. Set this to TRUE to allow guests to start ad-hoc meetings. Set this to FALSE to prohibit guests from starting ad-hoc meetings. | - |
| AllowTranscription | Write | Boolean | Determines whether guests can enable post-meeting captions and transcriptions in meetings. Set this to TRUE to allow. Set this to FALSE to prohibit. | - |


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



