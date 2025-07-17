---
title: "Manage Microsoft Entra identity and network access capabilities by using Microsoft Graph"
description: "Microsoft Graph provides REST APIs to help manage identity and network access capabilities, most of which are available through Microsoft Entra."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.topic: overview
ms.subservice: entra-id
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw10, krbash
ms.date: 01/07/2025
---

# Manage Microsoft Entra identity and network access capabilities by using Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can manage identity and network access capabilities, most of which are available through [Microsoft Entra](/entra/fundamentals/whatis). The APIs in Microsoft Graph help you to automate identity and network access management tasks and integrate with any application, and are the programmatic alternative to the administrator portals such as the Microsoft Entra admin center.

Microsoft Entra is a family of identity and network access capabilities that are available in the following products. All these capabilities are available through Microsoft Graph APIs:
- Microsoft Entra ID that groups identity and access management (IAM) capabilities.
- Microsoft Entra ID Governance
- Microsoft Entra External ID
- Microsoft Entra Verified ID
- Microsoft Entra Permissions Management
- Microsoft Entra Internet Access and Network Access

## Manage user identities

Users are the main identities in any identity and access solution. You can manage the entire lifecycle of users in your organization, including guests, and their entitlements like licenses or group memberships, using Microsoft Graph APIs. For more information, see [Working with users in Microsoft Graph](/graph/api/resources/users).

## Manage groups

Groups are the containers that allow you to efficiently manage the entitlements for identities as a unit. For example, through a group, you can grant users access to a resource, such as a SharePoint site. Or you can grant them licenses to use a service. For more information, see [Working with groups in Microsoft Graph](/graph/api/resources/groups-overview).

## Manage applications

You can use Microsoft Graph APIs to register and manage your applications programmatically, enabling you to use Microsoft's IAM capabilities. For more information, see [Manage Microsoft Entra applications and service principals by using Microsoft Graph](/graph/api/resources/applications-api-overview).

---

## Tenant administration or directory management

A core functionality of identity and access management is managing your tenant configuration, administrative roles, and settings. Microsoft Graph provides APIs to manage your Microsoft Entra tenant for the following scenarios:

| Use cases | API operations |
|--|--|
| Manage administrative units including the following operations: <li>Create administrative units <li> Create and manage members and membership rules of administrative units <li> Assign administrator roles that are scoped to administrative units | [administrativeUnit resource type](administrativeunit.md) and its associated APIs |
| Grant, revoke, and retrieve app roles on a resource application for users, groups, or service principals | [appRoleAssignment  resource type](approleassignment.md) and its associated APIs |
| Retrieve BitLocker recovery keys | [bitlockerRecoveryKey resource type](bitlockerrecoverykey.md) and its associated APIs |
| Manage custom security attributes | See [Overview of custom security attributes using the Microsoft Graph API](custom-security-attributes-overview.md) |
| Manage deleted directory objects. The functionality to store deleted objects in a "recycle bin" is supported for the following objects: <li> Administrative units <li> Applications <li> External user profiles <li> Groups <li> Pending external user profiles <li> Service principals <li> Users | <li> [Get](../api/directory-deleteditems-get.md) or [List](../api/directory-deleteditems-list.md) deleted objects <li> [Permanently delete](../api/directory-deleteditems-delete.md) a deleted object   <li> [Restore a deleted item](../api/directory-deleteditems-restore.md) <li> [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md) |
| Manage devices in the cloud | [device resource type](device.md) and its associated APIs |
| View local administrator credential information for all device objects in Microsoft Entra ID that are enabled with Local Admin Password Solution (LAPS). This feature  is the cloud-based LAPS solution | [deviceLocalCredentialInfo resource type](devicelocalcredentialinfo.md) and its associated APIs |
| Directory objects are the core objects in Microsoft Entra ID, such as users, groups, and applications. You can use the directoryObject resource type and its associated APIs to check memberships of directory objects, track changes for multiple directory objects, or validate that a Microsoft 365 group's display name or mail nickname complies with naming policies | [directoryObject resource type](directoryobject.md) and its associated APIs |
| Administrator roles, including Microsoft Entra administrator roles, are one of the most sensitive resources in a tenant. You can manage the lifecycle of their assignment in the tenant, including creating custom roles, assigning roles, tracking changes to role assignments, and removing assignees from roles | [directoryRole resource type](directoryrole.md)  and [directoryRoleTemplate resource type](directoryroletemplate.md) and their associated APIs <br/><br/> [roleManagement resource type](rolemanagement.md) and its associated APIs (**recommended**)<br/><br/> These APIs allow you to make direct role assignments. Alternatively, you can use Privileged Identity Management APIs for [Microsoft Entra roles](privilegedidentitymanagementv3-overview.md) and [groups](privilegedidentitymanagement-for-groups-api-overview.md) to make just-in-time and time-bound role assignments, instead of direct forever active assignments. |
| Define the following configurations that can be used to customize the tenant-wide and object-specific restrictions and allowed behavior. <li> Settings for Microsoft 365 groups such as guest user access, classifications, and naming policies <li> Password rule settings such as banned password lists and lockout duration <li> Prohibited names for applications, reserved words, and blocking trademark violations <li> Custom conditional access policy URL <li> Consent policies such as user consent requests, group-specific consent, and consent for risky apps | [groupSetting resource type](groupsetting.md) and [groupSettingTemplate resource type](groupsettingtemplate.md)  and their associated APIs <br/><br/> For more information, see [Overview of group settings](/graph/group-directory-settings). |
| Domain management operations such as: <li> associating a domain with your tenant <li> retrieving DNS records <li> verifying domain ownership <li> External admin takeover of unmanaged domains <li> associating specific services with specific domains <li> deleting domains | [domain resource type](domain.md) and its associated APIs |
| Configure and manage staged rollout of specific Microsoft Entra ID features | [featureRolloutPolicy resource type](featurerolloutpolicy.md) and its associated APIs |
| Monitor licenses and subscriptions for the tenant | <li> [companySubscription resource type](companysubscription.md) and its associated APIs <li>[subscribedSku resource type](subscribedsku.md) and its associated APIs |
| Configure options that are available in Microsoft Entra Cloud Sync such as preventing accidental deletions and managing group writebacks | [onPremisesDirectorySynchronization resource type](onpremisesdirectorysynchronization.md) and its associated APIs |
| Manage the base settings for your Microsoft Entra tenant | [organization resource type](organization.md) and its associated APIs |
| Retrieve the organizational contacts that might be synchronized from on-premises directories or from Exchange Online | [orgContact resource type](orgcontact.md) and its associated APIs |
| Discover the basic details of other Microsoft Entra tenants by querying using the tenant ID or the domain name | [tenantInformation resource type](tenantinformation.md) and its associated APIs |
| Manage the delegated permissions  and their assignments to service principals in the tenant | [oAuth2PermissionGrant resource type](oauth2permissiongrant.md) and its associated APIs |

