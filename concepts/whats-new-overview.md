---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 06/15/2026
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

### Identity and access | Governance

Added the **type** property to the [accessPackageResourceRole](/graph/api/resources/accesspackageresourcerole) resource to indicate whether an Azure resource role is active or eligible, enabling PIM-based role assignments for Azure resources in access packages.

### Identity and access | Identity and sign-in

Added support for programmatic FIDO2 passkey registration. Use the [creationOptions](/graph/api/fido2authenticationmethod-creationoptions) function to get WebAuthn credential creation options, then complete registration by posting the new **publicKeyCredential** property to the [fido2AuthenticationMethod](/graph/api/resources/fido2authenticationmethod) resource.

### Identity and access | Governance

- Added the [accessPackageSuggestion](/graph/api/resources/accesspackagesuggestion) resource type and related methods for discovering suggested access packages based on related people insights and assignment history. Use the [filterByCurrentUser](/graph/api/accesspackagesuggestions-filterbycurrentuser) function to retrieve personalized suggestions.
- Added the **approverInformationVisibility** property to the [accessPackageApprovalStage](/graph/api/resources/accesspackageapprovalstage) resource to control whether approver information is visible to requestors.
- Added the [endUserSettings](/graph/api/resources/endusersettings) resource type and related methods for configuring access package suggestion behavior, including related people insight levels and approver detail visibility.

### People and workplace intelligence

- Updated [Manage profile source precedence in Microsoft 365](/graph/profilepriority-configure-profilepropertysetting) to clarify supported data sources for HR and work position data, explain how source precedence affects single-value versus multi-value properties, and add guidance on correctly configuring and removing tenant-level settings using the Microsoft Graph API or PowerShell.
- Added the [People data sources in Microsoft 365](/graph/people-data-sources) concept article that describes the data sources that build the Microsoft 365 user profile, including Microsoft Entra ID, Copilot connectors, Organizational data, SharePoint, People Skills, user edits, and the API user source. The article also provides a reference table of built-in source IDs (GUIDs) and explains how source metadata appears in the profile API output.

### Security

- Added the **tenantId** property to the [userAccount](/graph/api/resources/security-useraccount) resource to provide the Entra home tenant ID for the compromised user account indicated in a [security alert](/graph/api/resources/security-alert) where the alert evidence is related to a [processEvidence](/graph/api/resources/security-processevidence), [userEvidence](/graph/api/resources/security-userevidence), or [mailboxEvidence](/graph/api/resources/security-mailboxevidence).
- Added the [alert: moveAlerts](/graph/api/security-alert-movealerts) and [incident: mergeIncidents](/graph/api/security-incident-mergeincidents) actions to support moving alerts and merging incidents in Microsoft Defender.
- Added the [correlationReason](/graph/api/resources/security-correlationreason) enumeration and [mergeResponse](/graph/api/resources/security-mergeresponse) resource type.

### Teamwork and communications | Shift management

The **timeZone** property of the [schedule](/graph/api/resources/schedule) resource must be set to an IANA time zone name, such as `America/Chicago` or `Europe/London`. For more information, see [Create or replace schedule](/graph/api/team-put-schedule).

### Users

Application permissions for the [user: translateExchangeIds](/graph/api/user-translateexchangeids) API are supported only for request URLs that identify a user in the path.

## June 2026: New in preview only

### Security | Data security and compliance

Added the [policyTipAction](/graph/api/resources/policytipaction?view=graph-rest-beta&preserve-view=true) resource type and the `policyTip` member to the **dlpAction** enumeration. This enables applications to receive policy tip guidance as a standalone action when DLP policies are triggered through the processContent and protectionScopes APIs.

### Backup storage

