---
title: Sample prompts for Microsoft MCP Server for Enterprise
description: "Explore example natural language prompts to query Microsoft Entra identity data using the Microsoft MCP Server for Enterprise."
author: msewaweru
ms.author: eunicewaweru
ms.reviewer: Licantrop0
ms.subservice: ent-mcp-server
ms.topic: how-to
ms.date: 01/21/2026

#customer intent: As an IT administrator or developer, I want to see example prompts that show me how to query my tenant's identity, security, and device data using natural language with the Microsoft MCP Server for Enterprise.
---

# Sample prompts for Microsoft MCP Server for Enterprise

Query your Microsoft Entra tenant data using natural language. The Microsoft MCP Server for Enterprise translates your questions into Microsoft Graph API calls, providing conversational access to identity, device, security, and compliance information. This article provides sample prompts organized by common scenarios to help you get started.

> [!TIP]
> When using these prompts, the MCP-enabled AI agent shows you the underlying Microsoft Graph API calls it executes. You can use these API calls in your own scripts, applications, or automation workflows.

## Prerequisites

Before using these prompts, ensure you've completed the setup in [Get started with Microsoft MCP Server for Enterprise](get-started.md). Your MCP client must have the appropriate delegated permissions for the operations you want to perform.

## User management

### Count and list users

**Prompt:** "How many users are in my tenant?"

**What it does:** Returns the total count of users in your Microsoft Entra tenant.

**Required scope:** `MCP.User.Read.All`

---

**Prompt:** "List the first 10 users in my tenant"

**What it does:** Retrieves basic information about users including display name, user principal name, and email address.

**Required scope:** `MCP.User.Read.All`

---

**Prompt:** "Show me recently created users"

**What it does:** Lists users ordered by creation date, showing the most recently created accounts first.

**Required scope:** `MCP.User.Read.All`

---

**Prompt:** "How many guest users do we have?"

**What it does:** Counts external users (guests) in your tenant.

**Required scope:** `MCP.User.Read.All`

### User sign-in activity

**Prompt:** "Which users haven't signed in for the last 30 days?"

**What it does:** Identifies inactive user accounts based on sign-in activity data.

**Required scopes:** `MCP.User.Read.All`, `MCP.AuditLog.Read.All`

---

**Prompt:** "When did [user email] last sign in?"

**What it does:** Retrieves the most recent sign-in timestamp for a specific user.

**Required scopes:** `MCP.User.Read.All`, `MCP.AuditLog.Read.All`

---

**Prompt:** "Show me sign-in failures for [user email]"

**What it does:** Lists failed sign-in attempts for a specific user, including error details.

**Required scope:** `MCP.AuditLog.Read.All`

### User account status

**Prompt:** "List disabled user accounts"

**What it does:** Returns users where `accountEnabled` is set to false.

**Required scope:** `MCP.User.Read.All`

---

**Prompt:** "Show me recently deleted users"

**What it does:** Retrieves users from the directory's deleted items collection.

**Required scope:** `MCP.User.Read.All`

---

**Prompt:** "List users synced from on-premises Active Directory"

**What it does:** Identifies users where `onPremisesSyncEnabled` is true.

**Required scope:** `MCP.User.Read.All`

## Group management

### Count and list groups

**Prompt:** "How many groups are in my tenant?"

**What it does:** Returns the total count of groups.

**Required scope:** `MCP.GroupMember.Read.All`

---

**Prompt:** "List all security groups"

**What it does:** Retrieves groups where `securityEnabled` is true.

**Required scope:** `MCP.GroupMember.Read.All`

---

**Prompt:** "Show me cloud-only groups"

**What it does:** Lists groups that aren't synchronized from on-premises Active Directory.

**Required scope:** `MCP.GroupMember.Read.All`

---

**Prompt:** "Find groups without owners"

**What it does:** Identifies ownerless groups that may need attention.

**Required scope:** `MCP.GroupMember.Read.All`

### Group membership

**Prompt:** "List members of [group name]"

**What it does:** Retrieves all users who are members of the specified group.

**Required scope:** `MCP.GroupMember.Read.All`

---

**Prompt:** "Which groups is [user email] a member of?"

**What it does:** Lists all group memberships for a specific user.

**Required scopes:** `MCP.User.Read.All`, `MCP.GroupMember.Read.All`

---

**Prompt:** "Show me all groups provisioned for Microsoft Teams"

**What it does:** Lists Microsoft 365 groups that have Teams enabled.

**Required scope:** `MCP.GroupMember.Read.All`

## Application and service principal management

### List applications

**Prompt:** "How many applications are registered in my tenant?"

**What it does:** Counts both application registrations and service principals.

**Required scope:** `MCP.Application.Read.All`

---

**Prompt:** "List applications registered in my tenant"

**What it does:** Retrieves all application registrations with basic details.

**Required scope:** `MCP.Application.Read.All`

---

**Prompt:** "Show me applications from external publishers"

