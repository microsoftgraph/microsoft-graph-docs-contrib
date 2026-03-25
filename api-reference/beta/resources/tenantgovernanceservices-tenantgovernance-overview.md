---
title: "Overview of Tenant Governance APIs in Microsoft Graph"
description: "Discover, manage, and govern Microsoft Entra tenants at scale with Tenant Governance APIs in Microsoft Graph. Learn about related tenants, governance relationships and associated settings."
author: "FaithOmbongi"
ms.author: "ombongifaith"
ms.reviewer: "hafowler,akhil.potturi,jeffsta"
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: conceptualPageType
ms.date: 03/19/2026
ms.topic: overview
#customer intent: As a developer, I want to learn how to use the tenant governance APIs in Microsoft Graph to programmatically discover related tenants and establish governance relationships.
---

# Overview of Tenant Governance APIs in Microsoft Graph

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The tenant governance APIs in Microsoft Graph enable IT administrators to programmatically discover, manage, and govern Microsoft Entra tenants at scale. Modern organizations often manage multiple tenants due to mergers, acquisitions, geographic expansion, and decentralized IT models, which can lead to tenant sprawl.

[Microsoft Entra Tenant Governance](/entra/id-governance/tenant-governance/overview) helps organizations centrally manage their tenant ecosystem through cross-tenant delegated administration and governance relationships. Use these APIs to programmatically manage the following capabilities:

- Discover related tenants across your organization's tenant ecosystem.
- Establish governance relationships between governing tenant and governed tenants.
- Configure cross-tenant delegated administration to centrally manage governed tenants.
- Provision and manage multi-tenant applications across governed tenants.
- Define governance policy templates to enforce consistent governance.

## Discover related tenants

A *related tenant* is a Microsoft Entra tenant that demonstrates a verifiable connection to your tenant based on observable discovery signals. These signals are derived from real configuration and activity data, including:

- **B2B collaboration**: Cross-tenant policies, cross-tenant identity interactions, such as guest user registrations and sign-in activity.
- **Multi-tenant applications**: Applications registered in one tenant that are consented to or accessed by users in another tenant.
- **Shared billing accounts**: Tenants connected through one or more shared billing accounts.

Related tenants are identified based on observable connections between your tenant and other tenants. These connections help you discover both intentional external partnerships and unmanaged tenants in your organization.

Before you can discover related tenants, you must enable the feature through the [enableRelatedTenants](../api/tenantgovernanceservices-tenantgovernancesetting-enablerelatedtenants.md) action on the [tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md) resource.

Use the [relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) resource type and its associated methods to discover, review, and get the latest view of tenants that interact with your tenant, including aggregated metrics for associated activities.

## Manage governance relationships

A *governance relationship* is a directional connection between two Microsoft Entra tenants where one tenant (the *governing* tenant) governs another tenant (the *governed* tenant). Governance relationships enable organizations to centrally manage multiple tenants at scale for cross-tenant delegated administration, multi-tenant application management, and configuration management.

### Relationship handshake

To establish a governance relationship, both tenants participate in a three-step handshake:

1. The future **governed** tenant sends a [governance invitation](../resources/tenantgovernanceservices-governanceinvitation.md) to the future governing tenant. The future governing tenant must have enabled receiving governance invitations through the [Update tenantGovernanceSetting](../api/tenantgovernanceservices-tenantgovernancesetting-update.md) operation.
2. The future **governing** tenant sends a [governance request](../resources/tenantgovernanceservices-governancerequest.md) to the future governed tenant, which includes a selected [governance policy template](../resources/tenantgovernanceservices-governancepolicytemplate.md).
3. The future **governed** tenant reviews and accepts the request. Upon acceptance, a [governance relationship](../resources/tenantgovernanceservices-governancerelationship.md) is created.

> [!NOTE]
> Tenants can skip the invitation step when the future governing tenant identifies the future governed tenant as a related tenant through tenant discovery with a shared billing signal, or when the tenants already have an active governance relationship.