---

## Identity and sign-in

| Use cases | API operations |
|--|--|
| Configure listeners that monitor events that should trigger or invoke custom logic, typically defined outside Microsoft Entra ID | [authenticationEventListener resource type](authenticationeventlistener.md) and its associated APIs |
| Manage authentication methods that are supported in Microsoft Entra ID | See [Microsoft Entra authentication methods API overview](authenticationmethods-overview.md) and [Microsoft Entra authentication methods policies API overview](authenticationmethodspolicies-overview.md) |
| Manage the authentication methods or combinations of authentication methods that you can apply as grant control in Microsoft Entra Conditional Access | See [Microsoft Entra authentication strengths API overview](authenticationstrengths-overview.md) |
|Manage tenant-wide authorization policies such as: <li> enable SSPR for administrator accounts <li>enable self-service join for guests <li> limit who can invite guests <li> whether users can consent to risky apps <li> block the use of MSOL <li> customize the default user permissions <li> identity private preview features enabled <li>Customize the guest user permissions between *User*, *Guest User*, and *Restricted Guest User*| [authorizationPolicy resource type](authorizationpolicy.md) and its associated APIs|
| Manage the policies for certificate-based authentication in the tenant | [certificateBasedAuthConfiguration resource type](certificatebasedauthconfiguration.md) and its associated APIs |
| Manage Microsoft Entra conditional access policies | [conditionalAccessRoot resource type](conditionalaccessroot.md) and its associated APIs |
| Manage cross-tenant access settings and manage outbound restrictions, inbound restrictions, tenant restrictions, and cross-tenant synchronization of users in multitenant organizations | See [Cross-tenant access settings API overview](crosstenantaccesspolicy-overview.md) |
| Configure how and which external systems interact with Microsoft Entra ID during a user authentication session | [customAuthenticationExtension resource type](customauthenticationextension.md) and its associated APIs |
| Manage requests against user data in the organization, such as exporting personal data | [dataPolicyOperation resource type](datapolicyoperation.md) and its associated APIs |
|Force autoacceleration sign-in to skip the username entry screen and automatically forward users to federated sign-in endpoints |[homeRealmDiscoveryPolicy resource type](homerealmdiscoverypolicy.md) resource type and its associated APIs|
| Detect, investigate, and remediate identity-based risks using Microsoft Entra ID Protection and feed the data into security information and event management (SIEM) tools for further investigation and correlation | See [Use the Microsoft Graph identity protection APIs](identityprotection-overview.md) |
| Manage identity providers for Microsoft Entra ID, Microsoft Entra External ID, and Azure AD B2C tenants. You can perform the following operations: <li> Manage identity providers for external identities, including social identity providers, OIDC, Apple, SAML/WS-Fed, and built-in providers <li> Manage configuration for federated domains and token validation | [identityProviderBase resource type](identityproviderbase.md) and its associated APIs |
| Define a group of tenants belonging to your organization and streamline intra-organization cross-tenant collaboration | See [Multitenant organization API overview](multitenantorganization-overview.md) |
| Customize sign-in UIs to match your company branding, including applying branding that's based on the browser language | [organizationalBranding resource type](organizationalbranding.md) and its associated APIs |
| User flows for Microsoft Entra External ID in workforce tenants | The following resource types and their associated APIs: <li>[b2xIdentityUserFlow](b2xidentityuserflow.md) to configure the base user flow and its properties such as identity providers <li> [identityUserFlowAttribute](identityuserflowattribute.md) to manage built-in and custom user flow attributes <li> [identityUserFlowAttributeAssignment](identityuserflowattributeassignment.md) to manage user flow attribute assignments <li> [userFlowLanguageConfiguration resource type](userflowlanguageconfiguration.md) to configure custom languages for user flows |
| User flows for Microsoft Entra External ID in external tenants | The following resource types and their associated APIs: <li> [authenticationEventsFlow resource type](authenticationeventsflow.md) and its associated APIs <li> [identityUserFlowAttribute](identityuserflowattribute.md) to manage built-in and custom user flow attributes|
|Manage app consent policies and condition sets|[permissionGrantPolicy resource type](permissiongrantpolicy.md)|
|Enable or disable security defaults in Microsoft Entra ID|[identitySecurityDefaultsEnforcementPolicy resource type](identitysecuritydefaultsenforcementpolicy.md)|