**What it does:** Lists service principals where the app owner organization differs from your tenant.

**Required scope:** `MCP.Application.Read.All`

### Application ownership and details

**Prompt:** "Which applications does [user email] own?"

**What it does:** Lists all applications and service principals owned by a specific user.

**Required scopes:** `MCP.User.Read.All`, `MCP.Application.Read.All`

---

**Prompt:** "Who owns [application name]?"

**What it does:** Retrieves the owner information for a specific application.

**Required scope:** `MCP.Application.Read.All`

---

**Prompt:** "List Teams apps installed for me"

**What it does:** Shows Microsoft Teams applications installed for the signed-in user.

**Required scope:** `MCP.Application.Read.All`

## Security and compliance

### Multi-factor authentication (MFA)

**Prompt:** "Is MFA enabled for all administrators?"

**What it does:** Checks security defaults and conditional access policies that enforce MFA for admin roles.

**Required scopes:** `MCP.Policy.Read.All`, `MCP.Policy.Read.ConditionalAccess`

---

**Prompt:** "Show me the MFA registration status for all users"

**What it does:** Lists which authentication methods users have registered and whether they're MFA-capable.

**Required scopes:** `MCP.Reports.Read.All`, `MCP.UserAuthenticationMethod.Read.All`

---

**Prompt:** "Which conditional access policies require MFA?"

**What it does:** Lists enabled conditional access policies that include MFA as a grant control.

**Required scope:** `MCP.Policy.Read.ConditionalAccess`

---

**Prompt:** "Show me recent sign-ins that used MFA"

**What it does:** Retrieves sign-in logs where multi-factor authentication was required and completed.

**Required scope:** `MCP.AuditLog.Read.All`

### Conditional access policies

**Prompt:** "List all enabled conditional access policies"

**What it does:** Retrieves conditional access policies that are currently active.

**Required scope:** `MCP.Policy.Read.ConditionalAccess`

---

**Prompt:** "What authentication contexts are defined in my tenant?"

**What it does:** Lists custom authentication context class references used in conditional access.

**Required scope:** `MCP.Policy.Read.All`

### Risk and identity protection

**Prompt:** "Show me users flagged as risky"

**What it does:** Lists users with active risk detections from Microsoft Entra ID Protection.

**Required scope:** `MCP.IdentityRiskyUser.Read.All`

---

**Prompt:** "List recent identity risk events"

**What it does:** Retrieves recent risk detections such as anonymous IP usage, atypical travel, or leaked credentials.

**Required scope:** `MCP.IdentityRiskEvent.Read.All`

---

**Prompt:** "Show me risky service principals"

**What it does:** Lists service principals with suspicious activity detected.

**Required scope:** `MCP.IdentityRiskyServicePrincipal.Read.All`

### Audit and monitoring

**Prompt:** "Show me recent directory changes"

**What it does:** Retrieves recent audit log entries for directory modifications.

**Required scope:** `MCP.AuditLog.Read.All`

---

**Prompt:** "Who changed [user email]'s password?"

**What it does:** Finds audit log entries for password reset operations on a specific user.

**Required scope:** `MCP.AuditLog.Read.All`

---

**Prompt:** "List recent changes to [group name]"

**What it does:** Shows audit log entries for modifications to a specific group.

**Required scope:** `MCP.AuditLog.Read.All`

## License management

**Prompt:** "What licenses are available in my tenant?"

**What it does:** Lists all subscribed SKUs with their capability status.

**Required scope:** `MCP.Organization.Read.All`

---

**Prompt:** "How many licenses are unassigned?"

**What it does:** Shows the difference between purchased and consumed licenses for each SKU.

**Required scope:** `MCP.Organization.Read.All`

---

**Prompt:** "Which users have [license name] assigned?"

**What it does:** Lists users with a specific license SKU assigned.

**Required scopes:** `MCP.User.Read.All`, `MCP.LicenseAssignment.Read.All`

## Device management

**Prompt:** "How many devices are registered in my tenant?"

**What it does:** Counts all devices in Microsoft Entra.

**Required scope:** `MCP.Device.Read.All`

---

**Prompt:** "List all Windows devices"

**What it does:** Retrieves devices where the operating system is Windows.

**Required scope:** `MCP.Device.Read.All`

---

**Prompt:** "Show me devices that haven't checked in recently"

**What it does:** Identifies potentially inactive or orphaned device registrations.

**Required scope:** `MCP.Device.Read.All`

---

**Prompt:** "Which devices does [user email] own?"

**What it does:** Lists devices registered to a specific user.

**Required scopes:** `MCP.User.Read.All`, `MCP.Device.Read.All`

## Role assignments and privileged access

**Prompt:** "List all Global Administrators"

**What it does:** Shows users assigned to the Global Administrator role.

**Required scope:** `MCP.RoleManagement.Read.Directory`

---

**Prompt:** "Which roles is [user email] assigned to?"

