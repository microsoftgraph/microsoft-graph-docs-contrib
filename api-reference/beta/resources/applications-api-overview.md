---
title: "Manage Microsoft Entra applications using Microsoft Graph"
description: "Learn how to manage the lifecycle and settings for Microsoft Entra applications and service principals programmatically using Microsoft Graph APIs."
author: FaithOmbongi
ms.reviewer: sureshja
ms.topic: concept
ms.localizationpriority: medium
ms.prod: applications
doc_type: conceptualPageType
---

# Manage Microsoft Entra applications and service principals using Microsoft Graph

Microsoft Entra ID is an Identity and Access Management (IAM) system. A core part of its functionality is the [Microsoft identity platform](/entra/identity-platform/v2-overview), which provides authentication and authorization services for *registered applications*. Microsoft Graph APIs allow you to register and manage your applications programmatically, enabling you to use Microsoft's IAM capabilities.

## Applications and service principals

In Microsoft Entra, an application is defined by an **application** object and a **service principal** object. There's only one application object for your application across Microsoft Entra, but there can be multiple service principal objects for your application. 

The application object resides in the home tenant where the app was registered. A service principal is created in every tenant where the app is installed and used, including the home tenant. For more information see [Application and service principal objects in Microsoft Entra ID](/entra/identity-platform/app-objects-and-service-principals).

In Microsoft Graph, an application is represented by the [application resource type](application.md) and a service principal is represented by the [servicePrincipal resource type](serviceprincipal.md).

## API use cases for managing applications

The following API use cases are supported for managing applications through the [application resource type](../resources/application.md) in Microsoft Graph:

| Use cases | API artifacts |
|--|--|
| Register an application and configure its basic properties | [Create application](../api/application-post-applications.md) |
| Configure properties for registered application including:<li> Basic properties such as display name, logo, tags<li> Permissions<li> Assign apps to users- Set the basic identifier URIs<li> The Microsoft accounts that the app supports<li> App roles | [Update application](../api/application-update.md) |
| Delete an application | [Delete application](../api/application-delete.md) |
| Manage deleted applications | <li> [List deletedItems](../api/directory-deleteditems-list.md)<li> [List deletedItems owners by a user](../api/directory-deleteditems-getuserownedobjects.md)<li> [Get deleted item](../api/directory-deleteditems-get.md)<li> [Permanently delete item](../api/directory-deleteditems-delete.md)<li> [Restore deleted item](../api/directory-deleteditems-restore.md) |
| Manage password credentials for an application | <li> [application: addPassword](../api/application-addpassword.md)<li> [application: removePassword](../api/application-removepassword.md) |
| Manage federated identity credentials for an application | [Start managing federated identity credentials using Microsoft Graph](../resources/federatedidentitycredentials-overview.md)  |
| Manage certificate-based credentials for an application | <li> [application: addKey](../api/application-addkey.md)<li> [application: removeKey](../api/application-removekey.md)<li> Use the [update application](../api/application-update.md) API operation to update the keyCredentials property |
| Manage directory extensions on applications | <li> [extensionProperty resource type](../api/resources/extensionproperty.md) and its associated methods. For more information, see [Add custom data to resources using extensions](/graph/extensibility-overview) |
| Track changes to an application | <li> [application: delta](../api/application-delta.md)<li> [directoryObject: delta](../api/directoryobject-delta.md) with the following filter `..?$filter=isof('microsoft.graph.application')` |
| Manage owners | <li> [List owners](../api/application-list-owners.md)<li> [Add owner](../api/application-post-owners.md)<li> [Remove owner](../api/application-delete-owners.md) |
| Manage publisher verification | <li> [Set verifiedPublisher](.../api/application-setverifiedpublisher.md)<li> [Unset verifiedPublisher](../api/application-unsetverifiedpublisher.md) |

## API use cases for managing service principals

