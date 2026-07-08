---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 06/23/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## July 2026: New and generally available

### Groups

- Made the following changes to group sensitivity labels:
    - Added support for assigning sensitivity labels to cloud security groups via the **assignedLabels** property on the [group](/graph/api/resources/group) resource. For more information, see [Sensitivity labels for Microsoft 365 groups and cloud security groups](/entra/identity/users/groups-sensitivity-labels).
    - Added the `Group.ManageProtection.All` delegated permission as the least privilege permission for updating the **assignedLabels** property on the [group](/graph/api/resources/group) resource. App-only scenarios aren't supported.

### Users

- Added the `User.Create` permission as the least privileged permission to [create a user](/graph/api/user-post-users).
- Added the `User.ReadUpdate.All` permission as the least privileged permission to [update a user](/graph/api/user-update).

## July 2026: New in preview only

### Change notifications

Added the **vapidPublicKey**, **webPushEncryptionP256dhPublicKey**, and **webPushEncryptionSecret** properties to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource to support encrypted change notifications delivered to browser-native Web Push endpoints (Apple, Mozilla, FCM). Browser-based applications can now register with Microsoft Graph to receive change notifications through the W3C Push API channel without operating a public webhook. See [RFC 8291](https://www.rfc-editor.org/rfc/rfc8291.html) and [RFC 8292](https://www.rfc-editor.org/rfc/rfc8292.html) for the underlying encryption and authentication protocols.

### Files

- Added the [Upsert permissions](/graph/api/filestoragecontainer-patch-permissions?view=graph-rest-beta&preserve-view=true) API to create or update up to 10 [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) objects on a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) in a single request.
- Added the **allowOnPremUpdateOfOnPremisesObjectIdentifierEnabled** property to the [onPremisesDirectorySynchronizationFeature](/graph/api/resources/onpremisesdirectorysynchronizationfeature?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Governance

- Added the [Get](/graph/api/accesspackagesubject-get) and [Update](/graph/api/accesspackagesubject-update) methods to the [accessPackageSubject](/graph/api/resources/accesspackagesubject) resource type to manage the subject lifecycle of external directory users in Microsoft Entra entitlement management.
- Added the **type** property to the [accessPackageResourceRole](/graph/api/resources/accesspackageresourcerole) resource to indicate whether an Azure resource role is active or eligible, enabling PIM-based role assignments for Azure resources in access packages.
- Added the [accessPackageSuggestion](/graph/api/resources/accesspackagesuggestion) resource type and related methods for discovering suggested access packages based on related people insights and assignment history. Use the [filterByCurrentUser](/graph/api/accesspackagesuggestions-filterbycurrentuser) function to retrieve personalized suggestions.
- Added the **approverInformationVisibility** property to the [accessPackageApprovalStage](/graph/api/resources/accesspackageapprovalstage) resource to control whether approver information is visible to requestors.
- Added the [endUserSettings](/graph/api/resources/endusersettings) resource type and related methods for configuring access package suggestion behavior, including related people insight levels and approver detail visibility.
- Added the [cancelProcessing](/graph/api/identitygovernance-workflow-cancelprocessing) method to the [workflow](/graph/api/resources/identitygovernance-workflow) resource to cancel workflow runs that are currently in progress or queued.
- Added workflow preview operations to the [workflow](/graph/api/resources/identitygovernance-workflow) resource type in Lifecycle Workflows, enabling you to validate tasks and run workflows in preview mode without affecting production users.
- Added support for automatically quarantining Lifecycle Workflows to stop a workflow from processing more users than expected. Configure thresholds using the **quarantineConfiguration** property on [lifecycleManagementSettings](/graph/api/resources/identitygovernance-lifecyclemanagementsettings), and clear a quarantine by calling [clearQuarantine](/graph/api/identitygovernance-workflow-clearquarantine).

### Identity and access | Identity and sign-in

Added support for programmatic FIDO2 passkey registration. Use the [creationOptions](/graph/api/fido2authenticationmethod-creationoptions) function to get WebAuthn credential creation options, then complete registration by posting the new **publicKeyCredential** property to the [fido2AuthenticationMethod](/graph/api/resources/fido2authenticationmethod) resource.

### People and workplace intelligence

- Updated [Manage profile source precedence in Microsoft 365](/graph/profilepriority-configure-profilepropertysetting) to clarify supported data sources for HR and work position data, explain how source precedence affects single-value versus multi-value properties, and add guidance on correctly configuring and removing tenant-level settings using the Microsoft Graph API or PowerShell.
- Added the [People data sources in Microsoft 365](/graph/people-data-sources) concept article that describes the data sources that build the Microsoft 365 user profile, including Microsoft Entra ID, Copilot connectors, Organizational data, SharePoint, People Skills, user edits, and the API user source. The article also provides a reference table of built-in source IDs (GUIDs) and explains how source metadata appears in the profile API output.

### Security | Alerts and incidents

- Added the **tenantId** property to the [userAccount](/graph/api/resources/security-useraccount) resource to provide the Entra home tenant ID for the compromised user account indicated in a [security alert](/graph/api/resources/security-alert) where the alert evidence is related to a [processEvidence](/graph/api/resources/security-processevidence), [userEvidence](/graph/api/resources/security-userevidence), or [mailboxEvidence](/graph/api/resources/security-mailboxevidence).
- Added the [alert: moveAlerts](/graph/api/security-alert-movealerts) and [incident: mergeIncidents](/graph/api/security-incident-mergeincidents) actions to support moving alerts and merging incidents in Microsoft Defender.
- Added the [correlationReason](/graph/api/resources/security-correlationreason) enumeration and [mergeResponse](/graph/api/resources/security-mergeresponse) resource type.

### Security | eDiscovery

Added the `cloudNativeHtmlConversion` member to the [additionalDataOptions](/graph/api/resources/security-ediscoveryaddtoreviewsetoperation#additionaldataoptions-values) enumeration.

### Teamwork and communications | Graph API controls

Updated Microsoft Graph documentation for transcript APIs to add guidance on tenant administrator controls that govern transcript access and speaker attribution. For more information, see [Get change notifications for transcripts and recordings using Microsoft Graph](teams-changenotifications-callrecording-and-calltranscript.md).

### Teamwork and communications | Shift management

The **timeZone** property of the [schedule](/graph/api/resources/schedule) resource must be set to an IANA time zone name, such as `America/Chicago` or `Europe/London`. For more information, see [Create or replace schedule](/graph/api/team-put-schedule).

### Users

Application permissions for the [user: translateExchangeIds](/graph/api/user-translateexchangeids) API are supported only for request URLs that identify a user in the path.

## June 2026: New and generally available

### Applications | Service principal

Evaluate applications in the Microsoft Entra application gallery by using the [applicationTemplate](/graph/api/resources/applicationtemplate) resource type, including the **riskScore** and **riskFactors** properties for risk assessment.

### Files | Reports

- Added the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to the [reportRoot](/graph/api/resources/reportroot?view=graph-rest-beta&preserve-view=true) resource to retrieve aggregated OneDrive and SharePoint API usage metrics for a tenant.
- [Upsert](/graph/api/filestoragecontainer-patch-permissions) (create or update) up to 40 permissions on a [fileStorageContainer](/graph/api/resources/filestoragecontainer) in a single request. The limit increased from 10 to 40 [permission](/graph/api/resources/permission) objects per request.

### Groups

- Added the **accessType**, **isFavorite**, **unseenConversationsCount**, and **unseenMessagesCount** properties to the [group](/graph/api/resources/group) resource. Use these properties to manage access settings and track conversation activity for Microsoft 365 groups. Added the **groupAccessType** enumeration type to support the **accessType** property on the [group](/graph/api/resources/group) resource.

### Identity and access | Directory management

- Added the [deviceRegistrationPolicy](/graph/api/resources/deviceregistrationpolicy) resource type and related methods to manage the policy that controls device registration quota restrictions, additional authentication, and authorization policies for your Microsoft Entra tenant.

### Identity and access | Identity and sign-in

- Added the [onVerifiedIdClaimValidationCustomExtension](/graph/api/resources/onverifiedidclaimvalidationcustomextension) and [onVerifiedIdClaimValidationListener](/graph/api/resources/onverifiedidclaimvalidationlistener) resource types and associated methods to support custom logic for claim validation from Verified ID credential presentations during authentication flows through Microsoft Entra custom authentication extensions in External ID.
- Added claim validation and match-confidence capabilities to [Verified ID profiles](/graph/api/resources/verifiedidprofile), enabling stronger claim verification and more flexible matching.
- Enhanced the [x509CertificateAuthenticationMethodConfiguration](/graph/api/resources/x509certificateauthenticationmethodconfiguration) resource type with the following capabilities for certificate-based authentication (CBA):
    - Scoping CBA to specific certificate authorities and restricting which groups of users can authenticate using certificates from those CAs.
    - Controlling whether issuer hints are sent to the client to filter the certificates shown in the certificate picker.
- Updated the **targetedAuthenticationMethod** property of the [authenticationMethodsRegistrationCampaignIncludeTarget](/graph/api/resources/authenticationmethodsregistrationcampaignincludetarget) resource to support `Fido2` in addition to `microsoftAuthenticator` for authentication method registration campaigns. Organizations can now use registration campaigns to nudge users to register and sign in with phishing-resistant passkeys (FIDO2).

### Mailbox import and export

- Added the [Overview of the mailbox import and export APIs in Microsoft Graph](/graph/mailbox-import-export-concept-overview) to help you build solutions for mailbox import and export scenarios.

### Security | Alerts and incidents

- Added the migration guide [Migrate from legacy alerts to the alerts and incidents API](/graph/alertsv1-alertsv2-migration) to help you transition your apps from the deprecated Microsoft Graph security alerts v1 API to the new alerts and incidents API.
- Extended the [alertEvidence](/graph/api/resources/security-alertevidence) base type with additional derived types to provide detailed context about various artifacts involved in [security alerts](/graph/api/resources/security-alert).

### Teamwork and communications | Messaging

- [Enable migration mode on an existing channel](/graph/api/channel-startmigration) to support channel migration of external messages.
- [Enable migration mode on an existing chat](/graph/api/chat-startmigration) to support chat migration of external messages.
- [Complete chat migration by disabling migration mode](/graph/api/chat-completemigration).
- Added the **migrationMode** and **originalCreatedDateTime** properties to the [channel](/graph/api/resources/channel) resource.
- Added the **migrationMode** and **originalCreatedDateTime** properties to the [chat](/graph/api/resources/chat) resource.
- Added the [migrationMode](/graph/api/resources/channel#migrationmode-values) enum.

### Teamwork and communications | Shifts

- Added support for additional theme colors in the [scheduleEntityTheme](/graph/api/resources/enums) enumeration for the **theme** property on [openShiftItem](/graph/api/resources/openshiftitem), [shiftItem](/graph/api/resources/shiftitem), [shiftActivity](/graph/api/resources/shiftactivity), and [timeOffItem](/graph/api/resources/timeoffitem).

## June 2026: New in preview only

### Agents | Agent identities

- Added the **appRoleAssignmentRequired** property to the [agentIdentity](/graph/api/resources/agentidentity?view=graph-rest-beta&preserve-view=true) resource. This property indicates whether users or service principals must be explicitly granted an app role assignment before they can access the agent identity.

### Applications | Service principal

- Added the [categories](/graph/api/applicationtemplate-categories?view=graph-rest-beta&preserve-view=true) method to the [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true) resource type to retrieve the list of supported categories that can appear in the `categories` property. Each entry is returned as an [applicationTemplateCategory](/graph/api/resources/applicationtemplatecategory?view=graph-rest-beta&preserve-view=true) with the API value and a localizable display name.
- Added the **enforcementScope** property to the [servicePrincipalLockConfiguration](/graph/api/resources/serviceprincipallockconfiguration?view=graph-rest-beta&preserve-view=true) resource type to define where service principal lock validation is enforced.

### Backup and recovery | Microsoft 365 Backup and Storage

- Added support for full workload backup APIs to protect entire Microsoft 365 workloads (SharePoint Online, OneDrive for work or school, and Exchange Online) with minimal administrative overhead. Create a protection policy that backs up all data in a workload and specify only the items to exclude from backup. For more information, see [exclusionUnitBase](/graph/api/resources/exclusionunitbase?view=graph-rest-beta&preserve-view=true).
- Deprecated the **queryExpression** property on the [artifactQuery](/graph/api/resources/artifactquery?view=graph-rest-beta&preserve-view=true) resource. Use the **structuredQueryExpression** property instead to create structured search queries.
- Added the **error** property of type [publicError](/graph/api/resources/publicerror?view=graph-rest-beta&preserve-view=true) to the [granularRestoreArtifactBase](/graph/api/resources/granularrestoreartifactbase?view=graph-rest-beta&preserve-view=true) resource and its derived types. Use this property to get error details when a granular restore operation for an individual artifact fails or completes with an error.

### Teamwork and communications | Calls and online meetings

Use the **isRegistrationRequired** property on the [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) resources to specify if attendees must complete the registration flow before they can attend.

### Device and app management | Cloud PC

- Use the [cloudPcProvisioningPolicy: apply](/graph/api/cloudpcprovisioningpolicy-apply?view=graph-rest-beta&preserve-view=true) method to apply policy settings such as `region` and `singleSignOn`. This method also supports reprovisioning for frontline shared mode Cloud PCs by using the **reservePercentage** parameter to control the percentage of Cloud PCs that remain available during the process.
- [Retrieve](/graph/api/cloudpcprovisioningpolicy-retrievepolicyupdatestatusresult?view=graph-rest-beta&preserve-view=true) the pending apply status of a [provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) to determine whether unapplied changes exist for Cloud PCs.
- Use the **isForceUserLogoffEnabled** parameter and property on [cloudPcProvisioningPolicy: apply](/graph/api/cloudpcprovisioningpolicy-apply?view=graph-rest-beta&preserve-view=true) and [cloudPcPolicyScheduledApplyActionDetail](/graph/api/resources/cloudpcpolicyscheduledapplyactiondetail?view=graph-rest-beta&preserve-view=true) to indicate whether active Cloud PC sessions are forcibly signed out when reprovisioning begins.
- Deprecated the **notificationSetting** property on the [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) resource. This property will stop returning data on July 14, 2026.

### Device and app management | Device updates

Added the [updateCategoryEnrollmentInformation](/graph/api/resources/windowsupdates-updatecategoryenrollmentinformation?view=graph-rest-beta&preserve-view=true) resource type to manage per-category enrollment state for Windows Updates. Use it to track enrollment state changes across update categories and access the current enrollment configuration through the [updateManagementEnrollment](/graph/api/resources/windowsupdates-updatemanagementenrollment?view=graph-rest-beta&preserve-view=true) and [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice?view=graph-rest-beta&preserve-view=true) resources.

### Files

- Added the [getByUser](/graph/api/filestoragecontainer-getbyuser?view=graph-rest-beta&preserve-view=true) method to the [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) resource. Use it to get the list of file storage containers that are owned by a specified user.
- [Upsert](/graph/api/filestoragecontainer-patch-permissions?view=graph-rest-beta&preserve-view=true) (create or update) up to 40 permissions on a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) in a single request. The limit increased from 10 to 40 [permission](/graph/api/resources/permission?view=graph-rest-beta&preserve-view=true) objects per request.
- Added the [driveItem: lock](/graph/api/driveitem-lock?view=graph-rest-beta&preserve-view=true) method to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) resource. Use it to acquire or refresh an exclusive lock on a file; use the related `releaseLock` method to release it when editing is complete.

### Identity and access | Directory management

Added redirect URI validation and restriction capabilities to [tenant app management policies](/graph/api/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true), allowing tenant administrators to control redirect URI schemes, domains, and wildcard usage. Use the **redirectUris** property -> [redirectUriConfiguration](/graph/api/resources/redirecturiconfiguration?view=graph-rest-beta&preserve-view=true) resource and its associated configuration resources to manage these restrictions through the [appManagementApplicationConfiguration](/graph/api/resources/appmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true) and [customAppManagementApplicationConfiguration](/graph/api/resources/customappmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true) resources.

### Identity and access | Governance

- Added reviewer delegation support to the [accessReviewInstance: filterByCurrentUser](/graph/api/accessreviewinstance-filterbycurrentuser?view=graph-rest-beta&preserve-view=true) API for access reviews.
- Added provisioning workflow support to [lifecycle workflows](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true). Use the `activateAndWait` action to run workflows synchronously for non-user subjects such as provisioning objects.
- Added support for automatically quarantining Lifecycle Workflows to stop a workflow from processing more users than expected. Configure thresholds using the **quarantineConfiguration** property on [lifecycleManagementSettings](/graph/api/resources/identitygovernance-lifecyclemanagementsettings?view=graph-rest-beta&preserve-view=true), and clear a quarantine by calling [clearQuarantine](/graph/api/identitygovernance-workflow-clearquarantine?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

Added the **callerIdNumber** property to the [voiceAuthenticationMethodConfiguration](/graph/api/resources/voiceauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resource. Use this property to configure the phone number displayed as the caller ID when voice call authentication is initiated.

### Mail

Use the [user configuration API in Microsoft Graph](/graph/user-configuration-concept-overview) to build solutions that store and retrieve per-folder configuration data alongside Exchange Online mailbox content.

Introduced programmatic management of personal distribution lists in user mailboxes through the [distributionList](/graph/api/resources/distributionlist?view=graph-rest-beta&preserve-view=true) and [distributionListMember](/graph/api/resources/distributionlistmember?view=graph-rest-beta&preserve-view=true) resource types. You can now:
- Create, read, update, and delete distribution lists in a user's mailbox
- Add and remove members from distribution lists
- Retrieve expanded member information with resolved contact details and recipient types
- List all distribution lists owned by a user

Personal distribution lists enable users to group email recipients together and send messages to all members at once without entering each address individually.

### Reports | Identity and access reports

Added the [identityAnalyticsRoot](/graph/api/resources/identityanalyticsroot?view=graph-rest-beta&preserve-view=true) resource type to provide point-in-time identity analytics for your tenant, starting with analytics about your groups such as their membership, ownership, and type.

### People and workplace intelligence | Places

Manage the service plans associated with workspace desks and use a consistent **placeId** identifier across [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) types.

### Security | Advanced hunting

- Added the [getRunHuntingQuery](/graph/api/security-security-getrunhuntingquery?view=graph-rest-beta&preserve-view=true) function as a GET-based companion to [runHuntingQuery](/graph/api/security-security-runhuntingquery?view=graph-rest-beta&preserve-view=true) for running advanced hunting queries against Microsoft Defender XDR data.
- Added the optional **workspaceId** parameter on [runHuntingQuery](/graph/api/security-security-runhuntingquery?view=graph-rest-beta&preserve-view=true) and [getRunHuntingQuery](/graph/api/security-security-getrunhuntingquery?view=graph-rest-beta&preserve-view=true) to target a specific Log Analytics workspace.

### Security | Alerts and incidents

- Use the [Create manualAlert](/graph/api/security-alert-post-manualalert?view=graph-rest-beta&preserve-view=true) method to create a manual security alert with specified entities and metadata. The new [manualAlert](/graph/api/resources/security-manualalert?view=graph-rest-beta&preserve-view=true) resource type derives from [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) and uses the [entityDefinitionInput](/graph/api/resources/security-entitydefinitioninput?view=graph-rest-beta&preserve-view=true) complex type to specify associated entities.
- Added the **tenantId** property to the [userAccount](/graph/api/resources/security-useraccount?view=graph-rest-beta&preserve-view=true) resource to provide the Entra home tenant ID for the compromised user account indicated in a [security alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) where the alert evidence is related to a [processEvidence](/graph/api/resources/security-processevidence?view=graph-rest-beta&preserve-view=true), [userEvidence](/graph/api/resources/security-userevidence?view=graph-rest-beta&preserve-view=true), or [mailboxEvidence](/graph/api/resources/security-mailboxevidence?view=graph-rest-beta&preserve-view=true).

### Security | Custom detection rules

- Updated the [custom detection rules API](/graph/api/resources/security-detectionrule?view=graph-rest-beta&preserve-view=true) in Microsoft 365 Defender with new capabilities, including: Infrastructure-as-code (IaC) support through user-defined IDs, custom run frequency, flexible entity mapping, custom alert details, and configurable response actions.

### Security | Data security and compliance

- Added the [policyTipAction](/graph/api/resources/policytipaction?view=graph-rest-beta&preserve-view=true) resource type and the `policyTip` member to the **dlpAction** enumeration. This enables applications to receive policy tip guidance as a standalone action when DLP policies are triggered through the processContent and protectionScopes APIs.

### Security | eDiscovery

- Added the `cloudNativeHtmlConversion` member to the [additionalDataOptions](/graph/api/resources/security-ediscoveryaddtoreviewsetoperation?view=graph-rest-beta&preserve-view=true#additionaldataoptions-values) enumeration.

### Security | Email and collaboration protection

- Use the [analyzedEmail](/graph/api/resources/security-analyzedemail?view=graph-rest-beta&preserve-view=true) resource type and its associated methods to give Security Operations teams direct, near real-time access to query email threats, indicators of compromise (IOCs), attack vectors, and evidence in a tenant. Email metadata, verdict information, related underlying entities such as attachments and URLs, filters, and timeline events are returned to support investigation and response.
- [List analyzedEmails](/graph/api/security-collaborationroot-list-analyzedemails?view=graph-rest-beta&preserve-view=true) under the collaboration root to retrieve email records for a time range with support for `$filter`, `$top`, `$count`, and `$skiptoken`.
- [Get analyzedEmail](/graph/api/security-analyzedemail-get?view=graph-rest-beta&preserve-view=true) to read the properties of a specific email, including its attachments, URLs, threat detection details, and timeline events.
- [analyzedEmail: remediate](/graph/api/security-analyzedemail-remediate?view=graph-rest-beta&preserve-view=true) to trigger purge actions (move to junk, move to Inbox, soft delete, hard delete, move to deleted items, move to quarantine) for SOAR integrations, playbooks, and automations.

### Security | Identities
- Introduced [sensor migration](/graph/api/resources/security-sensormigration?view=graph-rest-beta&preserve-view=true) capabilities to migrate eligible Microsoft Defender for Identity sensors.

### Sites and lists

- Added the **isSearchable** property to the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta&preserve-view=true) resource type to enable independent control of the searchable state of a column, separate from the **indexed** property. This property is currently supported only for columns in a [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true).
- Added the [sharePointReportSettings](/graph/api/resources/sharepointreportsettings?view=graph-rest-beta&preserve-view=true) resource type and related methods for managing SharePoint API usage report metrics. Use the [enableApiUsageReport](/graph/api/sharepointreportsettings-enableapiusagereport?view=graph-rest-beta&preserve-view=true) and [disableApiUsageReport](/graph/api/sharepointreportsettings-disableapiusagereport?view=graph-rest-beta&preserve-view=true) methods to control which metrics are collected and reported for your tenant.

### Teamwork and communications | Calls and online meetings

- Use the **isRegistrationRequired** property on the [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) resources to specify if attendees must complete the registration flow before they can attend.
- Use the **meetingType** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to determine whether a meeting is ad hoc, scheduled, recurring, a broadcast, or a *Meet now* session. The property is defined on the [onlineMeetingBase](/graph/api/resources/onlinemeetingbase?view=graph-rest-beta&preserve-view=true) resource and uses the [onlineMeetingType](/graph/api/resources/onlinemeetingbase?view=graph-rest-beta&preserve-view=true#onlinemeetingtype-values) enumeration.
- Use the **cloudVideoInteropInfo** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to get the conferencing device integration settings for [Cloud Video Interop](/microsoftteams/cloud-video-interop).

### Teamwork and communications | Messaging

[Add](/graph/api/teamworksection-post-items?view=graph-rest-beta&preserve-view=true#example-2-add-a-community-to-a-section) a Viva Engage community to a [section](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true). You can provide either the bare community ID returned when you [list communities](/graph/api/employeeexperience-list-communities?view=graph-rest-beta&preserve-view=true) (for example, `eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTAzMzYyMTIyMTAifQ`) or the full `19:{communityId}@EngageCommunity` thread ID. When you provide a bare community ID, the service automatically normalizes it to the `19:{communityId}@EngageCommunity` format; an ID that already includes the thread prefix is used as-is.

### Teamwork and communications | Shift management

The **timeZone** property of the [schedule](/graph/api/resources/schedule?view=graph-rest-beta&preserve-view=true) resource must be set to an IANA time zone name, such as `America/Chicago` or `Europe/London`. For more information, see [Create or replace schedule](/graph/api/team-put-schedule?view=graph-rest-beta&preserve-view=true).

### Tenants | Cross-tenant migration

[Validate](/graph/api/crosstenantmigrationjob-validate?view=graph-rest-beta&preserve-view=true) and [migrate](/graph/api/crosstenantmigrationjob-migrate?view=graph-rest-beta&preserve-view=true) a [cross-tenant migration job](/graph/api/resources/crosstenantmigrationjob?view=graph-rest-beta&preserve-view=true) asynchronously. A previously created job must pass validation before migration can start.

### Tenants | Tenant governance

Added the **groupDisplayName** property to the [delegatedAdministrationRoleAssignment](/graph/api/resources/tenantgovernanceservices-delegatedadministrationroleassignment?view=graph-rest-beta&preserve-view=true) and [delegatedAdministrationRoleAssignmentSnapshot](/graph/api/resources/tenantgovernanceservices-delegatedadministrationroleassignmentsnapshot?view=graph-rest-beta&preserve-view=true) resources. This property surfaces the display name of the security group inline, so consumers don't need to make a separate Microsoft Graph `/groups/{id}` call to resolve it.

### Users

- Application permissions for the [user: translateExchangeIds](/graph/api/user-translateexchangeids?view=graph-rest-beta&preserve-view=true) API are supported only for request URLs that identify a user in the path.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
