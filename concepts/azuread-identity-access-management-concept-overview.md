---
title: "Microsoft Entra identity and access API overview"
description: "Use the Microsoft Entra APIs in Microsoft Graph to manage and protect any identity and secure access to any resource on-premises, in hybrid environments, and cloud environments."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: high
ms.prod: "identity-and-access"
ms.custom: scenarios:getting-started
ms.date: 01/17/2024
#customer intent: As a developer, I want to understand how I can use Microsoft Graph to integrate Microsoft Entra for identity and network access, and build custom apps that access services on-premises, hybrid, and in the cloud.
---

# Microsoft Entra identity and access API overview

The Microsoft Entra family of identity and network access solutions help you to protect any identity and secure access to any resource. You can use the [Microsoft Entra REST APIs in Microsoft Graph](/graph/api/resources/azure-ad-overview) to automate identity and access management tasks and integrate with any application.

## Why use the Microsoft Entra APIs?

Application developers integrate with Microsoft Entra APIs through Microsoft Graph to automate operations and integrate with third-party applications for custom solutions.

Enterprise developers, for example, can use Microsoft Graph to automate administrative workflows, such as employee lifecycle from onboarding to exit, profile maintenance, license deployment, collaboration with guests, integrate with SIEM tools, and much more. Developers of consumer-facing applications on the other hand can use Microsoft Graph to integrate sign-in options, self-service registration, and account management.

## Manage user identities and control access to your apps, data, and resources

Millions of customers and organizations subscribe to Microsoft cloud services like Microsoft 365, Microsoft Azure, and the Enterprise Mobile + Security suite of products. These services use Microsoft Entra ID as their identity and access management solution. You can also integrate Microsoft Entra ID into your custom applications.

Some Microsoft Entra ID capabilities that you can integrate to your apps using Microsoft Graph include:

- **User management** - Look up and manage user profiles, license assignment, memberships, and privileges in the tenant. Manage organizational relationships, track assignments, or create original solutions that incorporate existing organizational data. Manage authentication methods for users.
- **Group management** - Create groups to manage users and control access to resources. Use administrative units to organize groups, users, and device for easier management and delegated administration.
- **Application management** - Register cloud applications, manage application permissions and privileges, and users who can sign in. Provide secure remote access to on-premises applications.
- Manage **administrative roles**, which grant permission to perform specific tasks.
- Automatically provision and manage user identities and roles to other SaaS apps that users need to access.

### Tenant management

Microsoft Entra APIs for tenant management allow you to:

- Get information about an **organization** (the tenant), such as its business address, technical and notification contacts, active service subscriptions, and the domains associated with it.
- Get information about the **service SKUs** that a company is subscribed to.
- Set up **cross-tenant synchronization** to synchronize user accounts between the multiple Microsoft Entra tenants that your organization owns.
- Identify basic information about other Microsoft Entra tenants.

### Partner tenant management

Microsoft partners that resell and manage Microsoft Online Services, such as Microsoft 365 and Microsoft Azure, can view the **organization tenants** they currently manage. They can also use **granular delegated administrative privileges** for least-privilege access to the tenants they currently manage.

As a Microsoft partner, you can also **manage domains** associated with a tenant. Domain operations enable Microsoft partners to automate domain registration for services such as Microsoft 365.

### Protect, monitor, and audit access to critical assets

Use Microsoft Entra ID Governance APIs to ensure that the right people have the right access to the right apps and services at the right time.

- Automatically grant access for internal and external users to resources using **entitlement management** APIs. Enforce separation of duties to avoid conflicting access.
- Regularly review access to groups, applications, and privileged roles in your organization. For more information, see **access reviews** APIs.
- Automate employee onboarding, internal movement, and offboarding using the **lifecycle workflows** APIs.
- Use **privileged identity management for Microsoft Entra roles APIs** to activate time-bound administrator privilege on demand, enforce mandatory justification of role activation, and multifactor authentication for actors in privileged roles.
- Use **privileged identity management for groups APIs** to govern access to groups that have privileged access to resources.

### Strengthen security for your identities

Use Microsoft Entra ID Protection APIs and Microsoft Entra Workload ID APIs to detect and mitigate identity-based risks before they cause damage.

- Use the **authentication methods APIs** Configure multifactor authentication, including phishing-resistant multifactor authentication methods, to reduce risks associated with compromised credentials.
- Enforce risk-based **conditional access policies** to adapt near real-time to risk conditions.
- Detect, report, and react to anomalies that indicate potentially compromised accounts.
- **Detect risks** for both human and nonhuman.

### Secure access to apps for external identities

Collaboration with external users like customers and business partners is a common part of daily business for many organizations. Microsoft Entra External ID APIs allow you to:

- **Invite external users** to your organization.
- For **customers**, customize their sign-in and sign up experiences, allow them to bring their own identity (BYOI) to your application, secure access to customer-facing applications.
- For **business partners**, govern **collaboration** with other Microsoft Entra ID tenants, secure their access to your applications, and manage the lifecycle of their access to resources in your organization.

## Manage permissions in multicloud deployments

Use the **Microsoft Entra permissions management APIs** to discover, remediate, and monitor permissions in multicloud infrastructures, including Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP).

## Use identity-centric configurations to strengthen your network traffic

Use the **Global Secure Access APIs** for identity-centric configurations to secure access to private apps and resources; protect access to internet, software as a service (SaaS), and Microsoft 365 apps and resources.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [identity-zero-trust](../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->


## API reference

Looking for the API reference for this service?

- [Microsoft Entra identity and access management API in Microsoft Graph v1.0](/graph/api/resources/azure-ad-overview?view=graph-rest-1.0&preserve-view=true)
- [Microsoft Entra identity and access management API in Microsoft Graph beta](/graph/api/resources/azure-ad-overview?view=graph-rest-beta&preserve-view=true)

## Next step

> [!div class="nextstepaction"]
> [Microsoft Entra REST APIs and features and the related Microsoft Graph resources](/graph/api/resources/azure-ad-overview)