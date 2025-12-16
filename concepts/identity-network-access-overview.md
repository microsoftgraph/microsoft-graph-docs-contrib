---
title: "Microsoft Entra Identity and Network Access Management APIs on Microsoft Graph"
description: Discover Microsoft Entra APIs to automate identity management, secure access, and build custom apps with Microsoft Graph.
author: FaithOmbongi
ms.author: ombongifaith
ms.topic: concept-article
ms.reviewer: dkershaw, krbash
ms.localizationpriority: high
ms.subservice: entra-id
ms.custom: scenarios:getting-started
ms.date: 04/25/2025
#customer intent: As a developer, I want to understand how I can use Microsoft Graph to integrate Microsoft Entra for identity and network access, and build custom apps that access services on-premises, hybrid, and in the cloud.
---

# Overview of Microsoft Entra identity and network access APIs in Microsoft Graph

The Microsoft Entra family of identity and network access solutions helps you protect identities and secure access to resources across your organization. This article introduces the Microsoft Graph APIs that enable you to automate identity and access management tasks and build custom applications that integrate with Microsoft Entra services.

To skip directly to the API reference, see [Microsoft Graph APIs for Microsoft Entra features](/graph/api/resources/identity-network-access-overview).

## Manage identities and control access to apps, data, and resources

Millions of customers and organizations use Microsoft cloud services like Microsoft 365, Microsoft Azure, and the Enterprise Mobile + Security suite of products. These services use Microsoft Entra ID as their identity and access management solution. You can also integrate Microsoft Entra ID into your custom applications.

Some Microsoft Entra ID capabilities that you can integrate to your apps using Microsoft Graph include:

- **User management** - Look up and manage user profiles, license assignment, memberships, and privileges in the tenant. Manage organizational relationships, track assignments, or create original solutions that incorporate existing organizational data. Manage authentication methods for users.
- **Group management** - Create groups to manage users and control access to resources. Use administrative units to organize groups, users, and devices for easier management and delegated administration.
- **Application management** - Register cloud applications, manage application permissions and privileges, and users who can sign in. Provide secure remote access to on-premises applications.
- **Agent management** - Manage the complete lifecycle of agents in your organization, including creation, discovery, management, governance, security rule enforcement, risk detection, and activity auditing.
- **Device management** - Register and manage devices in your organization.
- Manage **administrative roles**, which grant permission to perform specific tasks.
- Automatically provision and manage user identities and roles to other SaaS apps that users need to access.

### Tenant management

Microsoft Entra APIs for tenant management allow you to:

- Get information about an **organization** (the tenant), such as its business address, technical and notification contacts, active service subscriptions, and the domains associated with it.
- Get information about the **service SKUs** that a company is subscribed to.
- Set up **cross-tenant synchronization** to synchronize user accounts between the multiple Microsoft Entra tenants that your organization owns.
- Identify basic information about other Microsoft Entra tenants.

### Partner tenant management

Microsoft partners who resell and manage Microsoft Online Services, such as Microsoft 365 and Microsoft Azure, can view the **organization tenants** they currently manage. They can also use **granular delegated administrative privileges** for least-privilege access to the tenants they manage.

As a Microsoft partner, you can also **manage domains** associated with a tenant. Domain operations enable Microsoft partners to automate domain registration for services such as Microsoft 365.

### Protect, monitor, and audit access to critical assets

Use Microsoft Entra ID Governance APIs to ensure the right people have the right access to the right apps and services at the right time.

- Automatically grant access for internal and external users to resources using **entitlement management** APIs. Enforce separation of duties to avoid conflicting access.
- Regularly review access to groups, applications, and privileged roles in your organization. For more information, see **access reviews** APIs.
- Automate employee onboarding, internal movement, and offboarding using the **lifecycle workflows** APIs.
- Use **privileged identity management for Microsoft Entra roles APIs** to activate time-bound administrator privilege on demand, enforce mandatory justification of role activation, and multifactor authentication for actors in privileged roles.
- Use **privileged identity management for groups APIs** to govern access to groups that have privileged access to resources.

### Strengthen security for your identities

Use Microsoft Entra ID Protection APIs and Microsoft Entra Workload ID APIs to detect and mitigate identity-based risks before they cause damage.

- Use the **authentication methods APIs** to configure multifactor authentication, including phishing-resistant multifactor authentication methods, to reduce risks associated with compromised credentials.
- Enforce risk-based **conditional access policies** to adapt near real-time to risk conditions.
- Detect, report, and react to anomalies that indicate potentially compromised accounts.
- **Detect risks** for both human and nonhuman.

### Secure access to apps for external identities

Collaboration with external users like customers and business partners is a common part of daily business for many organizations. Microsoft Entra External ID APIs allow you to:

- **Invite external users** to your organization.
- For **customers**, customize their sign-in and sign-up experiences, let them bring their own identity (BYOI) to your application, and secure access to customer-facing applications.
- For **business partners**, govern **collaboration** with other Microsoft Entra ID tenants, secure their access to your applications, and manage the lifecycle of their access to resources in your organization.

## Use identity-centric configurations to strengthen network traffic

Use the **Global Secure Access APIs** for identity-centric configurations to secure access to private apps and resources, and protect access to the internet, software as a service (SaaS), and Microsoft 365 apps and resources.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [identity-zero-trust](../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->


## API reference

Looking for the API reference for this service? Find the relevant links below.

- [Manage Microsoft Entra identity and network access capabilities by using Microsoft Graph v1.0](/graph/api/resources/identity-network-access-overview?view=graph-rest-1.0&preserve-view=true)
- [Manage Microsoft Entra identity and network access capabilities by using Microsoft Graph beta](/graph/api/resources/identity-network-access-overview?view=graph-rest-beta&preserve-view=true)

## Next step

> [!div class="nextstepaction"]
> [Microsoft Graph APIs for Microsoft Entra features](/graph/api/resources/identity-network-access-overview)
