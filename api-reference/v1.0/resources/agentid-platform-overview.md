---
title: Microsoft Entra Agent ID APIs in Microsoft Graph
description: "Use Microsoft Entra Agent ID APIs in Microsoft Graph to create, secure, and monitor AI agent identities."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dastrock,yukarppa,etbasser,kvenkit 
ms.subservice: entra-applications
ms.topic: overview
ms.date: 05/05/2026
doc_type: conceptualPageType
ms.localizationpriority: high

#customer intent: As a developer, I want to understand how to use Microsoft Graph APIs for Microsoft Entra Agent ID so that I can manage agent identities effectively.
---

# Microsoft Entra Agent ID APIs in Microsoft Graph overview

Microsoft Entra Agent ID APIs in Microsoft Graph help you create, secure, and manage AI agent identities operating in your organization. You can programmatically create agent identities, control their access to resources, and monitor their activities through a centralized platform.

In this article, you learn about the key concepts and APIs for managing agent identities in Microsoft Graph, including the components that make up an agent identity, how to apply security and governance policies to agents, and the permissions required to manage agents programmatically.

To learn more about the Microsoft Entra Agent ID, see [What is Microsoft Entra Agent ID](/entra/agent-id/identity-professional/microsoft-entra-agent-identities-for-ai-agents).

## Building blocks of agent identities

The following core components comprise Microsoft Entra Agent ID's architecture:

| Component | Purpose | Microsoft Graph resource |
|--|--|--|
| **Blueprint** | Template defining the agent identity type, including permissions that agent identities are preauthorized to automatically inherit | [agentIdentityBlueprint](../resources/agentidentityblueprint.md) |
| **Blueprint principal** | Record of blueprint's addition to a tenant | [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) |
| **Agent identity** | Primary identity for authentication | [agentIdentity](../resources/agentidentity.md) |
| **Agent user** | Optional account for scenarios that require a user account | [agentUser](../resources/agentUser.md) |

Learn more about the agent identity architecture in [Microsoft Entra Agent ID key concepts](/entra/agent-id/key-concepts).

## Related APIs for security and governance for agents

Microsoft Entra Agent ID extends the comprehensive security and governance capabilities of Microsoft Entra to AI agents, including Conditional Access, governance, and audit logs.

### Ownership and accountability

Each agent identity should have a designated party accountable for the agent's actions, access permissions, and overall security posture to ensure accountability and proper governance. Microsoft Graph APIs let you assign and manage the following metadata for agent identities, to support this principle.

| Metadata | Applies to                                                                        |
|----------|-----------------------------------------------------------------------------------|
| owner    | agentIdentityBlueprint, agentIdentityBlueprintPrincipal, agentIdentity            |
| sponsor  | agentIdentityBlueprint, agentIdentityBlueprintPrincipal, agentIdentity, agentUser |
| manager  | agentUser                                                                         |

See [Administrative relationships in Microsoft Entra Agent ID (owners, sponsors, and managers)](/entra/agent-id/identity-platform/agent-owners-sponsors-managers) for more information.

### Conditional Access

You can programmatically apply Conditional Access policies to enforce access policies on AI agents, based on agent identity, risk and other contextual factors.

- Use the [What If evaluation API](../api/conditionalaccessroot-evaluate.md) to simulate how Conditional Access policies would affect agent identities trying to access resources.
- Use the [Conditional Access policy APIs](../resources/conditionalaccesspolicy.md) to apply or manage Conditional Access policies for AI agents accessing organizational resources. You can apply these policies based on agent risk level, or custom security attributes assigned to the agents.

### Governance

Microsoft Entra ID Governance extends to AI agents, enabling you to manage the access lifecycle of agent identities in the same way as other identities. With governance applied to agent identities, you can ensure agents have a responsible person providing oversight throughout the agent lifecycle, and that agent access doesn't persist longer than needed.

- Use **access packages** via the [entitlement management APIs](../resources/entitlementmanagement.md) to assign agent identities access to security groups, application OAuth permissions (including Microsoft Graph permissions), and Microsoft Entra roles. The agent identity itself, its owner, its sponsor, or an administrator can request access packages on behalf of the agent.
- Assign **sponsors** to agent identities and agent users to designate accountable human users responsible for making decisions about the agent's lifecycle and access. Sponsors receive notifications when access package assignments approach expiry and can approve renewals or allow access to expire.
- Use **access reviews** to periodically verify that agent identities still need the access they have.
- Use **lifecycle workflows** to automate agent identity sponsor lifecycle tasks for effective governance and compliance, such as triggering notifications when agent identity sponsor changes or transferring sponsorship responsibilities from a user to their manager.

For a complete overview of governance capabilities for agent identities, see [Microsoft Entra ID Governance for agent identities](/entra/id-governance/agent-id-governance-overview).

