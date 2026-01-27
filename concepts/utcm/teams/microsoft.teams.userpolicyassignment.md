---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource is used to assign Teams policy to a specified user.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **User** | Key | String | User Principal Name of the user representing the policy assignments. | |
| **CallingLineIdentity** | Write | String | Name of the Calling Line Policy. | |
| **ExternalAccessPolicy** | Write | String | Name of the External Access Policy. | |
| **OnlineVoicemailPolicy** | Write | String | Name of the Online Voicemail Policy. | |
| **OnlineVoiceRoutingPolicy** | Write | String | Name of the Online VOice Routing Policy. | |
| **TeamsAppPermissionPolicy** | Write | String | Name of the Teams App Permission Policy. | |
| **TeamsAppSetupPolicy** | Write | String | Name of the Teams App Setup Policy. | |
| **TeamsAudioConferencingPolicy** | Write | String | Name of the Teams Audio Conferencing Policy. | |
| **TeamsCallHoldPolicy** | Write | String | Name of the Teams Call Hold Policy. | |
| **TeamsCallingPolicy** | Write | String | Name of the Teams Calling Policy. | |
| **TeamsCallParkPolicy** | Write | String | Name of the Teams Call Park Policy. | |
| **TeamsChannelsPolicy** | Write | String | Name of the Teams Channel Policy. | |
| **TeamsEmergencyCallingPolicy** | Write | String | Name of the Teams Emergency Calling Policy. | |
| **TeamsEmergencyCallRoutingPolicy** | Write | String | Name of the Teams Emergency Call Routing Policy. | |
| **TeamsEnhancedEncryptionPolicy** | Write | String | Name of the Teams Enhanced Encryption Policy. | |
| **TeamsEventsPolicy** | Write | String | Name of the Teams Events Policy. | |
| **TeamsMeetingBroadcastPolicy** | Write | String | Name of the Teams Meeting Broadcast Policy. | |
| **TeamsMeetingPolicy** | Write | String | Name of the Teams Meeting Policy. | |
| **TeamsMessagingPolicy** | Write | String | Name of the Teams Messaging Policy. | |
| **TeamsMobilityPolicy** | Write | String | Name of the Teams Mobility Policy. | |
| **TeamsUpdateManagementPolicy** | Write | String | Name of the Teams Update Management Policy. | |
| **TeamsUpgradePolicy** | Write | String | Name of the Teams Upgrade Policy. | |
| **TenantDialPlan** | Write | String | Name of the Tenant Dial Plan Policy. | |


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



