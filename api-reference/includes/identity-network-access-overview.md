---
title: Manage Microsoft Entra identity and network access by using Microsoft Graph
description: Manage Microsoft Entra identity and network access by using Microsoft Graph
author: FaithOmbongi
ms.author: ombongifaith
ms.date: 12/01/2025
ms.topic: include
ms.subservice: entra-id
---

Microsoft Graph provides REST APIs to manage identity and network access capabilities, most of which are available through [Microsoft Entra](/entra/fundamentals/whatis). These APIs help you automate identity and network access management tasks, integrate with applications, and serve as the programmatic alternative to administrator portals such as the Microsoft Entra admin center.

Microsoft Entra is a family of identity and network access solutions that includes the following products. All these capabilities are available through Microsoft Graph APIs:
- Microsoft Entra ID that groups identity and access management (IAM) capabilities.
- Microsoft Entra ID Governance
- Microsoft Entra External ID
- Microsoft Entra Verified ID
- Microsoft Entra Permissions Management (deprecated)
- Microsoft Entra Internet Access and Network Access

## Manage user identities

Users are the main identities in any identity and access solution. You can manage the entire lifecycle of users in your organization, including guests, and their entitlements like licenses or group memberships, using Microsoft Graph APIs. For more information, see [Working with users in Microsoft Graph](/graph/api/resources/users).

## Manage groups

Groups are the containers that allow you to efficiently manage the entitlements for identities as a unit. For example, through a group, you can grant users access to a resource, such as a SharePoint site. Or you can grant them licenses to use a service. For more information, see [Working with groups in Microsoft Graph](/graph/api/resources/groups-overview).

## Manage applications

You can use Microsoft Graph APIs to register and manage your applications programmatically, enabling you to use Microsoft's IAM capabilities. For more information, see [Manage Microsoft Entra applications and service principals by using Microsoft Graph](/graph/api/resources/applications-api-overview).

## Manage agents (preview)

:::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only.":::

AI agents require the same identity, access, security, and governance frameworks that are applied to users, applications, and devices in your organization. For more information about using Microsoft Graph APIs to achieve these capabilities for agents, see [Microsoft Entra Agent ID APIs in Microsoft Graph overview (preview)](/graph/api/resources/agentid-platform-overview).

---

## Tenant administration or directory management

A core functionality of identity and access management is managing your tenant configuration, administrative roles, and settings. Microsoft Graph provides APIs to manage your Microsoft Entra tenant for the following scenarios:

