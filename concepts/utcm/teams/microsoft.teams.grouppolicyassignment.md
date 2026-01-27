---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource is used to assign Teams policy to a specified group


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **GroupDisplayName** | Key | String | Group Displayname of the group the policys are assigned to | |
| **GroupId** | Write | String | GroupId, alternatively to Group Displayname | |
| **PolicyType** | Key | String | Teams PolicyType. The type of the policy to be assigned. Possible values: | `ApplicationAccessPolicy`, `CallingLineIdentity`, `OnlineAudioConferencingRoutingPolicy`, `OnlineVoicemailPolicy`, `OnlineVoiceRoutingPolicy`, `TeamsAudioConferencingPolicy`, `TeamsCallHoldPolicy`, `TeamsCallParkPolicy`, `TeamsChannelsPolicy`, `TeamsComplianceRecordingPolicy`, `TeamsCortanaPolicy`, `TeamsEmergencyCallingPolicy`, `TeamsEnhancedEncryptionPolicy`, `TeamsFeedbackPolicy`, `TeamsFilesPolicy`, `TeamsIPPhonePolicy`, `TeamsMediaLoggingPolicy`, `TeamsMeetingBroadcastPolicy`, `TeamsMeetingPolicy`, `TeamsMessagingPolicy`, `TeamsMobilityPolicy`, `TeamsRoomVideoTeleConferencingPolicy`, `TeamsShiftsPolicy`, `TeamsUpdateManagementPolicy`, `TeamsVdiPolicy`, `TeamsVideoInteropServicePolicy`, `TenantDialPlan`, `ExternalAccessPolicy`, `TeamsAppSetupPolicy`, `TeamsCallingPolicy`, `TeamsEventsPolicy`, `TeamsMeetingBrandingPolicy`, `TeamsMeetingTemplatePermissionPolicy`, `TeamsVerticalPackagePolicy` |
| **PolicyName** | Write | String | Teams PolicyName. The name of the policy to be assigned. | |
| **Priority** | Write | String | Teams Priority. The rank of the policy assignment, relative to other group policy assignments for the same policy type | |
| **Ensure** | Write | String | Present ensures the group policy assignment exists, absent ensures it's removed. | `Present`, `Absent` |


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