Use the new full workload backup APIs to protect entire Microsoft 365 workloads (SharePoint Online, OneDrive for work or school, and Exchange Online) with minimal administrative overhead. Instead of manually selecting each item to protect, you can create a protection policy that backs up all data in a workload and then specify only the items to exclude from backup. For more information, see [exclusionUnitBase](/graph/api/resources/exclusionunitbase?view=graph-rest-beta&preserve-view=true) and [exclusionUnitBulkAdditionJob](/graph/api/resources/exclusionunitbulkadditionjob?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

Use the **isRegistrationRequired** property on the [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) resources to specify if attendees must complete the registration flow before they can attend.

### Device and app management | Cloud PC

Use the [cloudPcProvisioningPolicy: apply](/graph/api/cloudpcprovisioningpolicy-apply?view=graph-rest-beta&preserve-view=true) method to apply policy settings such as `region` and `singleSignOn`. This method also supports reprovisioning for frontline shared mode Cloud PCs by using the **reservePercentage** parameter to control the percentage of Cloud PCs that remain available during the process.

### Files

[Upsert](/graph/api/filestoragecontainer-patch-permissions?view=graph-rest-beta&preserve-view=true) (create or update) up to 40 permissions on a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) in a single request. The limit increased from 10 to 40 [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) objects per request.

### Identity and access | Directory management

Added redirect URI validation and restriction capabilities to [tenant app management policies](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true), allowing tenant administrators to control redirect URI schemes, domains, and wildcard usage. Use the **redirectUris** property -> [redirectUriConfiguration](/graph/api/resources/redirecturiconfiguration?view=graph-rest-beta&preserve-view=true) resource and its associated configuration resources to manage these restrictions through the [appManagementApplicationConfiguration](/graph/api/resources/appmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true) and [customAppManagementApplicationConfiguration](/graph/api/resources/customappmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true) resources.

### Identity and access | Governance

- Added reviewer delegation support to the [accessReviewInstance: filterByCurrentUser](/graph/api/accessreviewinstance-filterbycurrentuser?view=graph-rest-beta&preserve-view=true) API for access reviews.
- Added provisioning workflow support to [lifecycle workflows](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true). Use the `activateAndWait` action to run workflows synchronously for non-user subjects such as provisioning objects.

### Mail

Use the [user configuration API in Microsoft Graph](/graph/user-configuration-concept-overview) to build solutions that store and retrieve per-folder configuration data alongside Exchange Online mailbox content.

Introduced programmatic management of personal distribution lists in user mailboxes through the [distributionList](/graph/api/resources/distributionlist?view=graph-rest-beta&preserve-view=true) and [distributionListMember](/graph/api/resources/distributionlistmember?view=graph-rest-beta&preserve-view=true) resource types. You can now:
- Create, read, update, and delete distribution lists in a user's mailbox
- Add and remove members from distribution lists
- Retrieve expanded member information with resolved contact details and recipient types
- List all distribution lists owned by a user

Personal distribution lists enable users to group email recipients together and send messages to all members at once without entering each address individually.

### Security

- Introduced [sensor migration](/graph/api/resources/security-sensormigration?view=graph-rest-beta&preserve-view=true) capabilities to migrate eligible Microsoft Defender for Identity sensors.
- Use the [Create manualAlert](/graph/api/security-alert-post-manualalert?view=graph-rest-beta&preserve-view=true) method to create a manual security alert with specified entities and metadata. The new [manualAlert](/graph/api/resources/security-manualalert?view=graph-rest-beta&preserve-view=true) resource type derives from [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) and uses the [entityDefinitionInput](/graph/api/resources/security-entitydefinitioninput?view=graph-rest-beta&preserve-view=true) complex type to specify associated entities.
- Added the **tenantId** property to the [userAccount](/graph/api/resources/security-useraccount?view=graph-rest-beta&preserve-view=true) resource to provide the Entra home tenant ID for the compromised user account indicated in a [security alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) where the alert evidence is related to a [processEvidence](/graph/api/resources/security-processevidence?view=graph-rest-beta&preserve-view=true), [userEvidence](/graph/api/resources/security-userevidence?view=graph-rest-beta&preserve-view=true), or [mailboxEvidence](/graph/api/resources/security-mailboxevidence?view=graph-rest-beta&preserve-view=true).
- Updated the [custom detection rules API](/graph/api/resources/security-detectionrule?view=graph-rest-beta&preserve-view=true) in Microsoft 365 Defender with new capabilities, including: Infrastructure-as-code (IaC) support through user-defined IDs, custom run frequency, flexible entity mapping, custom alert details, and configurable response actions.

### Sites and lists