> [!div class="mx-tableFixed"]
> | Use cases | API operations |
> |--|--|
> | Manage administrative units including the following operations: <ul><li>Create administrative units <li> Create and manage members and membership rules of administrative units <li> Assign administrator roles that are scoped to administrative units</ul> | [administrativeUnit](/graph/api/resources/administrativeunit) and its associated APIs |
> | Retrieve BitLocker recovery keys | [bitlockerRecoveryKey](/graph/api/resources/bitlockerrecoverykey) and its associated APIs |
> | Manage custom security attributes | See [Overview of custom security attributes using the Microsoft Graph API](/graph/api/resources/custom-security-attributes-overview) |
> | Manage deleted directory objects. The functionality to store deleted objects in a "recycle bin" is supported for the following objects: <ul><li> Administrative units <li> Applications <li> External user profiles :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: <li> Groups <li> Pending external user profiles :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: <li> Service principals <li> Users</ul> | <ul><li> [Get](/graph/api/directory-deleteditems-get) or [List](/graph/api/directory-deleteditems-list) deleted objects <li> [Permanently delete](/graph/api/directory-deleteditems-delete) a deleted object   <li> [Restore a deleted item](/graph/api/directory-deleteditems-restore) <li> [List deleted items owned by user](/graph/api/directory-deleteditems-getuserownedobjects)</ul> |
> | Manage devices in the cloud |<ul><li> [device](/graph/api/resources/device) and its associated APIs <li> :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: [deviceTemplate](/graph/api/resources/devicetemplate) and its associated APIs</ul>|
> | View local administrator credential information for all device objects in Microsoft Entra ID that are enabled with Local Admin Password Solution (LAPS). This feature is the cloud-based LAPS solution | [deviceLocalCredentialInfo](/graph/api/resources/devicelocalcredentialinfo) and its associated APIs |
> | Directory objects are the core objects in Microsoft Entra ID, such as users, groups, and applications. You can use the directoryObject resource type and its associated APIs to check memberships of directory objects, track changes for multiple directory objects, or validate that a Microsoft 365 group's display name or mail nickname complies with naming policies | [directoryObject](/graph/api/resources/directoryobject) and its associated APIs |
> | Manage administrator roles including the following operations: <ul><li> Create custom roles <li> Assign roles to users, groups, or service principals <li> Track changes to role assignments <li> Remove assignees from roles</ul> |The following resources and their associated APIs:<ul><li> [directoryRole](/graph/api/resources/directoryrole) and [directoryRoleTemplate](/graph/api/resources/directoryroletemplate) <li>[roleManagement](/graph/api/resources/rolemanagement) (**recommended**)</ul><br/><br/> For just-in-time and time-bound role assignments instead of direct forever active assignments, use Privileged Identity Management APIs for [Microsoft Entra roles](/graph/api/resources/privilegedidentitymanagementv3-overview) and [groups](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview) |
> | Define the following configurations that can be used to customize the tenant-wide and object-specific restrictions and allowed behavior. <ul><li> Settings for Microsoft 365 groups such as guest user access, classifications, and naming policies <li> Password rule settings such as banned password lists and lockout duration <li> Prohibited names for applications, reserved words, and blocking trademark violations <li> Custom conditional access policy URL <li> Consent policies such as user consent requests, group-specific consent, and consent for risky apps</ul> | In `beta`: [directorySetting](/graph/api/resources/directorysetting) and [directorySettingTemplate](/graph/api/resources/directorysettingtemplate)  and their associated APIs <br/> In `v1.0`: [groupSetting](/graph/api/resources/groupsetting) and [groupSettingTemplate](/graph/api/resources/groupsettingtemplate) and their associated APIs <br/><br/> For more information, see [Overview of group settings](/graph/group-directory-settings). |
> | Domain management operations such as: <ul><li> associating a domain with your tenant <li> retrieving DNS records <li> verifying domain ownership <li> External admin takeover of unmanaged domains <li> associating specific services with specific domains <li> deleting domains</ul> | [domain](/graph/api/resources/domain) and its associated APIs |
> | Manage the profile objects for external users that you're invited to collaborate via Teams. These APIs aren't similar to the invitation APIs for Microsoft Entra External ID B2B collaboration :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only.":::| [externalUserProfile](/graph/api/resources/externaluserprofile) and [pendingExternalUserProfile](/graph/api/resources/externaluserprofile) and their associated APIs |
> | Configure and manage staged rollout of specific Microsoft Entra ID features | [featureRolloutPolicy](/graph/api/resources/featurerolloutpolicy) and its associated APIs |
> | Monitor licenses and subscriptions for the tenant | <ul><li> [companySubscription](/graph/api/resources/companysubscription) and its associated APIs   <li> [subscribedSku](/graph/api/resources/subscribedsku) and its associated APIs</ul> |
> | Manage the policies for Mobile Device Management (MDM) and Mobile Application Management (MAM) autoenrollment for Microsoft Entra joined and registered devices :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | The following resources and their associated APIs: <ul><li>[mobileAppManagementPolicy](/graph/api/resources/mobileappmanagementpolicy) <li>>[mobileDeviceManagementPolicy](/graph/api/resources/mobiledevicemanagementpolicy)</ul>>  |
> | Configure options that are available in Microsoft Entra Cloud Sync such as preventing accidental deletions and managing group writebacks. | [onPremisesDirectorySynchronization](/graph/api/resources/onpremisesdirectorysynchronization) and its associated APIs |
> | Manage synchronization settings for directory objects such as users, groups, and organizational contacts between on-premises Active Directory and the cloud :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [onPremisesSyncBehavior](/graph/api/resources/onpremisessyncbehavior) and its associated APIs |
> | Manage the base settings for your Microsoft Entra tenant | [organization](/graph/api/resources/organization) and its associated APIs |
> | Manage the tenant-wide settings for your Microsoft Entra tenant, such as whether people and item insights are enabled for the organization :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [organizationSettings](/graph/api/resources/organizationsettings) and its associated APIs |
> | Retrieve the organizational contacts that might be synchronized from on-premises directories or from Exchange Online | [orgContact](/graph/api/resources/orgcontact) and its associated APIs |
> | Discover the basic details of other Microsoft Entra tenants by querying using the tenant ID or the domain name | [tenantInformation](/graph/api/resources/tenantinformation) and its associated APIs |

