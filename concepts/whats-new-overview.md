---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 06/03/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## June 2026: New and generally available

### Applications | Service principal

Evaluate applications in the Microsoft Entra application gallery by using the [applicationTemplate](/graph/api/resources/applicationtemplate) resource type, including the **riskScore** and **riskFactors** properties for risk assessment.

### Files

[Upsert](/graph/api/filestoragecontainer-patch-permissions) (create or update) up to 40 permissions on a [fileStorageContainer](/graph/api/resources/filestoragecontainer) in a single request. The limit increased from 10 to 40 [permission](/graph/api/resources/permission) objects per request.

### Identity and access | Identity and sign-in

Added support for programmatic FIDO2 passkey registration. Use the [creationOptions](/graph/api/fido2authenticationmethod-creationoptions) function to get WebAuthn credential creation options, then complete registration by posting the new **publicKeyCredential** property to the [fido2AuthenticationMethod](/graph/api/resources/fido2authenticationmethod) resource.

### Users

Application permissions for the [user: translateExchangeIds](/graph/api/user-translateexchangeids) API are supported only for request URLs that identify a user in the path.

## June 2026: New in preview only

### Backup storage

Use the new full workload backup APIs to protect entire Microsoft 365 workloads (SharePoint Online, OneDrive for work or school, and Exchange Online) with minimal administrative overhead. Instead of manually selecting each item to protect, you can create a protection policy that backs up all data in a workload and then specify only the items to exclude from backup. For more information, see [exclusionUnitBase](/graph/api/resources/exclusionunitbase?view=graph-rest-beta&preserve-view=true) and [exclusionUnitBulkAdditionJob](/graph/api/resources/exclusionunitbulkadditionjob?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC

Use the [cloudPcProvisioningPolicy: apply](/graph/api/cloudpcprovisioningpolicy-apply?view=graph-rest-beta&preserve-view=true) method to apply policy settings such as `region` and `singleSignOn`. This method also supports reprovisioning for frontline shared mode Cloud PCs by using the **reservePercentage** parameter to control the percentage of Cloud PCs that remain available during the process.

### Files

[Upsert](/graph/api/filestoragecontainer-patch-permissions?view=graph-rest-beta&preserve-view=true) (create or update) up to 40 permissions on a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) in a single request. The limit increased from 10 to 40 [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) objects per request.

### Mail

Use the [user configuration API in Microsoft Graph](/graph/user-configuration-concept-overview) to build solutions that store and retrieve per-folder configuration data alongside Exchange Online mailbox content.

### Security

- Introduced [sensor migration](/graph/api/resources/security-sensormigration?view=graph-rest-beta&preserve-view=true) capabilities to migrate eligible Microsoft Defender for Identity sensors.
- Use the [Create manualAlert](/graph/api/security-alert-post-manualalert?view=graph-rest-beta&preserve-view=true) method to create a manual security alert with specified entities and metadata. The new [manualAlert](/graph/api/resources/security-manualalert?view=graph-rest-beta&preserve-view=true) resource type derives from [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) and uses the [entityDefinitionInput](/graph/api/resources/security-entitydefinitioninput?view=graph-rest-beta&preserve-view=true) complex type to specify associated entities.

### Sites and lists

Added the [sharePointReportSettings](/graph/api/resources/sharepointreportsettings?view=graph-rest-beta&preserve-view=true) resource type and related methods for managing SharePoint API usage report metrics. Use the [enableApiUsageReport](/graph/api/sharepointreportsettings-enableapiusagereport?view=graph-rest-beta&preserve-view=true) and [disableApiUsageReport](/graph/api/sharepointreportsettings-disableapiusagereport?view=graph-rest-beta&preserve-view=true) methods to control which metrics are collected and reported for your tenant.

### Tenants | Governance

