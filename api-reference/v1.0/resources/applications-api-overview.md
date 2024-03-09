---
title: "Manage Microsoft Entra applications by using Microsoft Graph"
description: "Learn how to manage the lifecycle and settings for Microsoft Entra applications and service principals programmatically using Microsoft Graph APIs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: sureshja
ms.topic: concept-article
ms.localizationpriority: medium
ms.subservice: entra-applications
doc_type: conceptualPageType

#customer intent: As a developer, I want to learn how to manage the lifecycle and settings for Microsoft Entra applications and service principals programmatically using Microsoft Graph APIs.
---

# Manage Microsoft Entra applications and service principals by using Microsoft Graph

Microsoft Entra ID is an Identity and Access Management (IAM) system. A core part of its functionality is the [Microsoft identity platform](/entra/identity-platform/v2-overview), which provides authentication and authorization services for *registered applications*. Microsoft Graph APIs allow you to register and manage your applications programmatically, enabling you to use Microsoft's IAM capabilities.

## Applications and service principals

In Microsoft Entra, an application is defined by an **application** object and a **service principal** object. There's only one application object for your application across Microsoft Entra, but there can be multiple service principal objects for your application. 

The application object is located in the tenant where the app was registered. A service principal is created in every tenant where the app is installed and used, including the tenant where the app is registered. For more information, see [Application and service principal objects in Microsoft Entra ID](/entra/identity-platform/app-objects-and-service-principals).

In Microsoft Graph, an application is represented by the [application resource type](application.md) and a service principal is represented by the [servicePrincipal resource type](serviceprincipal.md). The details of the two objects can be accessed on the Microsoft Entra admin center through the **Identity** > **Applications** > **App registrations** and **Identity** > **Applications** > **Enterprise applications** menus respectively.

## API use cases for managing applications

The following API use cases are supported for managing applications through the [application resource type](../resources/application.md) in Microsoft Graph.

| Use cases | API operations |
|--|--|
| Register an application and configure its basic properties | [Create application](../api/application-post-applications.md) |
| Configure properties for registered application including:<li> Basic properties such as display name, logo, tags<li> Permissions<li> Assign apps to users- Set the basic identifier URIs<li> The Microsoft accounts that the app supports<li> App roles | [Update application](../api/application-update.md) |
| Delete an application | [Delete application](../api/application-delete.md) |
| Manage deleted applications | <li> [List deletedItems](../api/directory-deleteditems-list.md)<li> [List deletedItems owners by a user](../api/directory-deleteditems-getuserownedobjects.md)<li> [Get deleted item](../api/directory-deleteditems-get.md)<li> [Permanently delete item](../api/directory-deleteditems-delete.md)<li> [Restore deleted item](../api/directory-deleteditems-restore.md) |
| Manage password credentials for an application | <li> [application: addPassword](../api/application-addpassword.md)<li> [application: removePassword](../api/application-removepassword.md) |
| Manage federated identity credentials for an application | [Start managing federated identity credentials using Microsoft Graph](../resources/federatedidentitycredentials-overview.md)  |
| Manage certificate-based credentials for an application | <li> [application: addKey](../api/application-addkey.md)<li> [application: removeKey](../api/application-removekey.md)<li> Update the **keyCredentials** property through the [update application](../api/application-update.md) API operation |
| Manage directory extensions on applications | <li> [extensionProperty resource type](../resources/extensionproperty.md) and its associated methods. For more information, see [Add custom data to resources using extensions](/graph/extensibility-overview) |
| Track changes to an application | <li> [application: delta](../api/application-delta.md)<li> [directoryObject: delta](../api/directoryobject-delta.md) with the following filter `..?$filter=isof('microsoft.graph.application')` |
| Manage owners | <li> [List owners](../api/application-list-owners.md)<li> [Add owner](../api/application-post-owners.md)<li> [Remove owner](../api/application-delete-owners.md) |
| Manage publisher verification | <li> [Set verifiedPublisher](../api/application-setverifiedpublisher.md)<li> [Unset verifiedPublisher](../api/application-unsetverifiedpublisher.md) |

## API use cases for managing service principals

The following API use cases are supported for managing service principals through the [servicePrincipal resource type](../resources/serviceprincipal.md) in Microsoft Graph.

