---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configure existing Azure roles. All UI parameters can be configured using this resource like:
- Notifications
- require approval / ticket / justification / MFA


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | RuleDefinition DisplayName | - |
| Id | Write | String | Specifies the RoleId. | - |
| ActivationMaxDuration | Write | String | Activation maximum duration (hours). | - |
| ActivationReqJustification | Write | Boolean | Require justification on activation (True/False) | - |
| ActivationReqTicket | Write | Boolean | Require ticket information on activation (True/False) | - |
| ActivationReqMFA | Write | Boolean | Require MFA on activation (True/False) | - |
| ApprovaltoActivate | Write | Boolean | Require approval to activate (True/False) | - |
| ActivateApprover | Write | StringArray[] | Approver User UPN and/or Group Displayname | - |
| PermanentEligibleAssignmentisExpirationRequired | Write | Boolean | Allow permanent eligible assignment (True/False) | - |
| ExpireEligibleAssignment | Write | String | Expire eligible assignments after (Days) | - |
| PermanentActiveAssignmentisExpirationRequired | Write | Boolean | Allow permanent active assignment (True/False) | - |
| ExpireActiveAssignment | Write | String | Expire active assignments after (Days) | - |
| AssignmentReqMFA | Write | Boolean | Require Azure Multi-Factor Authentication on active assignment (True/False) | - |
| AssignmentReqJustification | Write | Boolean | Require justification on active assignment (True/False) | - |
| ElegibilityAssignmentReqMFA | Write | Boolean | Require Azure Multi-Factor Authentication on eligible assignment (True/False) | - |
| ElegibilityAssignmentReqJustification | Write | Boolean | Require justification on eligible assignment (True/False) | - |
| EligibleAlertNotificationDefaultRecipient | Write | Boolean | Send notifications when members are assigned as eligible to this role: Role assignment alert, default recipient (True/False) | - |
| EligibleAlertNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when members are assigned as eligible to this role: Role assignment alert, additional recipient (UPN) | - |
| EligibleAlertNotificationOnlyCritical | Write | Boolean | Send notifications when members are assigned as eligible to this role: Role assignment alert, only critical Email (True/False) | - |
| EligibleAssigneeNotificationDefaultRecipient | Write | Boolean | Send notifications when members are assigned as eligible to this role: Notification to the assigned user (assignee), default recipient (True/False) | - |
| EligibleAssigneeNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when members are assigned as eligible to this role: Notification to the assigned user (assignee), additional recipient (UPN) | - |
| EligibleAssigneeNotificationOnlyCritical | Write | Boolean | Send notifications when members are assigned as eligible to this role: Notification to the assigned user (assignee), only critical Email (True/False) | - |
| EligibleApproveNotificationDefaultRecipient | Write | Boolean | Send notifications when members are assigned as eligible to this role: Request to approve a role assignment renewal/extension, default recipient (True/False) | - |
| EligibleApproveNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when members are assigned as eligible to this role: Request to approve a role assignment renewal/extension, additional recipient (UPN) | - |
| EligibleApproveNotificationOnlyCritical | Write | Boolean | Send notifications when members are assigned as eligible to this role: Request to approve a role assignment renewal/extension, only critical Email (True/False) | - |
| ActiveAlertNotificationDefaultRecipient | Write | Boolean | Send notifications when members are assigned as active to this role: Role assignment alert, default recipient (True/False) | - |
| ActiveAlertNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when members are assigned as active to this role: Role assignment alert, additional recipient (UPN) | - |
| ActiveAlertNotificationOnlyCritical | Write | Boolean | Send notifications when members are assigned as active to this role: Role assignment alert, only critical Email (True/False) | - |
| ActiveAssigneeNotificationDefaultRecipient | Write | Boolean | Send notifications when members are assigned as active to this role: Notification to the assigned user (assignee), default recipient (True/False) | - |
| ActiveAssigneeNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when members are assigned as active to this role: Notification to the assigned user (assignee), additional recipient (UPN) | - |
| ActiveAssigneeNotificationOnlyCritical | Write | Boolean | Send notifications when members are assigned as active to this role: Notification to the assigned user (assignee), only critical Email (True/False) | - |
| ActiveApproveNotificationDefaultRecipient | Write | Boolean | Send notifications when members are assigned as active to this role: Request to approve a role assignment renewal/extension, default recipient (True/False) | - |
| ActiveApproveNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when members are assigned as active to this role: Request to approve a role assignment renewal/extension, additional recipient (UPN) | - |
| ActiveApproveNotificationOnlyCritical | Write | Boolean | Send notifications when members are assigned as active to this role: Request to approve a role assignment renewal/extension, only critical Email (True/False) | - |
| EligibleAssignmentAlertNotificationDefaultRecipient | Write | Boolean | Send notifications when eligible members activate this role: Role assignment alert, default recipient (True/False) | - |
| EligibleAssignmentAlertNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when eligible members activate this role: Role assignment alert, additional recipient (UPN) | - |
| EligibleAssignmentAlertNotificationOnlyCritical | Write | Boolean | Send notifications when eligible members activate this role: Role assignment alert, only critical Email (True/False) | - |
| EligibleAssignmentAssigneeNotificationDefaultRecipient | Write | Boolean | Send notifications when eligible members activate this role: Notification to activated user (requestor), default recipient (True/False) | - |
| EligibleAssignmentAssigneeNotificationAdditionalRecipient | Write | StringArray[] | Send notifications when eligible members activate this role: Notification to activated user (requestor), additional recipient (UPN) | - |
| EligibleAssignmentAssigneeNotificationOnlyCritical | Write | Boolean | Send notifications when eligible members activate this role: Notification to activated user (requestor), only critical Email (True/False) | - |
| AuthenticationContextRequired | Write | Boolean | Authorization context is required (True/False) | - |
| AuthenticationContextName | Write | String | Descriptive name of associated authorization context | - |
| AuthenticationContextId | Write | String | Authorization context id | - |
| Ensure | Write | String | Specify if the Microsoft Entra role setting should exist or not. | `Present` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Privileged Role Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, RoleManagement.Read.Directory, User.Read.All, RoleManagementPolicy.Read.Directory |
| Update    | Group.Read.All, RoleManagement.ReadWrite.Directory, User.Read.All, RoleManagementPolicy.ReadWrite.Directory |