Added the **groupDisplayName** property to the [delegatedAdministrationRoleAssignment](/graph/api/resources/tenantgovernanceservices-delegatedadministrationroleassignment?view=graph-rest-beta&preserve-view=true) and [delegatedAdministrationRoleAssignmentSnapshot](/graph/api/resources/tenantgovernanceservices-delegatedadministrationroleassignmentsnapshot?view=graph-rest-beta&preserve-view=true) resources. This property surfaces the display name of the security group inline, so consumers don't need to make a separate Microsoft Graph `/groups/{id}` call to resolve it.

### Users

Application permissions for the [user: translateExchangeIds](/graph/api/user-translateexchangeids?view=graph-rest-beta&preserve-view=true) API are supported only for request URLs that identify a user in the path.

## May 2026: New and generally available

### Agents

- Added the [agentUser](/graph/api/resources/agentuser) resource type and related methods for managing the lifecycle of agent user identities.
- Added [verifiedIdProfile](/graph/api/resources/verifiedidprofile) resources and related profile configuration for configuring Microsoft Entra Verified ID.

### Backup storage

Added the [emailNotificationsSetting](/graph/api/resources/emailnotificationssetting) resource and its associated methods to configure multi-admin email notifications for Microsoft 365 Backup Storage, including which administrators or custom recipients receive notifications and which event types they're notified about.

### Files

Use the [Upsert permissions](/graph/api/filestoragecontainer-patch-permissions) API to create or update up to 10 [permission](/graph/api/resources/permission) objects on a [fileStorageContainer](/graph/api/resources/filestoragecontainer) in a single request.

### Groups

Added the [ownerlessGroupPolicy](/graph/api/resources/ownerlessgrouppolicy) resource type and related methods to the v1.0 endpoint. Use this policy to configure actionable email notifications that prompt active members of ownerless Microsoft 365 groups to accept ownership when the sole owner leaves the organization or their account is disabled.

### Identity and access | Directory management

Use the [deviceRegistrationPolicy](/graph/api/resources/deviceregistrationpolicy) resource type and its related methods to manage the policy that controls device registration quota restrictions, additional authentication, and authorization policies for your Microsoft Entra tenant.

### Identity and access | Identity and sign-in

- Added the [onVerifiedIdClaimValidationCustomExtension](/graph/api/resources/onverifiedidclaimvalidationcustomextension) and [onVerifiedIdClaimValidationListener](/graph/api/resources/onverifiedidclaimvalidationlistener) resource types and associated methods to support custom logic for claim validation from Verified ID credential presentations during authentication flows through Microsoft Entra custom authentication extensions in External ID.
- Added claim validation and match-confidence capabilities to [Verified ID profiles](/graph/api/resources/verifiedidprofile), enabling stronger claim verification and more flexible matching.
- Enhanced the [x509CertificateAuthenticationMethodConfiguration](/graph/api/resources/x509certificateauthenticationmethodconfiguration) resource type with the following capabilities for certificate-based authentication (CBA):
    - Scoping CBA to specific certificate authorities and restrict which groups of users can authenticate using certificates from those CAs.
    - Controlling whether issuer hints are sent to the client to filter the certificates shown in the certificate picker.
- Updated the **targetedAuthenticationMethod** property of the [authenticationMethodsRegistrationCampaignIncludeTarget](/graph/api/resources/authenticationmethodsregistrationcampaignincludetarget) resource to support `Fido2` in addition to `microsoftAuthenticator` for authentication method registration campaigns. Organizations can now use registration campaigns to nudge users to register and sign in with phishing-resistant passkeys (FIDO2).

### Mailbox import and export

Use the mailbox import and export APIs in Microsoft Graph to build solutions that integrate with mailbox resources for data import and export scenarios. For more information, see [Overview of the mailbox import and export APIs in Microsoft Graph](/graph/mailbox-import-export-concept-overview).

### Security | Alerts and incidents

