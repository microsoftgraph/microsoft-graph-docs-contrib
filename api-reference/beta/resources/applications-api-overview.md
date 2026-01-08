---
title: Manage Microsoft Entra Applications Using Microsoft Graph
description: Discover API operations to register, update, and manage Microsoft Entra applications and service principals with Microsoft Graph.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Jackson-Woods
ms.date: 04/29/2025
ms.topic: concept-article
ms.localizationpriority: medium
ms.subservice: entra-applications
doc_type: conceptualPageType
#customer intent: As a developer, I want to learn how to register and manage Microsoft Entra applications programmatically using Microsoft Graph APIs so that I can automate application lifecycle management.
---

# Manage Microsoft Entra applications and service principals using Microsoft Graph

This guide gives an overview of key concepts, API use cases, and resources to help you automate application lifecycle management.

## Applications and service principals

In Microsoft Entra, an application is defined by an **application** object and a **service principal** object. There's only one application object for your application across Microsoft Entra, but there can be multiple service principal objects for your application.

The application object is located in the tenant where the app is registered. A service principal is created in the tenant where the app is registered, and in every tenant where it's installed and used. For more information, see [Application and service principal objects in Microsoft Entra ID](/entra/identity-platform/app-objects-and-service-principals).

In Microsoft Graph, an application is represented by the [application resource type](application.md), and a service principal is represented by the [servicePrincipal resource type](serviceprincipal.md). The details of the two objects can be accessed on the Microsoft Entra admin center through the **Entra ID** > **App registrations** and **Entra ID** > **Enterprise applications** menus respectively.

Service principals inherit specific properties from their associated app registrations. These properties are synchronized from the app registration, but the synchronization isn't immediate or continuous. Sometimes, updating a service principal may prompt the directory to refresh properties from the app registration, causing updates that weren't part of the original request.

## API use cases for managing applications

The following API use cases are supported for managing applications through the [application resource type](../resources/application.md) in Microsoft Graph.

| Use cases | API operations |
| -- | -- |
| Register an application and configure its basic properties | [Create application](../api/application-post-applications.md) |
| Configure properties for a registered application including:  <ul><li>Basic properties such as display name, logo, and tags</li><li>Permissions</li><li>Assign apps to users</li><li>Set the basic identifier URIs</li><li>The Microsoft accounts that the app supports</li><li>App roles</li></ul> | [Update application](../api/application-update.md) |
| Delete an application | [Delete application](../api/application-delete.md) |
| Manage deleted applications | <ul><li>[List deletedItems](../api/directory-deleteditems-list.md)</li><li>[List deletedItems owners by a user](../api/directory-deleteditems-getuserownedobjects.md)</li><li>[Get deleted item](../api/directory-deleteditems-get.md)</li><li>[Permanently delete item](../api/directory-deleteditems-delete.md)</li><li>[Restore deleted item](../api/directory-deleteditems-restore.md)</li></ul> |
| Manage password credentials for an application | <ul><li>[application: addPassword](../api/application-addpassword.md)</li><li>[application: removePassword](../api/application-removepassword.md)</li></ul> |
| Manage federated identity credentials for an application | [Start managing federated identity credentials using Microsoft Graph](../resources/federatedidentitycredentials-overview.md) |
| Manage certificate-based credentials for an application | <ul><li>[application: addKey](../api/application-addkey.md)</li><li>[application: removeKey](../api/application-removekey.md)</li><li>Update the **keyCredentials** property through the [update application](../api/application-update.md) API operation.</li></ul> |
| Manage directory extensions on applications | <ul><li>[extensionProperty resource type](../resources/extensionproperty.md) and its associated methods. For more information, see [Add custom data to resources using extensions](/graph/extensibility-overview).</li></ul> |
| Track changes to an application | <ul><li>[application: delta](../api/application-delta.md)</li><li>[directoryObject: delta](../api/directoryobject-delta.md) with the following filter: `..?$filter=isof('microsoft.graph.application')`</li></ul> |
| Manage owners | <ul><li>[List owners](../api/application-list-owners.md)</li><li>[Add owner](../api/application-post-owners.md)</li><li>[Remove owner](../api/application-delete-owners.md)</li></ul> |
| Manage publisher verification | <ul><li>[Set verifiedPublisher](../api/application-setverifiedpublisher.md)</li><li>[Unset verifiedPublisher](../api/application-unsetverifiedpublisher.md)</li></ul> | 

## API use cases for managing service principals

The following API use cases are supported for managing service principals through the [servicePrincipal resource type](../resources/serviceprincipal.md) in Microsoft Graph.