Added the [sharePointReportSettings](/graph/api/resources/sharepointreportsettings?view=graph-rest-beta&preserve-view=true) resource type and related methods for managing SharePoint API usage report metrics. Use the [enableApiUsageReport](/graph/api/sharepointreportsettings-enableapiusagereport?view=graph-rest-beta&preserve-view=true) and [disableApiUsageReport](/graph/api/sharepointreportsettings-disableapiusagereport?view=graph-rest-beta&preserve-view=true) methods to control which metrics are collected and reported for your tenant.

### Tasks and plans

Added support for tracking task history in Planner. Use the [plannerHistoryItem](/graph/api/resources/plannerhistoryitem?view=graph-rest-beta&preserve-view=true) resource and [List historyItems](/graph/api/plannerplan-list-historyitems?view=graph-rest-beta&preserve-view=true) method to retrieve the history of changes made to tasks within a plan. The [taskHistoryItem](/graph/api/resources/taskhistoryitem?view=graph-rest-beta&preserve-view=true) resource provides snapshots of task states before and after each change through [plannerTaskData](/graph/api/resources/plannertaskdata?view=graph-rest-beta&preserve-view=true) and [plannerTaskDetailsData](/graph/api/resources/plannertaskdetailsdata?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

- Use the **meetingType** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to determine whether a meeting is ad hoc, scheduled, recurring, a broadcast, or a *Meet now* session. The property is defined on the [onlineMeetingBase](/graph/api/resources/onlinemeetingbase?view=graph-rest-beta&preserve-view=true) resource and uses the [onlineMeetingType](/graph/api/resources/onlinemeetingbase?view=graph-rest-beta&preserve-view=true#onlinemeetingtype-values) enumeration.
- Use the **cloudVideoInteropInfo** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to get the conferencing device integration settings for [Cloud Video Interop](/microsoftteams/cloud-video-interop).

### Teamwork and communications | Shift management

The **timeZone** property of the [schedule](/graph/api/resources/schedule?view=graph-rest-beta&preserve-view=true) resource must be set to an IANA time zone name, such as `America/Chicago` or `Europe/London`. For more information, see [Create or replace schedule](/graph/api/team-put-schedule?view=graph-rest-beta&preserve-view=true).‎

### Tenants | Cross-tenant migration

[Validate](/graph/api/crosstenantmigrationjob-validate?view=graph-rest-beta&preserve-view=true) and [migrate](/graph/api/crosstenantmigrationjob-migrate?view=graph-rest-beta&preserve-view=true) a [cross-tenant migration job](/graph/api/resources/crosstenantmigrationjob?view=graph-rest-beta&preserve-view=true) asynchronously. A previously created job must pass validation before migration can start.

### Tenants | Tenant governance

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

- Use the [Upsert permissions](/graph/api/filestoragecontainer-patch-permissions) API to create or update up to 10 [permission](/graph/api/resources/permission) objects on a [fileStorageContainer](/graph/api/resources/filestoragecontainer) in a single request.
- Use the [Get fileStorageContainer permission](/graph/api/filestoragecontainer-get-permissions) API to get a specific [permission](/graph/api/resources/permission) from a [fileStorageContainer](/graph/api/resources/filestoragecontainer) object.
- Added the **@microsoft.graph.conflictBehavior** annotation parameter to the [Create permission](/graph/api/filestoragecontainer-post-permissions) method. Use `fail` to return a `409 Conflict` response code when the identity exists with a different role, or `replace` to update the existing role.

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

### People and workplace intelligence | People admin settings

Use the **isVisible** property on [profileCardProperty](/graph/api/resources/profilecardproperty) to indicate whether the given directory property should be shown on a user’s profile card.

### Security | Alerts and incidents

- Added the migration guide [Migrate from legacy alerts to the alerts and incidents API](/graph/alertsv1-alertsv2-migration) to help you transition your apps from the deprecated Microsoft Graph security alerts v1 API to the new alerts and incidents API.
- Extended the [alertEvidence](/graph/api/resources/security-alertevidence) base type with additional derived types to provide detailed context about various artifacts involved in [security alerts](/graph/api/resources/security-alert).
- Added support for the **microsoftSecurityForAI** service source for [security alerts](/graph/api/resources/security-alert).
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

- Use the [Upsert permissions](/graph/api/filestoragecontainer-patch-permissions?view=graph-rest-beta&preserve-view=true) API to create or update up to 10 [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) objects on a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) in a single request.
- Added `/storage/fileStorage/containers/{containerId}/permissions(email='{email}')` and `/storage/fileStorage/containers/{containerId}/permissions(userPrincipalName='{userPrincipalName}')` as supported endpoints for the [Update fileStorageContainer permission](/graph/api/filestoragecontainer-update-permissions?view=graph-rest-beta&preserve-view=true) and [Delete fileStorageContainer permission](/graph/api/filestoragecontainer-delete-permissions?view=graph-rest-beta&preserve-view=true) APIs. Use either the permission ID or the user's **email** or **userPrincipalName** to target a permission.
- Use the [Get fileStorageContainer permission](/graph/api/filestoragecontainer-get-permissions?view=graph-rest-beta&preserve-view=true) API to get a specific [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) from a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) object by using either the permission ID or the user's **email** or **userPrincipalName** to target a permission.
- Added the **@microsoft.graph.conflictBehavior** annotation parameter to the [Create permission](/graph/api/filestoragecontainer-post-permissions?view=graph-rest-beta&preserve-view=true) method. Use `fail` to return a `409 Conflict` response code when the identity exists with a different role, or `replace` to update the existing role.

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

