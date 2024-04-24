---
title: "Manage identity and network access by using Microsoft Graph"
description: "Microsoft Graph provides REST APIs to help manage identity and network access capabilities, most of which are available through Microsoft Entra."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: entra-id
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw10
ms.date: 04/24/2024
---

# Manage identity and network access by using Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can manage identity and network access capabilities, most of which are available through [Microsoft Entra](/entra/fundamentals/whatis). The APIs in Microsoft Graph help you to automate identity and network access management tasks and integrate with any application, an programmatic option to the administrator portals such as the Microsoft Entra admin center.

Microsoft Entra is a family of identity and network access capabilities that are available in the following products. All these capabilities are available through Microsoft Graph APIs:
- Microsoft Entra ID that groups identity and access management (IAM) capabilities.
- Microsoft Entra ID Governance
- Microsoft Entra External ID
- Microsoft Entra Verified ID
- Microsoft Entra Permissions Management
- Microsoft Entra Internet Access and Network Access

## Manage user identities

Users are the main identities in any identity and access solution. You can manage the entire lifecycle of users in your organization, as well as their entitlements like licenses or group memberships, using Microsoft Graph APIs. For more information, see [Working with users in Microsoft Graph](/graph/api/resources/users).

## Manage groups

Groups are the containers that allow you to efficiently manage the entitlements for identities as a unit. For example, through a group, you can grant users access to a resources, such as a SharePoint site. Or you can grant them licenses to use a service. For more information, see [Working with groups in Microsoft Graph](/graph/api/resources/groups-overview).

## Manage applications

You can use Microsoft Graph APIs to register and manage your applications programmatically, enabling you to use Microsoft's IAM capabilities. For more information, see [Manage Microsoft Entra applications and service principals by using Microsoft Graph](/graph/api/resources/applications-api-overview).

## Tenant administration or directory management

A core functionality of identity and access management is managing your tenant configuration, administrative roles, and settings. Microsoft Graph provides APIs to manage your Microsoft Entra tenant for the following scenarios:

| Use cases | API operations |
|-----------|----------------|
| Manage administrative units including the following operations: <li>Create administrative units <li> Create and manage members and membership rules of administrative units <li> Assign administrator roles that are scoped to administrative units |  [administrativeUnit resource type](administrativeunit.md) and its associated APIs              |
| Retrieve BitLocker recovery keys      |  [bitlockerRecoveryKey resource type](bitlockerrecoverykey.md) and its associated APIs         |
| Minitor licenses and subscriptions for the tenant     |  <li> [companySubscription resource type](companysubscription.md) and its associated APIs   <li> [subscribedSku resource type](subscribedsku.md) and its associated APIs      |
| Manage custom security attributes      |  See [Overview of custom security attributes using the Microsoft Graph API](custom-security-attributes-overview.md)         |
| Manage deleted directory objects. The functionality to store deleted objects in a "recycle bin" is supported for the following objects: <li> Administrative units <li> Applications <li> External user profiles <li> Groups <li> Pending external user profiles <li> Service principals <li> Users      |  <li> [Get](../api/directory-deleteditems-get.md) or [List](../api/directory-deleteditems-list.md) deleted objects <li> [Permanently delete](../api/directory-deleteditems-delete.md) a deleted object   <li> [Restore a deleted item](../api/directory-deleteditems-restore.md) <li> [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md)    |
| Manage devices in the cloud      |  [device resource type](device.md) and its associated APIs   |
|       |  [directoryObject resource type](directoryobject.md) and its associated APIs   |
|       |  [directoryRole resource type](directoryrole.md)  and [directoryRoleTemplate resource type](directoryroletemplate.md)and their associated APIs <li> [roleManagement resource type](rolemanagement.md) and its associated APIs   |
|       |  [directorySetting resource type](directorysetting.md) and [directorySettingTemplate resource type](directorysettingtemplate.md)  and their associated APIs   |
|       |  [domain resource type](domain.md) and its associated APIs   |
|       |  [externalUserProfile resource type](externaluserprofile.md) and [pendingExternalUserProfile resource type](externaluserprofile.md) and their associated APIs   |
|       |  [featureRolloutPolicy resource type](featurerolloutpolicy.md) and its associated APIs   |
|       |  [mobilityManagementPolicy resource type](mobilitymanagementpolicy.md) and its associated APIs   |
|       |  [onPremisesDirectorySynchronization resource type](onpremisesdirectorysynchronization.md) and its associated APIs   |
|       |  [organization resource type](organization.md) and its associated APIs   |
|       |  [organizationSettings resource type](organizationsettings.md) and its associated APIs   |
|       |  [orgContact resource type](orgcontact.md) and its associated APIs   |
|       |  [tenantInformation resource type](tenantinformation.md) and its associated APIs   |
|       |  [certificateBasedApplicationConfiguration resource type](certificatebasedapplicationconfiguration.md) and its associated APIs   |
|     | [oAuth2PermissionGrant resource type](oauth2permissiongrant.md) and its associated APIs |