- Added the migration guide [Migrate from legacy alerts to the alerts and incidents API](/graph/alertsv1-alertsv2-migration) to help you transition your apps from the deprecated Microsoft Graph security alerts v1 API to the new alerts and incidents API.
- Extended the [alertEvidence](/graph/api/resources/security-alertevidence) base type with additional derived types to provide detailed context about various artifacts involved in [security alerts](/graph/api/resources/security-alert).
- Added the **categories** property to the [alert](/graph/api/resources/security-alert) resource.
- Deprecated the **category** property on the [alert](/graph/api/resources/security-alert) resource. Use the **categories** property instead.

### Teamwork and communications | Messaging

- [Enable migration mode on an existing channel](/graph/api/channel-startmigration) to support channel migration of external messages.
- [Enable migration mode on an existing chat](/graph/api/chat-startmigration) to support chat migration of external messages.
- [Complete chat migration by disabling migration mode](/graph/api/chat-completemigration).
- Added the **migrationMode** and **originalCreatedDateTime** properties to the [channel](/graph/api/resources/channel) resource.
- Added the **migrationMode** and **originalCreatedDateTime** properties to the [chat](/graph/api/resources/chat) resource.
- Added the [migrationMode](/graph/api/resources/channel#migrationmode-values) enum.

### Teamwork and communications | Shifts

Supports additional theme colors in the [scheduleEntityTheme](/graph/api/resources/enums) enumeration for the **theme** property on [openShiftItem](/graph/api/resources/openshiftitem), [shiftItem](/graph/api/resources/shiftitem), [shiftActivity](/graph/api/resources/shiftactivity), and [timeOffItem](/graph/api/resources/timeoffitem).

## May 2026: New in preview only

### Device and app management | Cloud PC

- Updated [retrieveCloudPcTroubleshootReports](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) on the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource to support new troubleshooting report types across tenant, configuration, user and device, and view data table scopes.
- [Create](/graph/api/virtualendpoint-post-cloudapps?view=graph-rest-beta&preserve-view=true) or [delete](/graph/api/cloudpccloudapp-delete?view=graph-rest-beta&preserve-view=true) a [cloud app](/graph/api/resources/cloudpccloudapp?view=graph-rest-beta&preserve-view=true).
- Extended the **appDetail** property on [cloudPcCloudApp](/graph/api/resources/cloudpccloudapp?view=graph-rest-beta&preserve-view=true) to support the [cloudPcAutomaticDiscoveredAppDetail](/graph/api/resources/cloudpcautomaticdiscoveredappdetail?view=graph-rest-beta&preserve-view=true) type for apps automatically discovered from the *start* menu, and the [cloudPcFilePathAppDetail](/graph/api/resources/cloudpcfilepathappdetail?view=graph-rest-beta&preserve-view=true) type for apps manually created when a file path is specified.
- Added the `iconPathInvalid` and `filePathInvalid` members as supported values for the **actionFailedErrorCode** property on the [cloudPcCloudApp](/graph/api/resources/cloudpccloudapp?view=graph-rest-beta&preserve-view=true). Use these members to indicate that the icon or file path specified for the cloud app is invalid.
- Added the [cloudPcPool](/graph/api/resources/cloudpcpool?view=graph-rest-beta&preserve-view=true) resource and its derived type [cloudPcAgentPool](/graph/api/resources/cloudpcagentpool?view=graph-rest-beta&preserve-view=true) to enable management of Cloud PC pools for agentic workloads.
- Added the [cloudPcPoolAssignment](/graph/api/resources/cloudpcpoolassignment?view=graph-rest-beta&preserve-view=true) resource and its derived type [cloudPcAgentPoolUserAssignment](/graph/api/resources/cloudpcagentpooluserassignment?view=graph-rest-beta&preserve-view=true) to manage pool assignments.
- Use `australiaNewZealand` as a new supported value in the **geographicLocationType** property of the [cloudPcSupportedRegion](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true) and [cloudPcDomainJoinConfiguration](/graph/api/resources/cloudpcdomainjoinconfiguration?view=graph-rest-beta&preserve-view=true) resources.

### Files

Use the [Upsert permissions](/graph/api/filestoragecontainer-patch-permissions?view=graph-rest-beta&preserve-view=true) API to create or update up to 10 [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) objects on a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) in a single request.

