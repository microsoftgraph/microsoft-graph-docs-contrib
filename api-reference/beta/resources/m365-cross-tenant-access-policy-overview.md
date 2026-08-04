---
title: Microsoft 365 cross-tenant access policy API overview
description: Learn about the Microsoft 365 cross-tenant access policy API in Microsoft Graph and how you can use it to authorize partner access to Microsoft 365 capabilities such as calendar availability, MailTips, calendar sharing, profile card, and Places.
author: Anusree-stack
ms.author: anusreenandy
ms.localizationpriority: medium
ms.subservice: entra-sign-in
ms.custom: scenarios:getting-started
ms.date: 07/10/2026
ms.topic: concept-article
doc_type: conceptualPageType
---

# Microsoft 365 cross-tenant access policy Microsoft Graph API overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft 365 cross-tenant access policy API in Microsoft Graph lets tenant administrators authorize which Microsoft 365 capabilities — such as calendar availability, MailTips, calendar sharing, profile card, and Places — external users from a trusted partner tenant can access in the resource tenant. It extends Microsoft Entra cross-tenant access policy with granular authorization control over Microsoft 365 resources, and is the recommended evolution path for organizations moving off the legacy Organization Relationships (OrgRel) model used today for MailTips, calendar sharing, and free/busy.

Use the API to automate and standardize cross-tenant collaboration settings across partner organizations, multitenant environments, and merger or acquisition scenarios. It currently supports cross-tenant access within the same cloud and across clouds, with hybrid support planned.

> [!TIP]
> This article explains the concepts behind the API. For the request and response details of individual operations, see [API reference](#api-reference).

## Why integrate with the Microsoft 365 cross-tenant access policy API?

The API gives administrators and applications programmatic, granular control over which Microsoft 365 resources external partners can access, without relying on the legacy OrgRel model. It pairs with Microsoft Entra cross-tenant access to form a layered model: Microsoft Entra handles *authentication* (who can access your tenant), and the Microsoft 365 cross-tenant access policy handles *authorization* (which resources they can access).

### Authorize partner access with capability-level precision

Control exactly which Microsoft 365 capabilities external users from a trusted partner can use, and scope each capability to specific users, groups, or the entire tenant. Supported capabilities include:

- Profile card and photo sharing.
- Calendar availability (free/busy), with basic or limited-detail options.
- Calendar sharing, at simple, detail, or reviewer fidelity.
- MailTips shown while composing email.
- Places — room and desk booking.
- Mailbox migration between tenants (partner policy only).

Teams Shared Channels are also available between trusted tenants, but they're governed directly by Microsoft Entra B2B direct connect rather than by this API.

### Apply a consistent, two-tier policy model

Like Microsoft Entra cross-tenant access, the API uses a two-tier model. A *default policy* sets the global baseline for all external tenants, and a *partner policy* overrides that baseline for a specific tenant to enable, disable, or scope capabilities per partner. When a cross-tenant request arrives, a partner policy takes precedence over the default policy, and the system default is *disabled* for all Microsoft 365 capabilities.

### Control access as an inbound-only setting

Microsoft 365 cross-tenant access policy is an inbound control: the resource tenant that owns the data decides what to expose. Enabling a capability is equivalent to saying "external users from that partner can access this resource in my tenant." Because the control is inbound only, a tenant can enable a capability one-way. Mutual configuration is required only when both organizations want their users to access each other's resources.

### Modernize cross-tenant collaboration

The API is the recommended path away from the legacy OrgRel model for MailTips, calendar sharing, and free/busy. It's designed for organizations that collaborate with external partners through Microsoft 365 apps, operate multiple Microsoft 365 tenants, or go through mergers, acquisitions, and reorganizations that require secure cross-tenant resource sharing.

### High-level access or permission considerations

Configuring cross-tenant capabilities requires a privileged administrator role (such as Global Administrator) on the resource tenant and delegated Microsoft Graph permissions, including `Policy.ReadWrite.CrossTenantAccess` and `Policy.ReadWrite.CrossTenantCapability`. A Microsoft Entra cross-tenant access trust with the partner must already exist: most capabilities require Microsoft 365 collaboration trust, Shared Channels require B2B direct connect, and mailbox migration requires app service connect. For authentication details, see [Authentication and authorization basics](/graph/auth/auth-concepts). Configuration is available through Microsoft Graph and the Microsoft Graph PowerShell SDK, with Microsoft Admin Center support planned after general availability.

### Integration opportunities with other APIs

- **Microsoft Entra cross-tenant access.** This API builds on Microsoft Entra cross-tenant access policy, which establishes the trust and authentication layer. Changes to the Microsoft Entra trust relationship directly affect these capabilities — removing a trust invalidates the corresponding Microsoft 365 capabilities for that partner.
- **Microsoft 365 substrate APIs.** Because capabilities govern substrate resources, you can combine authorization with the calendar, Outlook, people (profile card), and Places APIs to build end-to-end cross-tenant collaboration scenarios.

## API reference

For the request and response details of individual operations, see the following resources in the Microsoft Graph beta reference.

- [crossTenantAccessPolicyConfigurationDefault resource type](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault?view=graph-rest-beta&preserve-view=true)
- [crossTenantAccessPolicyConfigurationPartner resource type](/graph/api/resources/crosstenantaccesspolicyconfigurationpartner?view=graph-rest-beta&preserve-view=true)
- [List m365Capabilities for the default policy](/graph/api/crosstenantaccesspolicyconfigurationdefault-list-m365capabilities?view=graph-rest-beta&preserve-view=true)
- [Create m365CapabilityBase for the default policy](/graph/api/crosstenantaccesspolicyconfigurationdefault-post-m365capabilities?view=graph-rest-beta&preserve-view=true)
- [List m365Capabilities for a partner](/graph/api/crosstenantaccesspolicyconfigurationpartner-list-m365capabilities?view=graph-rest-beta&preserve-view=true)
- [Create m365CapabilityBase for a partner](/graph/api/crosstenantaccesspolicyconfigurationpartner-post-m365capabilities?view=graph-rest-beta&preserve-view=true)

## Related content

- [Cross-tenant access settings API overview](crosstenantaccesspolicy-overview.md)
- [Microsoft Entra cross-tenant access overview](/entra/external-id/cross-tenant-access-overview)
- [Authentication and authorization basics](/graph/auth/auth-concepts)