## Identity and sign-in

| Use cases | API operations |
|-----------|----------------|
|     | [authenticationEventListener resource type](authenticationeventlistener.md) and its associated APIs |
|     | See [Microsoft Entra authentication methods API overview](authenticationmethods-overview.md) |
|     | See [Microsoft Entra authentication strengths API overview](authenticationstrengths-overview.md) |
|     | [certificateBasedAuthConfiguration resource type](certificatebasedauthconfiguration.md) and its associated APIs |
|     | [conditionalAccessRoot resource type](conditionalaccessroot.md) and its associated APIs |
|     | See [Cross-tenant access settings API overview](crosstenantaccesspolicy-overview.md) |
|       |  [inboundSharedUserProfile resource type](inboundshareduserprofile.md) and [outboundSharedUserProfile resource type](outboundshareduserprofile.md) and their associated APIs   |
|     | [customAuthenticationExtension resource type](customauthenticationextension.md) and its associated APIs |
|     | [dataPolicyOperation resource type](datapolicyoperation.md) and its associated APIs |
|     | [oAuth2PermissionGrant resource type](oauth2permissiongrant.md) and its associated APIs |
|     | [externalIdentitiesPolicy resource type](externalidentitiespolicy.md) and its associated APIs |
|     | See [Use the Microsoft Graph identity protection APIs](identityprotection-overview.md) |
|     | [invitation resource type](invitation.md) and its associated APIs |
|     | See [Multitenant organization API overview](multitenantorganization-overview.md) |
|     | [organizationalBranding resource type](organizationalbranding.md) and its associated APIs |
|     | [trustFrameworkKeySet resource type](trustframeworkkeyset.md) and its associated APIs |
|     | [trustFrameworkPolicy resource type](trustframeworkpolicy.md) and its associated APIs |
| User flows for Microsoft Entra External ID for workforce tenants  |  |
| User flows for Azure AD B2C   |  |
| User flows for Microsoft Entra External ID for external tenants    | [authenticationEventsFlow resource type](authenticationeventsflow.md) and its associated APIs |

## Identity governance

For more information, see [Overview of Microsoft Entra ID Governance using Microsoft Graph](identitygovernance-overview.md).

## Microsoft Entra External ID for external tenants

| Use cases | API operations |
|-----------|----------------|
| User flows for Microsoft Entra External ID for external tenants    | [authenticationEventsFlow resource type](authenticationeventsflow.md) and its associated APIs |

## Multicloud permissions management

For more information, see [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs](permissions-management-api-overview.md).

## Network access management

For more information, see [Secure access to cloud, public, and private apps using Microsoft Graph network access APIs](networkaccess-global-secure-access-api-overview.md).

## Partner tenant management

