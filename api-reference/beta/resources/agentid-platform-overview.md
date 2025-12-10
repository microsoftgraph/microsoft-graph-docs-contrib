---
title: Microsoft Entra Agent ID APIs in Microsoft Graph (preview)
description: "Use Microsoft Entra Agent ID APIs in Microsoft Graph to create, secure, and monitor AI agent identities."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dastrock,yukarppa,etbasser,kvenkit 
ms.subservice: entra-applications
ms.topic: overview
ms.date: 11/18/2025
doc_type: conceptualPageType
ms.localizationpriority: high

#customer intent: As a developer, I want to understand how to use Microsoft Graph APIs for Microsoft Entra Agent ID so that I can manage agent identities effectively.
---

# Microsoft Entra Agent ID APIs in Microsoft Graph overview (preview)

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
| **Agent registry** | Centralized repository for agent management that serves as the platform for managing agent card manifests, agent instances, and agent collections. | <ul><li>[agentRegistry](../resources/agentregistry.md)</li><li>[agentCardManifest](../resources/agentcardmanifest.md)</li><li>[agentInstance](../resources/agentinstance.md)</li><li>[agentCollection](../resources/agentcollection.md)</li> |

Learn more about the agent identity architecture in the following articles:
- [Agent identity and blueprint concepts in Microsoft Entra ID](/entra/agent-id/identity-platform/key-concepts)
- [Agent identities, service principals, and applications](/entra/agent-id/identity-platform/agent-service-principals)
- [What is the Microsoft Entra Agent Registry?](/entra/agent-id/identity-platform/what-is-agent-registry)

## Related APIs for security and governance for agents

Microsoft Entra Agent ID extends the comprehensive security and governance capabilities of Microsoft Entra to AI agents, including Conditional Access, Identity Protection, and audit logs.

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

### Identity Protection

Microsoft Entra ID Protection continuously evaluates agent risk based on various signals and machine learning. You can use the [agentRiskDetection](../resources/agentriskdetection.md) and [riskyAgent](../resources/riskyagent.md) resource types to identify and manage agent risk in your organization, including dismissing or confirming detected risks. Confirmed risks can trigger automated remediation actions such as Conditional Access policy enforcement.

### Audit Logs

Microsoft Entra [signIn logs](../resources/signin.md) capture activities performed by agent identities, providing visibility into agent operations for compliance and security monitoring - from creation of agent identities to configuration changes on agents including assignments of roles and permissions.

## Permissions for managing agent identities

Microsoft Graph provides the following granular permissions to manage agent identities and their associated components.

> [!IMPORTANT]
> Some of these permissions aren't currently available through the **API Permissions** picker on the Microsoft Entra admin center. Instead, you can programmatically assign these permissions using Microsoft Graph API or PowerShell. To grant delegated permissions, you need the permission (**scope**) name, while for app-only permissions, you need the ID. See the following articles for guidance:
> - [Grant or revoke API permissions using Microsoft Graph REST API](/graph/permissions-grant-via-msgraph)
> - [Grant or revoke API permissions using Microsoft Graph PowerShell](/powershell/microsoftgraph/how-to-grant-revoke-api-permissions)
> - [Grant and revoke API permissions using Microsoft Entra PowerShell](/powershell/entra-powershell/how-to-grant-revoke-api-permissions)