---

## Identity governance

For more information, see [Overview of Microsoft Entra ID Governance using Microsoft Graph](identitygovernance-overview.md).

## Microsoft Entra External ID in external tenants

The following API use cases ar supported to customize how users interact with your customer-facing applications. For administrators, most of the features available in Microsoft Entra ID and also supported for Microsoft Entra External ID in external tenants. For example, domain management, application management, and conditional access.

| Use cases | API operations |
|--|--|
| User flows for Microsoft Entra External ID in external tenants and self-service sign-up experiences | [authenticationEventsFlow resource type](authenticationeventsflow.md) and its associated APIs |
| Manage identity providers for Microsoft Entra External ID. You can identify the identity providers that are supported or configured in the tenant | See [identityProviderBase resource type](identityproviderbase.md) and its associated APIs |
| Configuring custom URL domains in Microsoft Entra External ID in external tenants | The `CustomUrlDomain` value for the **supportedServices** property of [domain resource type](domain.md) and its associated APIs|
| Customize sign-in UIs to match your company branding, including applying branding that's based on the browser language | [organizationalBranding resource type](organizationalbranding.md) and its associated APIs |
| Manage identity providers for Microsoft Entra External ID, such as social identities | [identityProviderBase resoruce type](identityproviderbase.md) and its associated APIs |
| Manage user profiles in Microsoft Entra External ID for customers | For more information, see [Default user permissions in customer tenants](/graph/api/resources/users#default-user-permissions-in-customer-tenants) |
| Add your own business logic to the authentication experiences by integrating with systems that are external to Microsoft Entra ID| [authenticationEventListener resource type](authenticationeventlistener.md) and [customAuthenticationExtension resource type](customauthenticationextension.md) and their associated APIs |

## Partner tenant management

Microsoft Graph also provides the following identity and access capabilities for Microsoft partners in the Cloud Solution Provider (CSP), Value Added Reseller (VAR), or Advisor programs to help manage their customer tenants.


| Use cases                                           | API operations                                                |
|-----------------------------------------------------|---------------------------------------------------------------|
| Manage contracts for the partner with its customers | [contract resource type](contract.md) and its associated APIs |
| Microsoft partners can empower their customers to ensure the partners have least privileged access to their customers' tenants. This feature gives extra control to customers over their security posture while allowing them to receive support from the Microsoft resellers | See [Granular delegated admin privileges (GDAP) API overview](delegatedadminrelationships-api-overview.md) |

---

## Identity and access reports

Microsoft Entra records *every* activity in your tenant and produces reports and audit logs that you can analyze for monitoring, compliance, and troubleshooting. Records of these activities are also available through Microsoft Graph reporting and audit logs APIs, which allow you to analyze the activities with Azure Monitor logs and Log Analytics, or stream to third-party SIEM tools for further investigations. For more information, see [Identity and access reports API overview](../resources/report-identity-access.md).

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Licensing

Microsoft Entra licenses include Microsoft Entra ID Free, P1, P2, and Governance; Microsoft Entra Permissions Management; and Microsoft Entra Workload ID.

For detailed information about licensing for different features, see [Microsoft Entra ID licensing](/entra/fundamentals/licensing).

## Related content

- [Implement identity standards with Microsoft Entra ID](/entra/standards/)
- [Microsoft Entra ID Guide for independent software developers](/entra/architecture/guide-for-independent-software-developers)
- Review the [Microsoft Entra deployment plans](/entra/architecture/deployment-plans) to help you build your plan to deploy the Microsoft Entra suite of capabilities.
