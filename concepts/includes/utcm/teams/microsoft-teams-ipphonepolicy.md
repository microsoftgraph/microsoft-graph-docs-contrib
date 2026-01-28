---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

New-CsTeamsIPPhonePolicy allows you to create a policy to manage features related to Teams phone experiences. Teams phone policies determine the features that are available to users.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Specifies the policy instance name | - |
| AllowBetterTogether | Write | String | Determines whether Better Together mode is enabled, phones can lock and unlock in an integrated fashion when connected to their Windows PC running a 64-bit Teams desktop client. | `Enabled`, `Disabled` |
| AllowHomeScreen | Write | String | Determines whether the Home Screen feature of the Teams IP Phones is enabled. | `Enabled`, `EnabledUserOverride`, `Disabled` |
| AllowHotDesking | Write | Boolean | Determines whether hot desking mode is enabled. | - |
| Description | Write | String | Specifies the description of the policy | - |
| HotDeskingIdleTimeoutInMinutes | Write | UInt64 | Determines the idle timeout value in minutes for the signed in user account. When the timeout is reached, the account is logged out. | - |
| SearchOnCommonAreaPhoneMode | Write | String | Determines whether a user can search the Global Address List in Common Area Phone Mode. | `Enabled`, `Disabled` |
| SignInMode | Write | String | Determines the sign in mode for the device when signing in to Teams. | `UserSignIn`, `CommonAreaPhoneSignIn`, `MeetingSignIn` |
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