- Added the [identityCorrelation](/graph/api/resources/identitycorrelation?view=graph-rest-beta&preserve-view=true) resource type and related methods for viewing identity correlation reports between on-premises directories and Microsoft Entra ID.
- Added the `passwordSubmit` member to the [authenticationEventType](/graph/api/resources/enums?view=graph-rest-beta&preserve-view=true#authenticationeventtype-values) enumeration, surfaced through [appliedAuthenticationEventListener](/graph/api/resources/appliedauthenticationeventlistener?view=graph-rest-beta&preserve-view=true), to identify password-submission events in sign-in flows.

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
- Added the **microsoftSecurityForAI** member to the **serviceSource** enumeration type for the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource to identify alerts created by Microsoft Defender for AI.

### Security | Data security and compliance

Added the [contentActivityMetadata](/graph/api/resources/contentactivitymetadata?view=graph-rest-beta&preserve-view=true) resource to represent and track Data Loss Prevention (DLP) enforcement result metadata for content entries, including identifiers, timestamps, and policy statuses.

### Teamwork and communications | Apps

Use the **scopeInfo** property on [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-beta&preserve-view=true) to get the details of the scope in which the app is installed.

### Teamwork and communications | Calls and online meetings

- Use the [virtualEventTownhallRegistrationConfiguration](/graph/api/resources/virtualeventtownhallregistrationconfiguration?view=graph-rest-beta&preserve-view=true) resource to manage attendee access for town halls and enable more controlled, scalable audience management.
- Added the `capacity` property to [virtual event town hall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true). This property allows customers to specify the expected attendee size when creating or updating a town hall or session and retrieve it later. Validation ensures compliance with SKU and licensing limits, returning actionable errors when capacity exceeds entitlement.

### Teamwork and communications | Messaging

Added support for `$expand` on the **items** relationship of the [teamworkSection](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) resource to retrieve a section together with its items in a single request.

### Tenants  | Cross-tenant access

Use the **sensorTypes** property on [sensorCandidate](/graph/api/resources/security-sensorcandidate?view=graph-rest-beta&preserve-view=true) to get the list of device types for the sensor.
Added the following properties and their associated complex types to the [crossTenantAccessPolicyConfigurationDefault](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault?view=graph-rest-beta&preserve-view=true) and [crossTenantAccessPolicyConfigurationPartner](/graph/api/resources/crosstenantaccesspolicyconfigurationpartner?view=graph-rest-beta&preserve-view=true) resources of cross-tenant access policy APIs to support Microsoft 365 collaboration and app service connect settings:
  - **appServiceConnectInbound** property to get or set the default or partner-specific configuration for inbound app service connect settings.
  - **m365CollaborationInbound** property to get or set the default or partner-specific configuration for inbound Microsoft 365 collaboration settings.
  - **m365CollaborationOutbound** property get or set the default or partner-specific configuration for outbound Microsoft 365 collaboration settings.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
