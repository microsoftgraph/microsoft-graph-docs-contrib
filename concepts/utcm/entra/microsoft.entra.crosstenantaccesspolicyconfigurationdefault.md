---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource manages Microsoft Entra Cross Tenant Access Policies Configuration Default.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsSingleInstance | Key | String | Only valid value is 'Yes'. | `Yes` |
| B2BCollaborationInbound | Write | CrossTenantAccessPolicyB2BSetting | Defines your partner-specific configuration for users from other organizations accessing your resources via Microsoft Entra B2B collaboration. | - |
| B2BCollaborationOutbound | Write | CrossTenantAccessPolicyB2BSetting | Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B collaboration. | - |
| B2BDirectConnectInbound | Write | CrossTenantAccessPolicyB2BSetting | Defines your partner-specific configuration for users from other organizations accessing your resources via Microsoft Entra B2B direct connect. | - |
| B2BDirectConnectOutbound | Write | CrossTenantAccessPolicyB2BSetting | Defines your partner-specific configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B direct connect. | - |
| InboundTrust | Write | CrossTenantAccessPolicyInboundTrust | Determines the partner-specific configuration for trusting other Conditional Access claims from external Microsoft Entra organizations. | - |
| Ensure | Write | String | Specify if the instance should exist or not. | `Present` |

### CrossTenantAccessPolicyTarget

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Target | Write | String | The unique identifier of the user, group, or application; one of the following keywords: AllUsers and AllApplications; or for targets that are applications, you may use reserved values. | - |
| TargetType | Write | String | The type of resource that you want to target. The possible values are: user, group, application, unknownFutureValue. | `user`, `group`, `application`, `unknownFutureValue` |

### CrossTenantAccessPolicyTargetConfiguration

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AccessType | Write | String | Defines whether access is allowed or blocked. The possible values are: allowed, blocked, unknownFutureValue. | `allowed`, `blocked`, `unknownFutureValue` |
| Targets | Write | CrossTenantAccessPolicyTarget[] | Specifies whether to target users, groups, or applications with this rule. | - |

### CrossTenantAccessPolicyB2BSetting

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Applications | Write | CrossTenantAccessPolicyTargetConfiguration | The list of applications targeted with your cross-tenant access policy. | - |
| UsersAndGroups | Write | CrossTenantAccessPolicyTargetConfiguration | The list of users and groups targeted with your cross-tenant access policy. | - |

### CrossTenantAccessPolicyInboundTrust

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsCompliantDeviceAccepted | Write | Boolean | Specifies whether compliant devices from external Microsoft Entra organizations are trusted. | - |
| IsHybridAzureADJoinedDeviceAccepted | Write | Boolean | Specifies whether hybrid Microsoft Entra joined devices from external Microsoft Entra organizations are trusted. | - |
| IsMfaAccepted | Write | Boolean | Specifies whether MFA from external Microsoft Entra organizations is trusted. | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Security Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Policy.Read.All |
| Update    | Policy.ReadWrite.CrossTenantAccess |