| Use cases | API operations |
|--|--|
| Register service principal | [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) |
| Configure properties for a service principal including:<li> Basic properties such as display name, logo<li> Permissions<li> Configure SSO mode | [Update servicePrincipal](../api/serviceprincipal-update.md) |
| Delete a service principal | [Delete servicePrincipal](../api/serviceprincipal-delete.md) |
| Manage deleted service principals (view,restore, or permanently delete) | <li> [List deletedItems](../api/directory-deleteditems-list.md)<li> [List deletedItems owned by a user](../api/directory-deleteditems-getuserownedobjects.md)<li> [Get deleted item](../api/directory-deleteditems-get.md)<li> [Permanently delete item](../api/directory-deleteditems-delete.md)<li> [Restore deleted item](../api/directory-deleteditems-restore.md) |
| Manage password credentials for a service principal | <li> [servicePrincipal: addPassword](../api/serviceprincipal-addpassword.md)<li> [servicePrincipal: removePassword](../api/serviceprincipal-removepassword.md) |
| Manage certificate-based credentials for a service principal | <li> [servicePrincipal: addKey](../api/serviceprincipal-addkey.md)<li> [servicePrincipal: removePKey](../api/serviceprincipal-removekey.md) |
| Add a SAML token signing certificate | <li> [servicePrincipal: addTokenSigningCertificate](../api/serviceprincipal-addtokensigningcertificate.md) |
| Track changes to a service principal | <li> [servicePrincipal: delta](../api/serviceprincipal-delta.md)<li> [directoryObject: delta](../api/directoryobject-delta.md) with the following filter `..?$filter=isof('microsoft.graph.servicePrincipal')` |
| Manage owners | <li> [List owners](../api/serviceprincipal-list-owners.md)<li> [Add owner](../api/serviceprincipal-post-owners.md)<li> [Remove owner](../api/serviceprincipal-delete-owners.md) |

## Application templates

Application templates are apps that are available in the [Microsoft Entra app gallery](/entra/identity/enterprise-apps/overview-application-gallery). Use the [applicationTemplate resource type and its associated methods](../resources/applicationtemplate.md) to:

- Identify apps from the application gallery
- Identify apps by the SSO mode they support
- Instantiate an app and service principal from an application gallery

## Policies applicable to applications and service principals

| Policy description | API operations | Applies to |
|--|--|--|
| Manage Microsoft Entra ID Remote Desktop Services (RDS) authentication protocol | [remoteDesktopSecurityConfiguration resource type and its associated methods](../resources/remotedesktopsecurityconfiguration.md) | Service principals |
| Configure SAML tokens policy | [tokenIssuancePolicy resource type and its associated methods](../resources/tokenissuancepolicy.md) | Applications<br>Service principals  |
| Configure policies for access, SAML, and ID tokens | Token lifetime policy - [tokenLifetimePolicy resource type and its associated methods](../resources/tokenlifetimepolicy.md) <br><br>Token issuance policy - [tokenIssuancePolicy resource type and its associated methods](../resources/tokenissuancepolicy.md) | Applications<br>Service principals |
| Manage idle session timeout for Microsoft 365 web apps, for all device types<br><br>**Note:** To trigger the policy only for unmanaged devices, you also need to add a Conditional Access policy. | [activityBasedTimeoutPolicy resource type and its associated methods](../resources/activitybasedtimeoutpolicy.md)| Microsoft 365 web apps |
| Manage policies for how certificates and password secrets can be used in your organization. Create tenant-wide policies or app-specific policies such as blocking the use of or restricting the lifetime of password secrets or symmetric keys and enforcing trusted certificate authorities | [Application authentication methods policies](../resources/applicationauthenticationmethodpolicy.md) | Applications |
| Manage claims mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, and the applications the policies apply to | [claimsMappingPolicy resource type and its associated methods](../resources/claimsmappingpolicy.md) | Service principals |
| Manage Home Realm Discovery (HRD) for the tenant and assignment of the policy to a service principal | [homeRealmDiscoveryPolicy resource type and its associated methods](../resources/homerealmdiscoverypolicy.md) | Service principals |

## Identity synchronization (provisioning)

Provisioning APIs in Microsoft Graph allow you to automate and manage the provisioning and deprovisioning of identities in the following scenarios:

- From your on-premises Active Directory to Microsoft Entra ID
- From other cloud directories to Microsoft Entra ID
- From Microsoft Entra ID to cloud applications such as Dropbox, Salesforce, ServiceNow, and more

For more information, see [Microsoft Entra synchronization API overview](../resources/synchronization-overview.md).

## Related content

- [Quick reference guide: API operations for managing applications](/graph/tutorial-applications-basics)
- [Application management in Microsoft Entra ID](/entra/identity/enterprise-apps/what-is-application-management)
- [Tutorials for integrating applications with Microsoft Entra ID](/entra/identity/saas-apps/tutorial-list)
- [What is the Microsoft identity platform](/entra/identity-platform/v2-overview)