---

## Identity and sign-in

> [!div class="mx-tableFixed"]
> | Use cases | API operations |
> |--|--|
> | Grant, revoke, and retrieve app roles on a resource application for users, groups, or service principals | [appRoleAssignment](/graph/api/resources/approleassignment) and its associated APIs |
> | Configure listeners that monitor events that should trigger or invoke custom logic, typically defined outside Microsoft Entra ID | [authenticationEventListener](/graph/api/resources/authenticationeventlistener) and its associated APIs |
> | Manage authentication methods that are supported in Microsoft Entra ID | See [Microsoft Entra authentication methods API overview](/graph/api/resources/authenticationmethods-overview) and [Microsoft Entra authentication methods policies API overview](/graph/api/resources/authenticationmethodspolicies-overview) |
> | Manage the authentication methods or combinations of authentication methods that you can apply as grant control in Microsoft Entra Conditional Access | See [Microsoft Entra authentication strengths API overview](/graph/api/resources/authenticationstrengths-overview) |
> |Manage tenant-wide authorization policies such as: <ul><li> enable SSPR for administrator accounts <li>enable self-service join for guests <li> limit who can invite guests <li> whether users can consent to risky apps <li> block the use of MSOL <li> customize the default user permissions <li> identity private preview features enabled <li>Customize the guest user permissions between *User*, *Guest User*, and *Restricted Guest User*</ul>| [authorizationPolicy](/graph/api/resources/authorizationpolicy) and its associated APIs|
> | Customize the UI/UX in Azure AD B2C using the Identity Experience Framework (IEF) :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [trustFrameworkKeySet](/graph/api/resources/trustframeworkkeyset) and [trustFrameworkPolicy](/graph/api/resources/trustframeworkpolicy) and their associated APIs |
> | Manage the policies for certificate-based authentication in the tenant | [certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedauthconfiguration) and its associated APIs |
> | Manage Microsoft Entra Conditional Access policies, including network locations such as countries, IP addresses, and compliant networks  <br/> Evaluate the impact of Conditional Access policies before enforcing them <br/>Configure Continuous Access Evaluation (CAE), which allows access tokens to be revoked based on critical events and policy evaluation rather than relying on token expiry based on lifetime :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | The following resources and their associated APIs: <ul><li>[conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy) <li> [conditionalAccessTemplate](/graph/api/resources/conditionalaccesstemplate) <li>[authenticationContextClassReference](/graph/api/resources/authenticationcontextclassreference) <li>[namedLocation](/graph/api/resources/namedlocation) <li>[whatIfAnalysisResult](/graph/api/resources/whatifanalysisresult)<li>[continuousAccessEvaluationPolicy](/graph/api/resources/continuousaccessevaluationpolicy) </ul>|
> | Manage cross-tenant access settings and manage outbound restrictions, inbound restrictions, tenant restrictions, and cross-tenant synchronization of users in multitenant organizations | See [Cross-tenant access settings API overview](/graph/api/resources/crosstenantaccesspolicy-overview) |
> | Manage the user profiles that are shared with you or external tenants using B2B direct connect, including removing and exporting personal data :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [inboundSharedUserProfile](/graph/api/resources/inboundshareduserprofile) and [outboundSharedUserProfile](/graph/api/resources/outboundshareduserprofile) and their associated APIs |
> | Configure how and which external systems interact with Microsoft Entra ID during a user authentication session | [customAuthenticationExtension](/graph/api/resources/customauthenticationextension) and its associated APIs |
> | Manage requests against user data in the organization, such as exporting personal data | [dataPolicyOperation](/graph/api/resources/datapolicyoperation) and its associated APIs |
> | Configure the policies for managing Microsoft Entra join and Microsoft Entra register devices :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: |[deviceRegistrationPolicy](/graph/api/resources/deviceregistrationpolicy) and its associated APIs|
> | Manage the tenant-wide policy that controls whether external users can leave a Microsoft Entra tenant via self-service controls, for example, through the **organizations** menu of the **My Account** portal :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [externalIdentitiesPolicy](/graph/api/resources/externalidentitiespolicy) and its associated APIs |
> |Force autoacceleration sign-in to skip the username entry screen and automatically forward users to federated sign-in endpoints |[homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy) and its associated APIs|
> | Detect, investigate, and remediate identity-based risks using Microsoft Entra ID Protection and feed the data into security information and event management (SIEM) tools for further investigation and correlation | See [Use the Microsoft Graph identity protection APIs](/graph/api/resources/identityprotection-overview) |
> | Manage identity providers for Microsoft Entra ID, Microsoft Entra External ID, and Azure AD B2C tenants. You can perform the following operations: <ul><li> Manage identity providers for external identities, including social identity providers, OIDC, Apple, SAML/WS-Fed, and built-in providers <li> Manage configuration for federated domains and token validation</ul> | [identityProviderBase](/graph/api/resources/identityproviderbase) and its associated APIs |
> | Define a group of tenants belonging to your organization and streamline intra-organization cross-tenant collaboration | See [Multitenant organization API overview](/graph/api/resources/multitenantorganization-overview) |
> | Manage the delegated permissions  and their assignments to service principals in the tenant | [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) and its associated APIs |
> | Customize sign-in UIs to match your company branding, including applying branding that's based on the browser language | [organizationalBranding](/graph/api/resources/organizationalbranding) and its associated APIs |
> | Configure trusted certificate authorities for certificates that can be assigned to apps and service principals in the tenant. | [certificateBasedApplicationConfiguration](/graph/api/resources/certificatebasedapplicationconfiguration) and its associated APIs |
> | User flows for Microsoft Entra External ID in workforce tenants | the following resources and their associated APIs: <ul><li>[b2xIdentityUserFlow](/graph/api/resources/b2xidentityuserflow) to configure the base user flow and its properties such as identity providers <li> [identityUserFlowAttribute](/graph/api/resources/identityuserflowattribute) to manage built-in and custom user flow attributes <li> [identityUserFlowAttributeAssignment](/graph/api/resources/identityuserflowattributeassignment) to manage user flow attribute assignments <li> [userFlowLanguageConfiguration](/graph/api/resources/userflowlanguageconfiguration) to configure custom languages for user flows</ul> |
> | User flows for Azure AD B2C :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | the following resources and their associated APIs: <ul><li>[b2cIdentityUserFlow](/graph/api/resources/b2cidentityuserflow) to configure the base user flow and its properties such as identity providers <li> [identityUserFlowAttribute](/graph/api/resources/identityuserflowattribute) to manage built-in and custom user flow attributes <li> [identityUserFlowAttributeAssignment](/graph/api/resources/identityuserflowattributeassignment) to manage user flow attribute assignments <li> [userFlowLanguageConfiguration](/graph/api/resources/userflowlanguageconfiguration) to configure custom languages for user flows</ul> |
> | User flows for Microsoft Entra External ID in external tenants | the following resources and their associated APIs: <ul><li> [authenticationEventsFlow](/graph/api/resources/authenticationeventsflow) and its associated APIs <li> [identityUserFlowAttribute](/graph/api/resources/identityuserflowattribute) to manage built-in and custom user flow attributes</ul>|
> |Manage app consent policies and condition sets|[permissionGrantPolicy](/graph/api/resources/permissiongrantpolicy)|
> | Manage app consent preapproval policies :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: |[permissionGrantPreApprovalPolicy](/graph/api/resources/permissiongrantpreapprovalpolicy)|
> |Enable or disable security defaults in Microsoft Entra ID|[identitySecurityDefaultsEnforcementPolicy](/graph/api/resources/identitysecuritydefaultsenforcementpolicy)|