| Use cases | API operations |
|--|--|
| Register service principal | [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) |
| Configure properties for a service principal including:  <ul><li> Basic properties such as display name and logo  </li><li> Permissions  </li><li> Configure SSO mode | [Update servicePrincipal](../api/serviceprincipal-update.md)</li></ul> |
| Delete a service principal | [Delete servicePrincipal](../api/serviceprincipal-delete.md) |
| Manage deleted service principals: view, restore, or permanently delete |  <ul><li> [List deletedItems](../api/directory-deleteditems-list.md)  </li><li> [List deletedItems owned by a user](../api/directory-deleteditems-getuserownedobjects.md)  </li><li> [Get deleted item](../api/directory-deleteditems-get.md)  </li><li> [Permanently delete item](../api/directory-deleteditems-delete.md)  </li><li> [Restore deleted item](../api/directory-deleteditems-restore.md)</li></ul> |
| Manage password credentials for a service principal |  <ul><li> [servicePrincipal: addPassword](../api/serviceprincipal-addpassword.md)  </li><li> [servicePrincipal: removePassword](../api/serviceprincipal-removepassword.md)</li></ul> |
| Manage certificate-based credentials for a service principal |  <ul><li> [servicePrincipal: addKey](../api/serviceprincipal-addkey.md)  </li><li> [servicePrincipal: removeKey](../api/serviceprincipal-removekey.md)</li></ul> |
| Add a SAML token signing certificate |  <ul><li> [servicePrincipal: addTokenSigningCertificate](../api/serviceprincipal-addtokensigningcertificate.md)</li></ul> |
| Track changes to a service principal |  <ul><li> [servicePrincipal: delta](../api/serviceprincipal-delta.md)  </li><li> [directoryObject: delta](../api/directoryobject-delta.md) with the following filter: `..?$filter=isof('microsoft.graph.servicePrincipal')`</li></ul> |
| Manage owners |  <ul><li> [List owners](../api/serviceprincipal-list-owners.md)  </li><li> [Add owner](../api/serviceprincipal-post-owners.md)  </li><li> [Remove owner](../api/serviceprincipal-delete-owners.md)</li></ul> |
| Manage password-based SSO credentials (preview) |  <ul><li> [Create](../api/serviceprincipal-createpasswordsinglesignoncredentials.md), [Get](../api/serviceprincipal-getpasswordsinglesignoncredentials.md), [Update](../api/serviceprincipal-updatepasswordsinglesignoncredentials.md), [Delete](../api/serviceprincipal-deletepasswordsinglesignoncredentials.md)</li></ul> |

## Application templates

Application templates are apps available in the [Microsoft Entra app gallery](/entra/identity/enterprise-apps/overview-application-gallery). Use the [applicationTemplate resource type and its associated methods](../resources/applicationtemplate.md) to:

- Identify apps from the application gallery.  
- Identify apps by the SSO mode they support.  
- Instantiate an app and service principal from an application gallery.  

## Policies applicable to applications and service principals

| Policy description | API operations | Applies to |
|---------------------|----------------|------------|
| Manage Microsoft Entra ID Remote Desktop Services (RDS) authentication protocol | [remoteDesktopSecurityConfiguration resource type and its associated methods](../resources/remotedesktopsecurityconfiguration.md) | Service principals |
| Configure SAML tokens policy | [tokenIssuancePolicy resource type and its associated methods](../resources/tokenissuancepolicy.md) | Applications<br>Service principals |
| Configure policies for access, SAML, and ID tokens | Token lifetime policy - [tokenLifetimePolicy resource type and its associated methods](../resources/tokenlifetimepolicy.md)<br>Token issuance policy - [tokenIssuancePolicy resource type and its associated methods](../resources/tokenissuancepolicy.md) | Applications<br>Service principals |
| Manage idle session timeout for Microsoft 365 web apps, for all device types<br>**Note:** To trigger the policy only for unmanaged devices, you also need to add a Conditional Access policy. | [activityBasedTimeoutPolicy resource type and its associated methods](../resources/activitybasedtimeoutpolicy.md) | Microsoft 365 web apps |
| Manage policies for how certificates and password secrets can be used in your organization. Create tenant-wide policies or app-specific policies such as blocking the use of or restricting the lifetime of password secrets or symmetric keys and enforcing trusted certificate authorities | [Application authentication methods policies](../resources/applicationauthenticationmethodpolicy.md) | Applications |
| Manage claims mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, and the applications the policies apply to | [claimsMappingPolicy resource type and its associated methods](../resources/claimsmappingpolicy.md) | Service principals |
| Manage Home Realm Discovery (HRD) for the tenant and assignment of the policy to a service principal | [homeRealmDiscoveryPolicy resource type and its associated methods](../resources/homerealmdiscoverypolicy.md) | Service principals |
| Manage permission grant pre-approval policies | [permissionGrantPreApprovalPolicy resource type and its associated methods](../resources/permissiongrantpreapprovalpolicy.md) | Service principals |

## Identity synchronization (provisioning)

Provisioning APIs in Microsoft Graph let you automate and manage the provisioning and deprovisioning of identities in these scenarios:

- From your on-premises Active Directory to Microsoft Entra ID  
- From other cloud directories to Microsoft Entra ID  
- From Microsoft Entra ID to cloud applications like Dropbox, Salesforce, ServiceNow, and more  

For more information, see [Microsoft Entra synchronization API overview](../resources/synchronization-overview.md).  

## On-premises publishing and app proxy

On-premises publishing and application proxy let you access on-premises resources securely from the internet and use Microsoft Entra-supported capabilities like single sign-on (SSO), multifactor authentication, Conditional Access, Private Access, and two-step verification.

For more information, see [On-premises publishing profiles](/graph/api/resources/onpremisespublishingprofile-root).

## Related content

- [Quick reference guide: API operations for managing applications](/graph/tutorial-applications-basics)
- [Application management in Microsoft Entra ID](/entra/identity/enterprise-apps/what-is-application-management)
- [Tutorials for integrating applications with Microsoft Entra ID](/entra/identity/saas-apps/tutorial-list)
- [What is the Microsoft identity platform?](/entra/identity-platform/v2-overview) 