With Microsoft Graph, you can access [Microsoft Entra](/entra/fundamentals/whatis) resources to enable scenarios like managing administrator (directory) roles, inviting external users to an organization, and, if you are a [Cloud Solution Provider (CSP)](https://partner.microsoft.com/cloud-solution-provider), managing your customer's data. Microsoft Graph also provides methods apps can use, for example, to discover information about users' transitive group and role memberships.


| Use cases                                           | API operations                                                |
|-----------------------------------------------------|---------------------------------------------------------------|
| Manage contracts for the partner with its customers | [contract resource type](contract.md) and its associated APIs |
| Microsoft partners in the Cloud Solution Provider (CSP), Value Added Reseller (VAR), or Advisor programs can empower their customers to ensure the partners have least-privileged access to their customers' tenants. This feature gives additional control to customers over their security posture while allowing them to receive support from the Microsoft resellers.. | See [Granular delegated admin privileges (GDAP) API overview](delegatedadminrelationships-api-overview.md) |

------------------------------------------------------
## Common use cases

The following table lists some common use cases for Microsoft Entra resources.

| **Use cases**        | **REST resources** | **See also** |
|:-----------------|:--------|:----------|
| **Directory object and methods** | | |
| `directoryObject` is the base class that many directory resources, like users and groups, inherit from. Microsoft Graph exposes several methods that you can use to discover information about users, groups, and other directory objects. For example, you can check for transitive membership in a list of groups, return all the groups and directory roles that a directory object is a transitive member of, or get all the resources of a specified type (like user or group) from a list of generic resource IDs. | [directoryObject](../resources/directoryobject.md) | N/A |
| **Manage directory (administrator) roles, administrative units, directory settings, and policy** | | |
| Activate directory roles in a Microsoft Entra tenant and manage user memberships in directory roles. Directory roles are also known as administrator roles. | [directoryRole](../resources/directoryrole.md) <br/>[directoryRoleTemplate](../resources/directoryroletemplate.md) |[Assigning Microsoft Entra administrator roles](/azure/active-directory/active-directory-assign-admin-roles)|
| Manage administrative units. Directory roles delegate tenant-wide authority to their members. An administrator can create and manage administrative units to delegate more granularly scoped administrative authority to users. | [administrativeUnit](../resources/administrativeunit.md) | [Administrative units management in Microsoft Entra ID](/azure/active-directory/active-directory-administrative-units-management) |
| Apply predefined directory settings across a tenant or to individual resource instances. Currently, only settings for Microsoft 365 groups are supported. Directory settings control behaviors like blocked word lists for group display names, whether guest users are allowed to be group owners, and much more. | [directorySetting](../resources/directorysetting.md) <br/>[directorySettingTemplate](../resources/directorysettingtemplate.md)| [Microsoft Entra cmdlets for configuring group settings](/azure/active-directory/active-directory-accessmanagement-groups-settings-cmdlets)|
| Apply Microsoft Entra policies to applications, service principals, groups, or the entire organization. Policies for claims mapping, token issuance, token lifetime, home realm discovery and more are supported.  | [Available policies](../resources/policy-overview.md) | N/A |
| **Secure privileged access in Microsoft Entra** | | |
| Manage and monitor time-bound privileged access to directory and Azure resources for administrators and IT professionals with Privileged Identity Management (PIM). | [Privileged Identity Management API](../resources/privilegedidentitymanagement-root.md) | [What is Microsoft Entra Privileged Identity Management?](/azure/active-directory/active-directory-privileged-identity-management-configure)|
| Monitor identity risk events like users signing in from malware-infected devices or from unfamiliar locations. | [Identity Protection Service API](../resources/identityprotection-overview.md) | [Microsoft Entra ID Protection](/azure/active-directory/active-directory-identityprotection)<br/><br/>[Microsoft Entra risk events](/azure/active-directory/active-directory-reporting-risk-events) |
| **Manage devices** | | |
| Manage devices registered in the organization. Devices are registered to users and include items like laptops, desktops, tablets, and mobile phones. Devices are typically created in the cloud using the Device Registration Service or by Microsoft Intune. They're used by conditional access policies for multifactor authentication. | [device](../resources/device.md) | [Getting started with Microsoft Entra device registration](/mem/intune/enrollment/).<br/><br/>[What is Intune?](/mem/intune/fundamentals/what-is-intune)<br/><br/>[Enroll devices for management in Intune](/mem/intune/enrollment/) |
| **App management** | | |
| Manage app configuration in a developer tenant. | [application](../resources/application.md) | [Application and service principal objects in Microsoft Entra ID](/azure/active-directory/develop/active-directory-application-objects) |
| Manage apps installed in a tenant. | [servicePrinicpal](../resources/serviceprincipal.md) | [Application and service principal objects in Microsoft Entra ID](/azure/active-directory/develop/active-directory-application-objects) |
| Manage permissions consented by users and administrators on apps installed in a tenant. | [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) | N/A |
| Manage user, group, and service principal role memberships on apps installed in a tenant. | [appRoleAssignment](../resources/approleassignment.md) | N/A |
| **Partner tenant management** | | |
| Get information about partnerships with customer tenants. <br/><br/>**Note:** This applies to partner tenants only. Partner tenants are Microsoft Entra tenants that belong to Microsoft partners who are either part of the [Microsoft Cloud Solution Provider](https://partnercenter.microsoft.com/partner/programs), Office 365 Syndication, or Microsoft Advisor partner programs.| [contract](../resources/contract.md) | [Call Microsoft Graph from a Cloud Solution Provider application](/graph/auth-cloudsolutionprovider) |
| Manage domains associated with a tenant. Domain operations enable registrars to automate domain association for services such as Microsoft 365. | [domain](../resources/domain.md) | [Add a custom domain name to Microsoft Entra ID](/azure/active-directory/active-directory-domains-add-azure-portal) |
| **Tenant management** | | |
| Get information about an organization, such as its business address, technical and notification contacts, the service plans that it's subscribed to, and the domains associated with it. | [organization](../resources/organization.md) | N/A |
| Get information about the service SKUs that a company is subscribed to. | [subscribedSku](../resources/subscribedsku.md) | N/A |
| Invite external (guest) users to an organization. | [invitation](../resources/invitation.md) | [What is Microsoft Entra B2B collaboration?](/azure/active-directory/active-directory-b2b-what-is-azure-ad-b2b)|
| Manage branding for the sign-in experience of an organization. | [organizationalbranding](../resources/organizationalbranding.md) | [Add branding to your organization's Microsoft Entra sign-in page](/azure/active-directory/fundamentals/customize-branding)|
| **Access reviews** | | |
| Ensure group memberships and application access rights are correct with access reviews. | [access reviews API](../resources/accessreviews-root.md) |[Microsoft Entra access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) |
| **Consent requests** | | |
| Manage the consent request workflow for users attempting to access apps that require admin authorization.  | [Consent requests API](../resources/consentrequests-overview.md) |[Configure the admin consent workflow](/azure/active-directory/manage-apps/configure-admin-consent-workflow) |

## Licensing



## Next steps
Directory resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