### Activity monitoring

Microsoft Entra [sign-in reports](../resources/signin.md) and [audit logs](../resources/directoryaudit.md) capture activities performed by agent identities, providing visibility into agent operations for compliance and security monitoring - from creation of agent identities to configuration changes on agents including assignments of roles and permissions.

## Permissions for managing agent identities

Microsoft Graph provides granular permissions to manage agent identities and their associated components. The permissions follow the following patterns and are published in the [Microsoft Graph permissions reference](/graph/permissions-reference).

Permissions for managing the agent identity blueprints and identities:
- AgentIdentity*

Permissions for managing agent users:
- AgentIdUser.Read*

Managing Conditional Access policies and viewing audit logs for agents require the same permissions as managing these features for other identity types in Microsoft Entra. For more information, see the corresponding API articles for each feature.

## Microsoft Graph permissions blocked for agents

Agent identities use the same Microsoft Graph permission model as other identities. Therefore, they can be granted delegated or application permissions to access Microsoft Graph APIs.

However, because of the autonomous nature of agents and the potential risks they pose, the following high-risk Microsoft Graph API permissions are explicitly blocked for agents to prevent misuse or unintended access to sensitive data. These permissions can't be granted to agent identities through Microsoft Graph or Microsoft Entra admin center. <!-- Learn more in [Authorization in Microsoft Entra Agent ID](/entra/agent-id/identity-professional/authorization-agent-id) -->

**Legend:**
- ❌ indicates the permission is blocked in that category
- ➖ indicates the permission is not applicable/blocked in that category

