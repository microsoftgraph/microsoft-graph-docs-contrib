---
author: FaithOmbongi
ms.reviewer: sureshja
ms.prod: "applications"
ms.topic: include
ms.localizationpriority: high
---

In order to delegate identity and access management functions to Microsoft Entra ID, an application must be registered with a Microsoft Entra tenant. When you register your application with Microsoft Entra ID, you're creating an identity configuration for your application that allows it to integrate with Microsoft Entra ID.

## Why use applications and associated resources?

The Microsoft Graph APIs enable you to manage these resources and actions related to applications in Microsoft Entra ID:
- **Application management** - Microsoft Entra ID must be configured to integrate with an application. In other words, it needs to know what applications are using it as an identity system. The process of keeping Microsoft Entra aware of these applications, and how it should handle them, is known as application management.
- **On-premises publishing** - On-premises agents (or connectors for Application Proxy) installed by a tenant administrator can be configured to route requests to a particular published resource.
- **Service principal management** - The local representation, or application instance, of a global application object in a single tenant or directory. A service principal is a concrete instance created from the application object and inherits certain properties from that application object.
- **Synchronization** - Microsoft Entra identity synchronization (also called *provisioning*) allows you to automate the creation, maintenance, and removal of identities in the cloud.

## Application management

Application registration involves telling Microsoft Entra ID about your application, including the URL where it's located, the URL to send replies after authentication, the URI to identify your application, and more. You can use the [application APIs](/graph/api/resources/application) in Microsoft Graph to manage applications programmatically.

> [!VIDEO https://www.youtube-nocookie.com/embed/93j0MmRruFo]

For more information about applications, see the following articles:
- [Application model](/azure/active-directory/develop/application-model)
- [Application and service principal objects in Microsoft Entra ID](/azure/active-directory/develop/app-objects-and-service-principals)
- [Application types for Microsoft identity platform](/azure/active-directory/develop/v2-app-types)

For more information about application management, see the following articles:
- [What is application management?](/azure/active-directory/manage-apps/what-is-application-management)
- [Authentication flows and application scenarios](/azure/active-directory/develop/authentication-flows-app-scenarios)

## On-premises publishing (preview)

Create and manage on-premises publishing profiles, which includes the creation of on-premises agents and agent groups. You can use the [on-premises publishing APIs](/graph/api/resources/onpremisespublishingprofile-root) in Microsoft Graph to manage on-premises publishing profiles programmatically.

For more information about on-premises publishing, see the following articles:
- [Remote access to on-premises applications through Microsoft Entra application proxy](/azure/active-directory/manage-apps/application-proxy)
- [Using Microsoft Entra application proxy to publish on-premises apps for remote users](/azure/active-directory/manage-apps/what-is-application-proxy)

To learn about using the on-premises publishing APIs, see the following tutorial and its associated APIs:
- [Automate the configuration of Application Proxy using the Microsoft Graph API](/graph/application-proxy-configure-api)
    - [applicationTemplate](/graph/api/resources/applicationtemplate)
    - [application](/graph/api/resources/application)
    - [onPremisesPublishing](/graph/api/resources/onpremisespublishingprofile-root)
    - [connector](/graph/api/resources/connector)
    - [connectorGroup](/graph/api/resources/connectorgroup)
    - [servicePrincipal](/graph/api/resources/serviceprincipal)

## Service principal management

To access resources that are secured by a Microsoft Entra tenant, the entity that requires access must be represented by a security principal. You can use the [service principal APIs](/graph/api/resources/serviceprincipal) in Microsoft Graph to manage service principals programmatically.

For more information about service principals, see [Application and service principal objects in Microsoft Entra ID](/azure/active-directory/develop/app-objects-and-service-principals).

## Synchronization

You can use the [synchronization APIs](/graph/api/resources/synchronization-overview) in Microsoft Graph to manage identity synchronization programmatically, including:
- Create, start, and stop synchronization jobs
- Make changes to the synchronization schema for jobs
- Verify the current synchronization status

For more information about synchronization, see the following articles:
- [Automate user provisioning and deprovisioning to applications with Microsoft Entra ID](/azure/active-directory/app-provisioning/user-provisioning)
- [How provisioning works](/azure/active-directory/app-provisioning/how-provisioning-works)

To learn about using the synchronization APIs, see the following tutorials and their associated APIs:
- [Configure provisioning using Microsoft Graph APIs](/azure/active-directory/app-provisioning/application-provisioning-configuration-api)
    - [applicationTemplate](/graph/api/resources/applicationtemplate)
    - [synchronizationTemplate](/graph/api/resources/synchronization-synchronizationtemplate)
    - [synchronizationJob](/graph/api/resources/synchronization-synchronizationjob)
- [Automate SAML-based SSO app configuration with Microsoft Graph API](/azure/active-directory/manage-apps/application-saml-sso-configure-api)
    - [applicationTemplate](/graph/api/resources/applicationtemplate)
    - [application](/graph/api/resources/application)
    - [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy)
    - [servicePrincipal](/graph/api/resources/serviceprincipal)

## Next steps

- Try the Microsoft Graph API in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Learn about how to add authentication and authorization to your web applications and web APIs using [these samples](/azure/active-directory/develop/sample-v2-code).
