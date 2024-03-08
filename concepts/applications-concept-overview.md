---
title: "Applications API overview"
description: "Microsoft Graph APIs enable you to register apps, manage app properties and configurations, secure access to on-premises apps, and synchronize identities from on-premises and SaaS apps to Microsoft Entra ID."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: sureshja
ms.localizationpriority: high
ms.subservice: "entra-applications"
ms.custom: scenarios:getting-started
ms.date: 01/23/2024
#customer intent: As a developer, I want to understand the capabilities available to manage a Microsoft Entra application programmatically using Microsoft Graph.
---

# Applications API overview

Microsoft Entra ID is an Identity and Access Management (IAM) system. A core part of its functionality is the [Microsoft identity platform](/entra/identity-platform/v2-overview), which provides authentication and authorization services for *registered applications*. Microsoft Graph APIs allow you to register and manage your application programmatically, enabling you to use Microsoft's IAM capabilities.

## Building blocks of an application in Microsoft Entra ID

A Microsoft Entra application is defined by an **application** object and a **service principal** object. There's only one application object for your application across Microsoft Entra, but there can be multiple service principal objects for your application. 

## Application registration

The first step for the Microsoft identity platform to trust your application is to create an **app registration** in your tenant. When you create an app registration, you tell Microsoft Entra ID the following information about your application:

- The type of app you're building - web app, native app, web API, or a daemon app
- Whether the app is multitenant or single-tenant
- Where the app is located
- Where to send replies after authentication
- Basic identification information for the app, and more

Use the [application resource type](/graph/api/resources/application) and its associated methods in Microsoft Graph to manage application registration objects programmatically.

## Service principal

Every registered application in Microsoft Entra ID has a corresponding service principal object in every tenant where it needs to access the tenant's resources. A service principal derives its common and default properties from the application object. The service principal allows you to define the following parameters:

- The identity providers users can use to access the app
- Who can use the app, and more

Use the [servicePrincipal resource type](/graph/api/resources/serviceprincipal) and its associated methods in Microsoft Graph to manage service principals programmatically.

## How can you manage apps using Microsoft Graph APIs?

You can use Microsoft Graph APIs for application management to perform the following tasks and more:

- For **application objects**:
  - Create and manage applications programmatically.
  - Configure basic application properties, such as the application name, logo, and owners.
  - Configure the application credentials such as the client secret, certificates, and federated credentials.
  - Allow or restrict users and groups from accessing the application.
- Get the **application templates** for apps registered in the Microsoft Entra application gallery and add an app from the gallery to your tenant.
- For **service principals**:
  - Create and manage service principals programmatically.
  - Configure custom values for the service principal, such as the name, logo, and owners.
  - Configure the application credentials such as the client secret, certificates, and federated credentials.
  - Allow or restrict users and groups from accessing the application.
  - Configure identity providers that users can authenticate with at sign-in time.
  - Configure single-sign on (SSO) options.
  - Configure claims to add to access tokens.
  - Manage the permissions that have been granted to the service principal.
- Connect **on-premises applications** to Microsoft Entra ID, secure remote access to on-premises applications, and publish on-premises applications to remote users.
- **Provision and synchronize** identities from an on-premises directory, or a SaaS application to Microsoft Entra ID.

To discover all the API operations for managing applications and service principals, see [Manage Microsoft Entra applications and service principals using Microsoft Graph](/graph/api/resources/applications-api-overview).

## Other resources

- Learn more about [the relationship between applications and service principals in Microsoft Entra ID](/entra/identity-platform/app-objects-and-service-principals#relationship-between-application-objects-and-service-principals).
- [What is application management?](/entra/identity/enterprise-apps/what-is-application-management)

## Next step

> [!div class="nextstepaction"]
> [Discover API operations for managing applications](/graph/tutorial-applications-basics)