### Identity and access | Governance

Added the [approverDelegate](/graph/api/resources/approverdelegate?view=graph-rest-beta&preserve-view=true) and [identityGovernanceUserSettings](/graph/api/resources/identitygovernanceusersettings?view=graph-rest-beta&preserve-view=true) resources to enable users to delegate their approval responsibilities for access package approvals and access reviews.

### Identity and access | Identity and sign-in

- Added the **blueprintId** and **source** agent-descriptive properties to [agentRiskDetection](/graph/api/resources/agentriskdetection?view=graph-rest-beta&preserve-view=true) and [riskyAgent](/graph/api/resources/riskyagent?view=graph-rest-beta&preserve-view=true) resources.
- Added the [onVerifiedIdClaimValidationCustomExtension](/graph/api/resources/onverifiedidclaimvalidationcustomextension?view=graph-rest-beta&preserve-view=true) and [onVerifiedIdClaimValidationListener](/graph/api/resources/onverifiedidclaimvalidationlistener?view=graph-rest-beta&preserve-view=true) resource types and associated methods to support custom logic for claim validation from Verified ID credential presentations during authentication flows through Microsoft Entra custom authentication extensions in External ID.
- Updated the **targetedAuthenticationMethod** property of the [authenticationMethodsRegistrationCampaignIncludeTarget](/graph/api/resources/authenticationmethodsregistrationcampaignincludetarget?view=graph-rest-beta&preserve-view=true) resource to support `Fido2` in addition to `microsoftAuthenticator` for authentication method registration campaigns. Organizations can now use registration campaigns to nudge users to register and sign in with phishing-resistant passkeys (FIDO2).

### People and workplace intelligence | People admin settings

Use the **isVisible** property on [profileCardProperty](/graph/api/resources/profilecardproperty?view=graph-rest-beta&preserve-view=true) to indicate whether the given directory property should be shown on a user's profile card.

### People and workplace intelligence | Photo update settings

Use the [List](/graph/api/peopleadminsettings-list-photoupdatesettings?view=graph-rest-beta&preserve-view=true) and [Update](/graph/api/photoupdatesettings-update?view=graph-rest-beta&preserve-view=true) methods as the only operations for the [photoUpdateSettings](/graph/api/resources/photoupdatesettings?view=graph-rest-beta&preserve-view=true) to get and update the **photoUpdateSettings** properties.

### Reports | Identity and access reports

Added the [identityCorrelation](/graph/api/resources/identitycorrelation?view=graph-rest-beta&preserve-view=true) resource type and related methods for viewing identity correlation reports between on-premises directories and Microsoft Entra ID.

### Security | Alerts and incidents

- Use the following new resources that extend the [alertEvidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true) base type to provide detailed context about various artifacts involved in security alerts:
  - [dnsEvidence](/graph/api/resources/security-dnsevidence?view=graph-rest-beta&preserve-view=true)
  - [fileHashEvidence](/graph/api/resources/security-filehashevidence?view=graph-rest-beta&preserve-view=true)
  - [gitHubOrganizationEvidence](/graph/api/resources/security-githuborganizationevidence?view=graph-rest-beta&preserve-view=true)
  - [gitHubRepoEvidence](/graph/api/resources/security-githubrepoevidence?view=graph-rest-beta&preserve-view=true)
  - [gitHubUserEvidence](/graph/api/resources/security-githubuserevidence?view=graph-rest-beta&preserve-view=true)
  - [hostLogonSessionEvidence](/graph/api/resources/security-hostlogonsessionevidence?view=graph-rest-beta&preserve-view=true)
  - [malwareEvidence](/graph/api/resources/security-malwareevidence?view=graph-rest-beta&preserve-view=true)
  - [networkConnectionEvidence](/graph/api/resources/security-networkconnectionevidence?view=graph-rest-beta&preserve-view=true)
  - [sasTokenEvidence](/graph/api/resources/security-sastokenevidence?view=graph-rest-beta&preserve-view=true)
  - [servicePrincipalEvidence](/graph/api/resources/security-serviceprincipalevidence?view=graph-rest-beta&preserve-view=true)
  - [submissionMailEvidence](/graph/api/resources/security-submissionmailevidence?view=graph-rest-beta&preserve-view=true)
