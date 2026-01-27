---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Teams Upgrade policies.

More information: https://docs.microsoft.com/en-us/microsoftteams/meetings-first#prepare-for-teams-meetings-in-meetings-first


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Upgrade Policy. | - |
| Users | Write | StringArray[] | List of users that will be granted the Upgrade Policy to. | - |
| MigrateMeetingsToTeams | Write | Boolean | Specifies whether to move existing Skype for Business meetings organized by the user to Teams. This parameter can only be true if the mode of the specified policy instance is either TeamsOnly or SfBWithTeamsCollabAndMeetings, and if the policy instance is being granted to a specific user. It not possible to trigger meeting migration when granting TeamsUpgradePolicy to the entire tenant. | - |


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

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