| Register service principal | [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) |
|--|--|
| Configure properties for a service principal including:<li> Basic properties such as display name, logo<li> Permissions<li> Configure SSO mode | [Update servicePrincipal](../api/serviceprincipal-update.md) |
| Delete a service principal | [Delete servicePrincipal](../api/serviceprincipal-delete.md) |
| Manage deleted service principals (view,restore, or permanently delete) | <li> [List deletedItems](../api/directory-deleteditems-list.md)<li> [List deletedItems owners by a user](../api/directory-deleteditems-getuserownedobjects.md)<li> [Get deleted item](../api/directory-deleteditems-get.md)<li> [Permanently delete item](../api/directory-deleteditems-delete.md)<li> [Restore deleted item](../api/directory-deleteditems-restore.md) |
| Manage password credentials for a service principal | <li> [servicePrincipal: addPassword](../api/serviceprincipal-addpassword.md)<li> [servicePrincipal: removePassword](../api/serviceprincipal-removepassword.md) |
| Manage federated identity credentials for a service principal | [federatedIdentityCredentials resource type and its associated methods](../resources/federatedidentitycredentials-overview.md) |
| Manage certificate-based credentials for a service principal | <li> [servicePrincipal: addKey](../api/serviceprincipal-addkey.md)<li> [servicePrincipal: removePKey](../api/serviceprincipal-removekey.md) |
| Add a SAML token signing certificate | <li> [servicePrincipal: addTokenSigningCertificate](../api/serviceprincipal-addtokensigningcertificate.md) |
| Track changes to a service principal | <li> [servicePrincipal: delta](../api/serviceprincipal-delta.md)<li> [directoryObject: delta](../api/directoryobject-delta.md) with the following filter `..?$filter=isof('microsoft.graph.servicePrincipal')` |
| Manage owners | <li> [List owners](../api/serviceprincipal-list-owners.md)<li> [Add owner](../api/serviceprincipal-post-owners.md)<li> [Remove owner](../api/serviceprincipal-delete-owners.md) |
| Manage password-based SSO credentials (Preview) | <li> [Create](../api/serviceprincipal-createpasswordsinglesignoncredentials.md), [Get](../api/serviceprincipal-getpasswordsinglesignoncredentials.md), [Update](../api/serviceprincipal-updatepasswordsinglesignoncredentials.md), [Delete](../api/serviceprincipal-deletepasswordsinglesignoncredentials.md) |

## Policies applicable to applications and service principals

| Policy description | API facets | Applies to |
|--|--|--|
| [Preview] Manage Microsoft Entra ID Remote Desktop Services (RDS) authentication protocol | [remoteDesktopSecurityConfiguration resource type](../api/resources/remotedesktopsecurityconfiguration.md) and its associated methods | Service principals |
| Configure SAML tokens policy | [tokenIssuancePolicy resource type](../resources/tokenissuancepolicy.md) |
| Configure policies for access, SAML, and ID tokens | Token lifetime policy - [tokenLifetimePolicy resource type](../resources/tokenlifetimepolicy.md) and its associated methods<br>Token issuance policy - [tokenIssuancePolicy resource type](../resources/tokenissuancepolicy.md) | Applications<br>Service principals |
| Manage idle session timout for Microsoft 365 web apps, for all device types<br><br>**Note:** To trigger the policy only for unamaged devices, you also need to add a Conditional Access policy. | activityBasedTimeoutPolicy | Microsoft 365 web apps |
| Manage policies for how certificates and password secrets can be used in your organization. Create tenant-wide policies or app-specific policies such as blocking the use of or restrictring the lifetime of password secrets or symmetric keys and enforcing trusted certificate authorities | [Application authentication methods policies](../resources/applicationauthenticationmethodpolicy.md) | Applications |
| Manage claims mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, and the applications the policies apply to | claimsMappingPolicy | Service principals |
| Manage Home Realm Discovery (HRD) for the tenant and assignment of the policy to a service principal | homeRealmDiscoveryPolicy | Service principals |

## Identity synchronization



## On-premises publishing and app proxy

On-premises publishing and application proxy allows you to access on-premises resources securely from the internet, and also use Microsoft Entra-supported capabilities like single sign-on (SSO), multifactor authentication, Conditional Access and two-step verification.

## Related content

- [Application management in Microsoft Entra ID](/entra/identity/enterprise-apps/what-is-application-management)
- [Tutorials for integrating applications with Microsoft Entra ID](/entra/identity/saas-apps/tutorial-list)
- [What is the Microsoft identity platform](/entra/identity-platform/v2-overview)