- Added the **categories** property to the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource.
- Deprecated the **category** property on the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource. Use the **categories** property instead.

### Security | Data security and compliance

Added the [contentActivityMetadata](/graph/api/resources/contentactivitymetadata?view=graph-rest-beta&preserve-view=true) resource to represent and track Data Loss Prevention (DLP) enforcement result metadata for content entries, including identifiers, timestamps, and policy statuses.

### Teamwork and communications | Apps

Use the **scopeInfo** property on [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-beta&preserve-view=true) to get the details of the scope in which the app is installed.

### Teamwork and communications | Calls and online meetings

- Use the [virtualEventTownhallRegistrationConfiguration](/graph/api/resources/virtualeventtownhallregistrationconfiguration?view=graph-rest-beta&preserve-view=true) resource to manage attendee access for town halls and enable more controlled, scalable audience management.
- Added the `capacity` property to [virtual event town hall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true). This property allows customers to specify the expected attendee size when creating or updating a town hall or session and retrieve it later. Validation ensures compliance with SKU and licensing limits, returning actionable errors when capacity exceeds entitlement.

### Tenants  | Cross-tenant access

Added the following properties and their associated complex types to the [crossTenantAccessPolicyConfigurationDefault](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault?view=graph-rest-beta&preserve-view=true) and [crossTenantAccessPolicyConfigurationPartner](/graph/api/resources/crosstenantaccesspolicyconfigurationpartner?view=graph-rest-beta&preserve-view=true) resources of cross-tenant access policy APIs to support Microsoft 365 collaboration and app service connect settings:
  - **appServiceConnectInbound** property to get or set the default or partner-specific configuration for inbound app service connect settings.
  - **m365CollaborationInbound** property to get or set the default or partner-specific configuration for inbound Microsoft 365 collaboration settings.
  - **m365CollaborationOutbound** property get or set the default or partner-specific configuration for outbound Microsoft 365 collaboration settings.

## April 2026: New and generally available

### Tenants | Configuration management

The new Tenant Configuration Management APIs in Microsoft Graph allow administrators to control and manage configuration settings across a single workload or multiple workloads within an organization. To learn more about supported use cases, see [Use the Tenant Configuration Management APIs in Microsoft Graph](/graph/api/resources/unified-tenant-configuration-management-api-overview).

### Calendars | Places

Added a known issue of RBAC in [Places update API](/graph/api/place-update): update requests may still succeed without *Exchange Administrator* role but result in unexpected behaviors.

## March 2026: New in preview only

### Applications

- Added the [approvedClientApp](/graph/api/resources/approvedclientapp) resource type for managing approved client applications for [remote desktop access](/graph/api/resources/remotedesktopsecurityconfiguration).
- Added the **managerApplications** property to the [application](/graph/api/resources/application) and [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint) resources to enable Microsoft first-party applications to be designated as managers of agent blueprints.
- Made the following changes to [application management policies](/graph/api/resources/applicationauthenticationmethodpolicy):
  - Added [identifier URI restrictions](/graph/api/resources/identifieruriconfiguration) to allow tenant administrators to enforce [secure settings of application ID URIs](/entra/identity-platform/identifier-uri-restrictions).
  - Added [excluded actors](/graph/api/resources/appmanagementpolicyactorexemptions) feature to all restrictions to allow tenant administrators to specify set of users and service principals, who are allowed to modify properties that would be otherwise restricted by the policy.

### Backup storage

