---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Teams Update policies. For additional information, please refer to https://docs.microsoft.com/en-us/MicrosoftTeams/public-preview-doc-updates#set-the-update-policy


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Update Management Policy. | - |
| Description | Write | String | The description of the Teams Update Management Policy. | - |
| AllowManagedUpdates | Write | Boolean | Determines if managed updates should be allowed or not. | - |
| AllowPreview | Write | Boolean | Determines if preview builds should be allowed or not. | - |
| AllowPublicPreview | Write | String | Determines the ring of public previews to subscribes to. | `Disabled`, `Enabled`, `Forced`, `FollowOfficePreview` |
| UpdateDayOfWeek | Write | UInt32 | Determines the day of week to perform the updates. Value shoud be between 0 and 6. | - |
| UpdateTime | Write | String | Determines the time of day to perform the updates. Must be a valid HH:MM format string with leading 0. For instance 08:30. | - |
| UpdateTimeOfDay | Write | String | Determines the time of day to perform the updates. Accepts a DateTime as string. Only the time will be considered. | - |
| UseNewTeamsClient | Write | String | Determines whether or not users will use the new Teams client. | `NewTeamsAsDefault`, `UserChoice`, `MicrosoftChoice`, `AdminDisabled`, `NewTeamsOnly` |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


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



