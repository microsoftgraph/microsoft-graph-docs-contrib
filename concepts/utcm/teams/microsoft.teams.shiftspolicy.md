---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource allows you to create a new TeamsShiftPolicy instance and set it's properties.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Specifies the policy instance name | - |
| AccessGracePeriodMinutes | Write | UInt64 | Determines the grace period time in minutes between when the first shift starts or last shift ends and when access is blocked | - |
| AccessType | Write | String | Determines the Teams access type granted to the user. Today, only unrestricted access to Teams app is supported. | `UnrestrictedAccess_TeamsApp` |
| EnableScheduleOwnerPermissions | Write | Boolean | Determines whether a user can manage a Shifts schedule as a team member. | - |
| EnableShiftPresence | Write | Boolean | Determines whether a user is given shift-based presence (On shift, Off shift, or Busy). This must be set in order to have any off shift warning message-specific settings. | - |
| ShiftNoticeFrequency | Write | String | Determines the frequency of warning dialog displayed when user opens Teams. | `Always`, `ShowOnceOnChange`, `Never` |
| ShiftNoticeMessageCustom | Write | String | Specifies a custom message. Must set ShiftNoticeMessageType to 'CustomMessage' to enforce this | - |
| ShiftNoticeMessageType | Write | String | Specifies the warning message is shown in the blocking dialog when a user access Teams off shift hours. Select one of 7 Microsoft provided messages, a default message or a custom message. | `DefaultMessage`, `Message1`, `Message2`, `Message3`, `Message4`, `Message5`, `Message6`, `Message7`, `CustomMessage` |
| Ensure | Write | String | Present ensures the instance exists, absent ensures it's removed. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