- When a [protection policy is deactivated](/graph/api/protectionpolicybase-deactivate), backup activity stops immediately, no new backups are taken, and the protected resources are no longer covered by the policy. Any backups taken before deactivation are retained according to the retention policy, after which they're offboarded. You can restore data using previous restore points even after deactivation.
- A [protection policy can be deleted](/graph/api/protectionpolicybase-delete) only after it was [deactivated](/graph/api/protectionpolicybase-deactivate). When you delete a policy, all associated protection units are removed, and backup protection stops for the resources previously covered by the policy. Existing backup data is retained according to the retention policy before it's offboarded. You can restore data using previous restore points even after deletion.
- Use browse sessions to browse backed up OneDriveForBusiness and SharePoint data at a specific point in time. Create a [oneDriveForBusinessBrowseSession](/graph/api/resources/onedriveforbusinessbrowsesession) or [sharePointBrowseSession](/graph/api/resources/sharepointbrowsesession), and then call the [browse](/graph/api/onedriveforbusinessbrowsesession-browse) method to explore the backed up content.
- Use granular restore artifacts for fine-grained restores of individual items. List [granularDriveRestoreArtifact](/graph/api/resources/granulardriverestoreartifact) objects from a [oneDriveForBusinessRestoreSession](/graph/api/onedriveforbusinessrestoresession-list-granulardriverestoreartifacts), or list [granularSiteRestoreArtifact](/graph/api/resources/granularsiterestoreartifact) objects from a [sharePointRestoreSession](/graph/api/sharepointrestoresession-list-granularsiterestoreartifacts).

### Files

- Use the **height** and **width** parameters to [download a file in another format](/graph/api/driveitem-get-content-format) when `format=jpg`.
- Use the [List activities](/graph/api/itemactivity-list) API to retrieve recent activities that took place on a [drive](/graph/api/resources/drive), [list](/graph/api/resources/list), item, or within an item hierarchy.
- Added support for [sharePointGroup](/graph/api/resources/sharepointgroup) and its [members](/graph/api/resources/sharepointgroupmember) in a SharePoint Embedded container, enabling apps to work with SharePoint permission groups and manage their members.

### Identity and access | Governance

Use `approverRemove` as a new supported value for the **requestType** property of the [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest) resource. For more information, see [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest).

### Identity and access | Identity and sign-in

- Added the [verifiableCredentialsAuthenticationMethodConfiguration](/graph/api/resources/verifiablecredentialsauthenticationmethodconfiguration) resource type and related methods to the v1.0 endpoint. Use it to configure verifiable credentials as an authentication method for user sign-in.
- Added the [verifiableCredentialAuthenticationMethodTarget](/graph/api/resources/verifiablecredentialauthenticationmethodtarget) resource type to the v1.0 endpoint. Use it to specify groups and users enabled to use verifiable credentials for authentication.
- Use `riskRemediation` as part of [conditional access grant controls](/graph/api/resources/conditionalaccessgrantcontrols) to enforce a User Risk [conditional access policy](/graph/api/resources/conditionalaccesspolicy). When you select "Require risk remediation" in your policy's grant controls, Microsoft Entra ID Protection manages the appropriate remediation flow based on the threat observed and the user's authentication method. In passwordless Risky User sessions, it updates risk details with `microsoftRevokedSessions`.

### Security | Alerts and incidents

- Added the **categories** property to the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource.
- Deprecated the **category** property on the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource. Use the **categories** property instead.

### Teamwork and communications | Apps

Manage Teams apps at the channel level within a team using the following APIs:
- [List apps](/graph/api/channel-list-enabledapps) in a channel.
- [Get an app](/graph/api/teamsapp-get) in a channel.
- [Enable a new Teams app](/graph/api/channel-post-enabledapps) in a channel.
- [Disable an app](/graph/api/channel-delete-enabledapps) in a channel.

### Teamwork and communications | Messaging

Added support for `$expand` on the **items** relationship of the [teamworkSection](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) resource to retrieve a section together with its items in a single request.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