---

## Identity governance

For more information, see [Overview of Microsoft Entra ID Governance using Microsoft Graph](/graph/api/resources/identitygovernance-overview).

## Microsoft Entra External ID in external tenants

The following API use cases are supported to customize how users interact with your customer-facing applications. For administrators, most of the features available in Microsoft Entra ID and also supported for Microsoft Entra External ID in external tenants. For example, domain management, application management, and conditional access.

> [!div class="mx-tableFixed"]
> | Use cases | API operations |
> |--|--|
> | User flows for Microsoft Entra External ID in external tenants and self-service sign-up experiences | [authenticationEventsFlow](/graph/api/resources/authenticationeventsflow) and its associated APIs |
> | Manage identity providers for Microsoft Entra External ID. You can identify the identity providers that are supported or configured in the tenant | See [identityProviderBase](/graph/api/resources/identityproviderbase) and its associated APIs |
> | Configuring custom URL domains in Microsoft Entra External ID in external tenants | The `CustomUrlDomain` value for the **supportedServices** property of [domain](/graph/api/resources/domain) and its associated APIs|
> | Customize sign-in UIs to match your company branding, including applying branding that's based on the browser language or to apply app-based branding :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [organizationalBranding](/graph/api/resources/organizationalbranding) and its associated APIs |
> | Manage identity providers for Microsoft Entra External ID, such as social identities | [identityProviderBase](/graph/api/resources/identityproviderbase) and its associated APIs |
> | Sign in with an alias or username :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only.":::| [signInIdentifierBase](/graph/api/resources/signinidentifierbase) and its associated APIs |
> | Manage user profiles in Microsoft Entra External ID for customers | For more information, see [Default user permissions in customer tenants](/graph/api/resources/users#default-user-permissions-in-customer-tenants) |
> | Add your own business logic to the authentication experiences by integrating with systems that are external to Microsoft Entra ID| [authenticationEventListener](/graph/api/resources/authenticationeventlistener) and [customAuthenticationExtension](/graph/api/resources/customauthenticationextension) and their associated APIs |
> | Integrate with fraud protection providers to prevent fake account sign-ups during the user sign-up process. Microsoft Entra External ID supports integration with third-party fraud protection providers, such as Arkose Labs and HUMAN Security, to help prevent fake account sign-ups and bot attacks | [fraudProtectionProvider](/graph/api/resources/fraudprotectionprovider) and [onFraudProtectionLoadStartListener](/graph/api/resources/onfraudprotectionloadstartlistener) and their associated APIs |
> | Integrate with Web Application Firewall providers such as Akamai and Cloudflare :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | [webApplicationFirewallProvider](/graph/api/resources/webapplicationfirewallprovider) and its associated APIs |

## Multicloud permissions management (deprecated)

:::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: 

For more information, see [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs](/graph/api/resources/permissions-management-api-overview).

## Network access management

:::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only.":::

For more information, see [Secure access to cloud, public, and private apps using Microsoft Graph network access APIs](/graph/api/resources/networkaccess-global-secure-access-api-overview).

## Partner tenant management

Microsoft Graph also provides the following identity and access capabilities for Microsoft partners in the Cloud Solution Provider (CSP), Value Added Reseller (VAR), or Advisor programs to help manage their customer tenants.

> [!div class="mx-tableFixed"]
> | Use cases                                           | API operations                                                |
> |-----------------------------------------------------|---------------------------------------------------------------|
| Manage contracts for the partner with its customers | [contract](/graph/api/resources/contract) and its associated APIs |
| Microsoft partners can empower their customers to ensure the partners have least privileged access to their customers' tenants. This feature gives extra control to customers over their security posture while allowing them to receive support from the Microsoft resellers | See [Granular delegated admin privileges (GDAP) API overview](/graph/api/resources/delegatedadminrelationships-api-overview) |
| Get detections and security alerts for unauthorized party abuse, account takeovers, and anomalous usage of Azure subscriptions in the customer tenants that you're responsible for. :::image type="content" source="/graph/images/preview-label.png" alt-text="Available on beta only."::: | See [Use the partner security alert API in Microsoft Graph](/graph/api/resources/partner-security-partnersecurityalert-api-overview) |

## Identity and access reports

Microsoft Entra records *every* activity in your tenant and produces reports and audit logs that you can analyze for monitoring, compliance, and troubleshooting. Records of these activities are also available through Microsoft Graph reporting and audit logs APIs, which allow you to analyze the activities with Azure Monitor logs and Log Analytics, or stream to third-party SIEM tools for further investigations. For more information, see [Identity and access reports API overview](/graph/api/resources/report-identity-access).

---

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Licensing

Microsoft Entra licenses include Microsoft Entra ID Free, P1, P2, and Governance; Microsoft Entra Permissions Management; and Microsoft Entra Workload ID.

For detailed information about licensing for different features, see [Microsoft Entra ID licensing](/entra/fundamentals/licensing).

## Related content

- [Implement identity standards with Microsoft Entra ID](/entra/standards/)
- [Microsoft Entra ID Guide for independent software developers](/entra/architecture/guide-for-independent-software-developers)
- Review the [Microsoft Entra deployment plans](/entra/architecture/deployment-plans) to help you build your plan to deploy the Microsoft Entra suite of capabilities.

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Error: /resources/identity-network-access-overview.md:
        Exception processing links.
        Link Definition was null. Link text: !div class='mx-tableFixed' (Parameter 'Definition')"
  ]
}-->