| Permission name                                                                                                     | Delegated | Application |
|---------------------------------------------------------------------------------------------------------------------|-----------|-------------|
| AgentIdentity.Create                                                                                                | ➖        | ❌           |
| AgentIdentity.Create.All                                                                                            | ➖        | ❌           |
| AgentIdentity.CreateAsManager                                                                                       | ➖        | ❌           |
| AgentIdentityBlueprint.Create                                                                                       | ➖        | ❌           |
| AgentIdentityBlueprint.CreateAsManager                                                                              | ➖        | ❌           |
| AgentIdentityBlueprint.ReadWrite.All                                                                                | ➖        | ❌           |
| AgentIdentityBlueprintPrincipal.Create                                                                              | ➖        | ❌           |
| [Application.ReadWrite.All](/graph/permissions-reference#applicationreadwriteall)                                   | ➖        | ❌           |
| [Application.ReadWrite.OwnedBy](/graph/permissions-reference#applicationreadwriteownedby)                           | ➖        | ❌           |
| [AppRoleAssignment.ReadWrite.All](/graph/permissions-reference#approleassignmentreadwriteall)                       | ➖        | ❌           |
| [BitlockerKey.Read.All](/graph/permissions-reference#bitlockerkeyreadall)                                           | ➖        | ❌           |
| [Calendars.Read](/graph/permissions-reference#calendarsread)                                                        | ➖        | ❌           |
| [ChannelMessage.Read.All](/graph/permissions-reference#channelmessagereadall)                                       | ➖        | ❌           |
| [ChannelMessage.Read.Group](/graph/permissions-reference#channelmessagereadgroup)                                   | ➖        | ❌           |
| [Chat.Read.All](/graph/permissions-reference#chatreadall)                                                           | ➖        | ❌           |
| [Chat.ReadWrite.All](/graph/permissions-reference#chatreadwriteall)                                                 | ➖        | ❌           |
| [ConsentRequest.ReadWrite.All](/graph/permissions-reference#consentrequestreadwriteall)                             | ➖        | ❌           |
| [CustomSecAttributeAssignment.ReadWrite.All](/graph/permissions-reference#customsecattributeassignmentreadwriteall) | ❌        | ❌           |
| [CustomSecAttributeDefinition.ReadWrite.All](/graph/permissions-reference#customsecattributedefinitionreadwriteall) | ❌        | ❌           |
| [DelegatedPermissionGrant.ReadWrite.All](/graph/permissions-reference#delegatedpermissiongrantreadwriteall)         | ❌        | ❌           |
| [Device.ReadWrite.All](/graph/permissions-reference#devicereadwriteall)                                             | ➖        | ❌           |
| [Device.Write.Restricted](/graph/permissions-reference#devicewriterestricted)                                       | ❌        | ❌           |
| [DeviceManagementConfiguration.Read.All](/graph/permissions-reference#devicemanagementconfigurationreadall)         | ➖        | ❌           |
| [Directory.AccessAsUser.All](/graph/permissions-reference#directoryaccessasuserall)                                 | ❌        | ➖           |
| [Directory.ReadWrite.All](/graph/permissions-reference#directoryreadwriteall)                                       | ❌        | ❌           |
| [Directory.Write.Restricted](/graph/permissions-reference#directorywriterestricted)                                 | ❌        | ❌           |
| [Domain.ReadWrite.All](/graph/permissions-reference#domainreadwriteall)                                             | ❌        | ❌           |
| [EduRoster.ReadWrite.All](/graph/permissions-reference#edurosterreadwriteall)                                       | ➖        | ❌           |
| [EntitlementManagement.ReadWrite.All](/graph/permissions-reference#entitlementmanagementreadwriteall)               | ➖        | ❌           |
| [Files.Read.All](/graph/permissions-reference#filesreadall)                                                         | ➖        | ❌           |
| [Files.ReadWrite.All](/graph/permissions-reference#filesreadwriteall)                                               | ➖        | ❌           |
| [Group.Create](/graph/permissions-reference#groupcreate)                                                            | ➖        | ❌           |
| [Group.ReadWrite.All](/graph/permissions-reference#groupreadwriteall)                                               | ❌        | ❌           |
| [Group.Write.Restricted](/graph/permissions-reference#groupwriterestricted)                                         | ❌        | ➖           |
| [GroupMember.ReadWrite.All](/graph/permissions-reference#groupmemberreadwriteall)                                   | ❌        | ❌           |
| [IdentityProvider.ReadWrite.All](/graph/permissions-reference#identityproviderreadwriteall)                         | ➖        | ❌           |
| [LifecycleManagement.ReadWrite.All](/graph/permissions-reference#lifecyclemanagementreadwriteall)                   | ➖        | ❌           |
| [Organization.ReadWrite.All](/graph/permissions-reference#organizationreadwriteall)                                 | ➖        | ❌           |
| [Policy.ReadWrite.AuthenticationMethod](/graph/permissions-reference#policyreadwriteauthenticationmethod)           | ➖        | ❌           |
| [Policy.ReadWrite.CrossTenantAccess](/graph/permissions-reference#policyreadwritecrosstenantaccess)                 | ➖        | ❌           |
| [Policy.ReadWrite.PermissionGrant](/graph/permissions-reference#policyreadwritepermissiongrant)                     | ➖        | ❌           |
| [Policy.ReadWrite.SecurityDefaults](/graph/permissions-reference#policyreadwritesecuritydefaults)                   | ➖        | ❌           |
| [PrintJob.ReadWrite.All](/graph/permissions-reference#printjobreadwriteall)                                         | ➖        | ❌           |
| [PrivilegedAccess.ReadWrite.AzureAD](/graph/permissions-reference#privilegedaccessreadwriteazuread)                 | ➖        | ❌           |
| [PrivilegedAccess.ReadWrite.AzureResources](/graph/permissions-reference#privilegedaccessreadwriteazureresources)   | ➖        | ❌           |
| [RoleManagement.ReadWrite.All](/graph/permissions-reference#rolemanagementreadwriteall)                             | ❌        | ➖           |
| [RoleManagement.ReadWrite.Directory](/graph/permissions-reference#rolemanagementreadwritedirectory)                 | ❌        | ❌           |
| [Sites.FullControl.All](/graph/permissions-reference#sitesfullcontrolall)                                           | ➖        | ❌           |
| [Sites.Manage.All](/graph/permissions-reference#sitesmanageall)                                                     | ➖        | ❌           |
| [Sites.Read.All](/graph/permissions-reference#sitesreadall)                                                         | ➖        | ❌           |
| [Sites.ReadWrite.All](/graph/permissions-reference#sitesreadwriteall)                                               | ➖        | ❌           |
| [Tasks.ReadWrite.All](/graph/permissions-reference#tasksreadwriteall)                                               | ➖        | ❌           |
| [User-PasswordProfile.ReadWrite.All](/graph/permissions-reference#user-passwordprofilereadwriteall)                 | ❌        | ❌           |
| [User.DeleteRestore.All](/graph/permissions-reference#userdeleterestoreall)                                         | ❌        | ❌           |
| [User.EnableDisableAccount.All](/graph/permissions-reference#userenabledisableaccountall)                           | ❌        | ❌           |
| [User.Invite.All](/graph/permissions-reference#userinviteall)                                                       | ➖        | ❌           |
| [User.ReadWrite.All](/graph/permissions-reference#userreadwriteall)                                                 | ❌        | ❌           |
| [UserAuthenticationMethod.Read.All](/graph/permissions-reference#userauthenticationmethodreadall)                   | ❌        | ➖           |
| [UserAuthenticationMethod.ReadWrite.All](/graph/permissions-reference#userauthenticationmethodreadwriteall)         | ❌        | ❌           |

## Related content

[What is Microsoft Entra Agent ID](/entra/agent-id/identity-professional/microsoft-entra-agent-identities-for-ai-agents)