| Permission name                                   | Delegated ID                         | App-only ID                          |
|---------------------------------------------------|--------------------------------------|--------------------------------------|
| **Agent registry permissions**                    |                                      |                                      |
| AgentCardManifest.Read.All                        | ada96a26-9579-4c29-a578-c3482a765716 | 3ee18438-e6e5-4858-8f1c-d7b723b45213 |
| AgentCardManifest.ReadWrite.All                   | 80151b1a-1c31-4846-ae0d-c79939ee13d1 | 228b1a03-f7ca-4348-b50d-e8a547ab61af |
| AgentCardManifest.ReadWrite.ManagedBy             | Not supported.                       | 77f6034c-52f5-4526-9fa1-d55a67e72cc4 |
| AgentCollection.Read.All                          | fa50be38-fdff-469c-96dc-ef5fce3c64bf | e65ee1da-d1d5-467b-bdd0-3e9bb94e6e0c |
| AgentCollection.Read.Global                       | b14924c8-87f1-438a-81f2-dc370ba2f45d | Not supported.                       |
| AgentCollection.Read.Quarantined                  | 43acfda3-daf3-4aa4-955d-b051d0024e82 | Not supported.                       |
| AgentCollection.ReadWrite.All                     | 6d8a7002-a05e-4b95-a768-0e6f0badc6c8 | feb31d7d-a227-4487-898c-e014840d07b3 |
| AgentCollection.ReadWrite.Global                  | c001dd65-8a6b-4349-ab0c-4e8a410d28d2 | Not supported.                       |
| AgentCollection.ReadWrite.ManagedBy               | Not supported.                       | 2e0fb698-9996-479f-926b-ce63f4397829 |
| AgentCollection.ReadWrite.Quarantined             | ae331cc9-9f51-484b-a90b-124f2e4a6398 | Not supported.                       |
| AgentInstance.Read.All                            | 4c3c738a-2df0-4877-bf4a-f796950ff34c | 799a4732-85b8-4c67-b048-75f0e88a232b |
| AgentInstance.ReadWrite.All                       | fc79e324-da24-497a-b5ec-e7de08320375 | 07abdd95-78dc-4353-bd32-09f880ea43d0 |
| AgentInstance.ReadWrite.ManagedBy                 | Not supported.                       | 782ab1bf-24f1-4c27-8bbc-2006d42792a6 |
| **Agent identity permissions**                    |                                      |                                      |
| AgentIdentity.Read.All                            | 5e850691-d86a-4b24-bfa6-8a52fb37a0c1 | b2b8f011-2898-4234-9092-5059f6c1ebfa |
| AgentIdentity.ReadWrite.All                       | 4a4facd5-0ee1-49b7-a5b2-fdcc2491685e | dcf7150a-88d4-4fe6-9be1-c2744c455397 |
| AgentIdentity.DeleteRestore.All                   | c8ee41e5-35e7-4fe9-8ecb-93493adcac5b | 5b016f9b-18eb-41d4-869a-66931914d1c8 |
| AgentIdentity.CreateAsManager                     | ccf6a395-80ad-41b3-ba11-27d4930eb7d0 | 4c390976-b2b7-42e0-9187-c6be3bead001 |
| AgentIdentity.Create.All                          | e75eeac6-d759-4ba3-ae5c-773a27efafba | ad25cc1d-84d8-47df-a08e-b34c2e800819 |
| AgentIdentity.EnableDisable.All                   | a501206a-e364-4a3f-be6e-765806d0e323 | 69ee0943-4fa4-4ec8-8e52-d12e4ea661a3 |
| AgentIdentityBlueprint.Read.All                   | 26512dc8-1364-4e9f-867c-6d8b22a9e162 | 7547a7d1-36fa-4479-9c31-559a600eaa4f |
| AgentIdentityBlueprint.ReadWrite.All              | 4fd490fc-1467-48eb-8a4c-421597ab0402 | 7fddd33b-d884-4ec0-8696-72cff90ff825 |
| AgentIdentityBlueprint.DeleteRestore.All          | f12ba1f6-afb7-4685-9a30-21e8c3f551d8 | 3f80b699-6405-4e36-a4df-4f19950ff91e |
| AgentIdentityBlueprint.AddRemoveCreds.All         | 75b5feb2-bfe7-423f-907d-cc505186f246 | 0510736e-bdfb-4b37-9a1f-89b4a074763a |
| AgentIdentityBlueprint.UpdateBranding.All         | 60960e31-67cb-4d25-9d36-4922109923a2 | 76232daa-a1e4-4544-b664-495a006513bf |
| AgentIdentityBlueprint.Create                     | 8fc15edd-ba24-494e-9bf6-d38e1b7ba8fd | ea4b2453-ad2d-4d94-9155-10d5d9493ce9 |
| AgentIdentityBlueprintPrincipal.Read.All          | 88c856a2-de61-4632-b2d4-ac503cbc8dd2 | 9361dea9-4524-493d-941d-f1b65aaf6c7c |
| AgentIdentityBlueprintPrincipal.ReadWrite.All     | bf2cad6a-9082-438a-9a63-95fa2687af65 | 3bc933bc-8b4d-4cb6-ac49-b73774299250 |
| AgentIdentityBlueprintPrincipal.DeleteRestore.All | 2c70023e-a482-4af2-9ff1-51ded53e6bad | f86a2dd8-9298-4675-bd78-f5a3572da2d7 |
| AgentIdentityBlueprintPrincipal.Create            | 00dcd896-6b23-42ce-b5de-c58493c05e22 | 8959696d-d07e-4916-9b1e-3ba9ce459161 |
| AgentIdentityBlueprintPrincipal.EnableDisable.All | e7475e0a-9f02-43e2-a250-5c2ea74ccd0e | a0bdd23d-8b19-4682-b428-574d96527c6f |
| **Agent user permissions**                        |                                      |                                      |
| AgentIdUser.ReadWrite.All                         | ad57fb88-4658-4fd6-ab7d-e43184b08e4e | b782c9ad-6f2b-4894-a21b-72bf22417f0a |
| AgentIdUser.ReadWrite.IdentityParentedBy          | 52a417d9-0b3c-4466-9a3b-66960de73d74 | 4aa6e624-eee0-40ab-bdd8-f9639038a614 |

Managing Conditional Access policies, Identity Protection, and viewing audit logs for agents require the same permissions as managing these features for other identity types in Microsoft Entra. For more information, see the corresponding API articles for each feature.

For more information about the listed permissions available through both Microsoft Graph and Microsoft Entra admin center, see [Microsoft Graph permissions reference](/graph/permissions-reference).

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