**What it does:** Lists all directory role assignments for a specific user.

**Required scopes:** `MCP.User.Read.All`, `MCP.RoleManagement.Read.Directory`

---

**Prompt:** "Show me active Privileged Identity Management (PIM) assignments"

**What it does:** Lists time-bounded role assignments through PIM that are currently active.

**Required scope:** `MCP.RoleAssignmentSchedule.Read.Directory`

---

**Prompt:** "Who is eligible for the [role name] role?"

**What it does:** Shows users with eligible (not active) PIM assignments for a specific role.

**Required scope:** `MCP.RoleEligibilitySchedule.Read.Directory`

## Administrative units

**Prompt:** "List all administrative units"

**What it does:** Retrieves all administrative units configured in your tenant.

**Required scope:** `MCP.AdministrativeUnit.Read.All`

---

**Prompt:** "Which users are in the [administrative unit name]?"

**What it does:** Lists members of a specific administrative unit.

**Required scope:** `MCP.AdministrativeUnit.Read.All`

---

**Prompt:** "Show me restricted management administrative units"

**What it does:** Lists administrative units with the restricted management feature enabled.

**Required scope:** `MCP.AdministrativeUnit.Read.All`

## Identity governance

### Access reviews

**Prompt:** "List all active access reviews"

**What it does:** Shows ongoing access reviews for groups, applications, or roles.

**Required scope:** `MCP.AccessReview.Read.All`

---

**Prompt:** "Which access reviews are overdue?"

**What it does:** Identifies access reviews that haven't been completed by their due date.

**Required scope:** `MCP.AccessReview.Read.All`

### Entitlement management

**Prompt:** "List all access packages"

**What it does:** Retrieves access packages configured for entitlement management.

**Required scope:** `MCP.EntitlementManagement.Read.All`

---

**Prompt:** "Show me pending access package requests"

**What it does:** Lists access package assignment requests awaiting approval.

**Required scope:** `MCP.EntitlementManagement.Read.All`

## Organization and domain information

**Prompt:** "What is my tenant ID?"

**What it does:** Retrieves your organization's tenant identifier.

**Required scope:** `MCP.Organization.Read.All`

---

**Prompt:** "List all verified domains in my tenant"

**What it does:** Shows all domains associated with your organization and their verification status.

**Required scope:** `MCP.Domain.Read.All`

---

**Prompt:** "Show me my tenant's contact information"

**What it does:** Retrieves organization details including technical contacts.

**Required scope:** `MCP.Organization.Read.All`

## Reports and insights

**Prompt:** "Show me directory recommendations"

**What it does:** Lists Microsoft Entra recommendations for improving your tenant's security and configuration.

**Required scope:** `MCP.DirectoryRecommendations.Read.All`

---

**Prompt:** "What are the high-priority security recommendations?"

**What it does:** Filters recommendations by priority level.

**Required scope:** `MCP.DirectoryRecommendations.Read.All`

---

**Prompt:** "Show me recent audit log activity"

**What it does:** Retrieves recent directory audit log entries to monitor administrative actions and changes in your tenant.

**Required scope:** `MCP.AuditLog.Read.All`

## Synchronization and provisioning

**Prompt:** "Show me provisioning logs for [application name]"

**What it does:** Retrieves provisioning activity for automated user provisioning to applications.

**Required scope:** `MCP.ProvisioningLog.Read.All`

---

**Prompt:** "Show me sync service audit logs"

**What it does:** Retrieves audit log entries for synchronization service activities, providing visibility into sync operations and changes.

**Required scope:** `MCP.AuditLog.Read.All`

---

**Prompt:** "Show me recent provisioning errors"

**What it does:** Identifies failed provisioning attempts with error details.

**Required scope:** `MCP.ProvisioningLog.Read.All`


## Tips for effective prompts

- **Be specific**: Include user emails, group names, or other identifiers when asking about specific resources.
- **Use natural language**: You don't need to know Graph API syntax—ask questions as you would to a colleague.
- **Chain queries**: After getting results, you can ask follow-up questions like "Show me more details about the first user" or "When did they last sign in?"
- **Check the API calls**: Review the Microsoft Graph API calls that the MCP Server generates—you can use them in your own automation.
- **Combine scenarios**: Try multi-step questions like "List all inactive users who have licenses assigned and are not administrators."

## Limitations

Remember that the Microsoft MCP Server for Enterprise currently supports **read-only** operations. You cannot use it to:

- Create, update, or delete users, groups, or other resources
- Modify configurations or settings
- Approve or deny requests
- Reset passwords or perform other write operations

For write operations, use the Azure portal, PowerShell cmdlets, or Microsoft Graph API directly.

## Related content

- [Overview of Microsoft MCP Server for Enterprise](overview.md)
- [Get started with Microsoft MCP Server for Enterprise](get-started.md)
- [Microsoft Graph permissions reference](../permissions-reference.md)