### Governance models

The following governance models are supported:

| Model | Supported | Description |
|:---|:---|:---|
| One-to-many | ✅ Yes | A tenant can govern multiple tenants. |
| Many-to-one | ✅ Yes | Multiple tenants can govern a single tenant. |
| Multi-tier | ❌ No | A tenant can't be both a governing and governed tenant. For example, if Contoso governs Fabrikam, Fabrikam can't govern another tenant. |
| Multiple | ❌ No | Multiple relationships between the same 2 tenants is not supported. |
| Cloud solution providers | ❌ No | Coexistence of CSP relationships created through Partner Center and tenant governance relationships is not supported. |

When you create a new add-on tenant from an existing tenant, Tenant Governance automatically establishes a governance relationship between the parent (governing) tenant and the new (governed) tenant using a default [governance policy template](../resources/tenantgovernanceservices-governancepolicytemplate.md). This process ensures that newly created tenants are immediately under centralized governance.

## Governance policy templates

A [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) defines the configuration for governance relationships, including delegated administration role assignments and multi-tenant applications to provision. Policy templates are reusable across governance relationships, enabling consistent governance at scale. When a governance relationship is established, the system captures and stores a policy snapshot with the relationship, preserving the policy state at the time of creation.

> [!NOTE]
> Updating a governance policy template doesn't automatically update existing relationships that were created using that template. To apply policy changes to an active relationship, you must create a new governance request.

## Configure cross-tenant delegated administration

Cross-tenant delegated administration uses granular delegated admin privileges (GDAP) technology to enable administrators from the governing tenant to manage governed tenants without creating local or B2B accounts. When a governance relationship with delegated administration is established, the system creates GDAP role assignments in the governed tenant.

A governance policy template defines which Microsoft Entra built-in roles are enabled for delegated administration. You configure this through the **delegatedAdministrationRoleAssignments** property of the **governancePolicyTemplate** resource, which specifies the security group in the governing tenant that receives the role assignments and the roles to be assigned.

Governed tenants have full visibility into governing tenant admin activity. The governed tenant's sign-in and audit logs capture all actions that delegated administrators perform.

## Manage multitenant applications within your governed ecosystem

Through governance policy templates, you can select custom, multi-tenant applications to provision across governed tenants. When a governance relationship is established, the system creates a service principal with the same permissions in the governed tenant.

This capability enables centralized application management at scale from the governing tenant, eliminating the need to manage application access on a per-tenant basis. Configure multi-tenant applications through the **multiTenantApplicationsToProvision** property of the **governancePolicyTemplate** resource.

## Maintain tenant configurations using Tenant Configuration Management APIs

In addition to the tenant governance APIs, you can use the [Tenant Configuration Management APIs](../resources/unified-tenant-configuration-management-api-overview.md) and their associated methods to maintain consistent tenant configurations for different workloads across governed tenants. This includes creating a baseline of settings such as security defaults, conditional access policies, and identity providers, then applying that baseline to governed tenants and tracking configuration drift over time.

## Audit logs

All tenant governance activities are logged in the Microsoft Entra [audit logs](../resources/directoryaudit.md) of both the governing and governed tenants, providing full visibility into governance actions and changes. This includes governance relationship creation and termination, policy template updates, delegated administration activities, and multi-tenant application provisioning.

## Related content

- [relatedTenant resource type](../resources/tenantgovernanceservices-relatedtenant.md)
- [governanceInvitation resource type](../resources/tenantgovernanceservices-governanceinvitation.md)
- [governanceRequest resource type](../resources/tenantgovernanceservices-governancerequest.md)
- [governanceRelationship resource type ](../resources/tenantgovernanceservices-governancerelationship.md)
- [governancePolicyTemplate resource type](../resources/tenantgovernanceservices-governancepolicytemplate.md)
- [tenantgovernancesetting resource type](../resources/tenantgovernanceservices-tenantgovernancesetting.md)
