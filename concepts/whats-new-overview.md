---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 10/08/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## November 2026: New and generally available

### Backup and recovery | Microsoft 365 backup and storage

- Added the **error** property to the [granularRestoreArtifactBase](/graph/api/resources/granularrestoreartifactbase) resource and its derived types. Use this property to get error details when a granular restore operation for an individual artifact fails or completes with an error.
- Added audit metadata to the [browseQueryResponseItem](/graph/api/resources/browsequeryresponseitem) resource. Use this metadata to identify when a file or folder was created or last modified and who made the change when you select items for granular restore.
- Added support for tracking backup retention periods and pending retention changes on [protectionUnitBase](/graph/api/resources/protectionunitbase). Use the **backupRetentionPeriodInDays** and **pendingRetentionPeriodChange** properties to monitor protection units as they move between policies with different retention periods.

### Identity and access | Directory management

- Added the **isPrivileged** property to the [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition) resource type. Use it to identify roles that contain sensitive Microsoft Entra resource actions.

### Mail

- Added the [distributionList](/graph/api/resources/distributionlist) resource type and related methods for managing personal distribution lists in a user's mailbox. Use these APIs to create, read, update, and delete distribution lists, and add or remove members.
- Promoted the [reportMessage](/graph/api/message-reportmessage) method on the [message](/graph/api/resources/message) resource from beta to v1.0. Use this method to report a message as junk, phishing, or not junk, which improves mail filtering.

### Mailbox import and export

- Added the **isHidden** property to the [mailboxFolder](/graph/api/resources/mailboxfolder) resource to identify hidden mailbox folders.
- Use the existing **includeHiddenFolders** query parameter for [listing folders](/graph/api/mailbox-list-folders) and [listing child folders](/graph/api/mailboxfolder-list-childfolders). Set it to `true` to include both hidden and nonhidden folders.

## November 2026: New in preview only

### Identity and access | Directory management

- Devices now support soft-deletion and restoration. When a device is deleted, it's moved to the [deleted items container](/graph/api/resources/directory?view=graph-rest-beta&preserve-view=true) and can be restored within 30 days. After 30 days, it's permanently deleted.

### Security

- Added the [resourceQuota](/graph/api/resources/resourcequota?view=graph-rest-beta&preserve-view=true) resource type and the **resourceQuotas** property on the [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true) resource to let administrators monitor and configure quota allocations for resource types in their Microsoft Entra organization.

### Security | Case management

- Removed support for the `$skip` query parameter in the [case management APIs](/graph/api/resources/security-casemanagementroot?view=graph-rest-beta&preserve-view=true). Update affected requests to omit `$skip`.

### Security | Data security and compliance

Added the [classificationGradingJobResponse](/graph/api/resources/classificationgradingjobresponse?view=graph-rest-beta&preserve-view=true) resource type and [classificationGradingContentLocation](/graph/api/resources/classificationgradingcontentlocation?view=graph-rest-beta&preserve-view=true) complex type to return matched text and surrounding context through the optional **contextText** property in classification grading results.

### Teamwork and communications | Messaging

- Removed the `If-Match` header from [create section](/graph/api/userteamwork-post-sections?view=graph-rest-beta&preserve-view=true), [update section](/graph/api/teamworksection-update?view=graph-rest-beta&preserve-view=true), [delete section](/graph/api/teamworksection-delete?view=graph-rest-beta&preserve-view=true), [reorder sections](/graph/api/teamworksection-reorder?view=graph-rest-beta&preserve-view=true), [create section item](/graph/api/teamworksection-post-items?view=graph-rest-beta&preserve-view=true), [move section item](/graph/api/teamworksectionitem-move?view=graph-rest-beta&preserve-view=true), [reorder section items](/graph/api/teamworksectionitem-reorder?view=graph-rest-beta&preserve-view=true), and [delete section item](/graph/api/teamworksectionitem-delete?view=graph-rest-beta&preserve-view=true) methods of the [teamworkSection](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) and [teamworkSectionItem](/graph/api/resources/teamworksectionitem?view=graph-rest-beta&preserve-view=true) resources. These operations now return a `409 Conflict` response code for concurrent changes, and no longer return `412 Precondition Failed` or `428 Precondition Required`.
- Updated the [add teamworkSectionItem](/graph/api/teamworksection-post-items?view=graph-rest-beta&preserve-view=true) method to move an item from another user-defined section.
- Added the [teamworkChannelTag](/graph/api/resources/teamworkchanneltag?view=graph-rest-beta&preserve-view=true) resource type and associated methods for managing tags owned by a Microsoft Teams channel. Use channel tags to group users within a channel and manage their tag assignments.

## October 2026: New and generally available

### Applications

- Added the **kerberosTicket** property to the [optionalClaims](/graph/api/resources/optionalclaims) resource type to select group SID categories for Kerberos tickets. Use the configuring application's **groupMembershipClaims** setting to scope eligible memberships within those categories.

### Backup and recovery | Microsoft 365 backup and storage

- Use the **policyId** property on the [restoreSessionBase](/graph/api/resources/restoresessionbase) resource to scope restore sessions to a protection policy.
- Use the optional **policyId** parameter on the [restorePoint: search](/graph/api/restorepoint-search) method to validate protection-unit membership and improve policy-scoped routing. You can also filter the restore points collection by **protectionUnit/policyId**.
- Added the [getStatisticsByPolicy](/graph/api/backupreport-getstatisticsbypolicy) method to the [backupReport](/graph/api/resources/backupreport) resource type in v1.0. Use it to retrieve policy-level protection statistics for Microsoft 365 Backup Storage.

### Calendars

- Promoted the **isSharedWithMe** property of [calendar](/graph/api/resources/calendar) resource from beta to v1.0. The property is used to identify the shared calendars.
- Added the [delta](/graph/api/calendar-delta) method to the [calendar](/graph/api/resources/calendar) resource type. Use it to track calendars added, deleted, or updated in a user's mailbox.

### Calendars | Places

- Use the **lastUpdatedTime** and **customProperties** properties on the [place](/graph/api/resources/place) resource to read when a place was last updated and manage custom string key-value metadata.
- The [Place update](/graph/api/place-update) API doesn't honor administrative roles assigned to groups in Microsoft Entra ID. Instead, assign the required role directly to the user in Microsoft Entra ID, or assign it to a user or group through the Microsoft 365 admin center.

### Identity and access | Directory management

Promoted the **managerApplications** property on the [agentUser](/graph/api/resources/agentuser) resource type from beta to v1.0. Use it to read the application IDs authorized to manage the agent user's backing agent blueprint. The property is read-only and is returned only when explicitly selected with the `microsoft.graph.agentUser` type cast.

### Identity and access | Governance

- Added the **isEnabled** property to the [roleManagementCustomCalloutExtension](/graph/api/resources/rolemanagementcustomcalloutextension) resource type in v1.0. Use it to enable or disable a PIM custom extension without deleting it.
- Added the `applicationAuthorization` and `appRoles` members to the **customExtensionResourceType** enumeration in v1.0, extending the supported values of **resourceType** on [roleManagementCustomCalloutExtension](/graph/api/resources/rolemanagementcustomcalloutextension). Use the `Prefer: include-unknown-enum-members` request header to retrieve these values.
- Added the [groupResource](/graph/api/resources/groupresource) resource type and the **resources** relationship to the [privilegedAccessGroup](/graph/api/resources/privilegedaccessgroup) resource. Use them to list and get groups managed through Privileged Identity Management (PIM) for groups.

### Identity and access | Identity and sign-in

- Added the [federatedTokenValidationPolicy](/graph/api/resources/federatedtokenvalidationpolicy) resource to control which federated domains Microsoft Entra ID accepts tokens from on a per-tenant basis, as a defense-in-depth measure against token-replay and rogue-IdP scenarios.
- Added support for routing SMS and voice authentication traffic through a telecom provider integration. Configure the provider endpoint, application identifier, evaluation mode, and migration percentage through the **telecomProviderSettings** property on the [smsAuthenticationMethodConfiguration](/graph/api/resources/smsauthenticationmethodconfiguration) and [voiceAuthenticationMethodConfiguration](/graph/api/resources/voiceauthenticationmethodconfiguration) resources.

### Mail | Message trace

Added support to identify recalled messages in message trace. Use `recalled` as a supported value of the **status** property of the [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace) resource.

### Reports | Partner billing reports

Added the [billedAggregatedUsage](/graph/api/resources/partners-billing-billedaggregatedusage) resource and related [export](/graph/api/partners-billing-billedaggregatedusage-export) method to the v1.0 endpoint. Cloud Solution Provider partners can use the **export** method to generate billed aggregated Azure usage reports for a specific invoice.

### Security | Audit log query

Added 35 members, from `PlannerCustomFieldDefinition` through `MESRawEmailContentMetadata`, to the [auditLogRecordType](/graph/api/resources/security-auditlogrecordtype) enumeration and added the matching [auditData derived types](/graph/api/resources/security-auditdata-derived-types) to represent workload-specific audit event payloads.

### Security | Custom detection rules

Added support for managing Microsoft Defender XDR custom detection rules in v1.0 through the [detectionRule](/graph/api/resources/security-detectionrule) resource.

### Tasks and plans

Added support for single-value extended properties on [todoTask](/graph/api/resources/todotask) and [todoTaskList](/graph/api/resources/todotasklist) resources, enabling apps to store and retrieve custom data for Microsoft To Do tasks and task lists.

### Teamwork and communications | Calls and online meetings

Added the **engagements** property to the [attendanceRecord](/graph/api/resources/attendancerecord) resource. Use it to get real-time participant interaction behaviors that are captured as part of the attendance report, including reactions, hand raises, camera toggles, and microphone mute and unmute events.

### Tenants | Cross-tenant migration

Added the [cross-tenant migration API](/graph/api/resources/crosstenant-migration-api-overview) and related methods to the v1.0 endpoint. Use the API to create migration jobs, validate their configuration, migrate user data between Microsoft 365 tenants, monitor migration status, and cancel migration jobs or individual user tasks.

### Tenants | Tenant governance

Added the [refreshStatus](/graph/api/tenantgovernanceservices-relatedtenant-refreshstatus) method to get the status of the most recent related tenants refresh operation.

## October 2026: New in preview only

### Applications

Added the `audit` member to the **appManagementRestrictionState** enumeration type used by the [appManagementPolicy](/graph/api/resources/appmanagementpolicy?view=graph-rest-beta&preserve-view=true) resource. Use this value to evaluate application management policy restrictions without enforcing them.

### Backup and recovery | Microsoft 365 backup and storage

- Track admin activities on backup and restore resources, including policy changes, dynamic rule executions, offboarding, and restore task completions, by using the [activityLogBase](/graph/api/resources/activitylogbase?view=graph-rest-beta&preserve-view=true) resource and its derived types.
- Removed the **tags** property on the [restoreTaskActivityLog](/graph/api/resources/restoretaskactivitylog?view=graph-rest-beta&preserve-view=true) in favor of the **restoreJobType** property. Use the **restoreJobType** property with values from the [restoreJobType](/graph/api/resources/enums?view=graph-rest-beta&preserve-view=true#restorejobtype-values) enumeration type.
- Added the **backupPolicyDeleted** member as a new supported value for the **activityType** property on the [activityLogBase](/graph/api/resources/activitylogbase?view=graph-rest-beta&preserve-view=true) resource and its derived types.

### Calendars | Places

The [Place update](/graph/api/place-update?view=graph-rest-beta&preserve-view=true) API doesn't honor administrative roles assigned to groups in Microsoft Entra ID. Instead, assign the required role directly to the user in Microsoft Entra ID, or assign it to a user or group through the Microsoft 365 admin center.

### Device and app management | Cloud PC

- Updated the date when deprecated image properties on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true), [cloudPcSourceDeviceImage](/graph/api/resources/cloudpcsourcedeviceimage?view=graph-rest-beta&preserve-view=true), and [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true) will stop returning data from January 31, 2024 to December 7, 2026. No replacement is planned for **recommendedSku**. Review the replacement property guidance in these resource topics and update affected integrations before the deadline.
- Added support for extending Windows 365 Reserve access for multiple users through the [submitManagedLicenseOperation](/graph/api/cloudpcmanagedlicense-submitmanagedlicenseoperation?view=graph-rest-beta&preserve-view=true) action on the [cloudPcManagedLicense](/graph/api/resources/cloudpcmanagedlicense?view=graph-rest-beta&preserve-view=true) collection. Poll the submitted operation to check completion and inspect per-user results.
- Use the [retrieveManagedLicenseOperation](/graph/api/cloudpcmanagedlicense-retrievemanagedlicenseoperation?view=graph-rest-beta&preserve-view=true) operation to retrieve the status and per-user results of a submitted operation.

### Device and app management | Device updates

- Added the [driverUpdatePolicy](/graph/api/resources/windowsupdates-driverupdatepolicy?view=graph-rest-beta&preserve-view=true), [driverUpdateRing](/graph/api/resources/windowsupdates-driverupdatering?view=graph-rest-beta&preserve-view=true), and [driverUpdateApprovalRule](/graph/api/resources/windowsupdates-driverupdateapprovalrule?view=graph-rest-beta&preserve-view=true) resource types to manage driver and firmware update approvals and deployments with Windows Autopatch.
- Added the [featureUpdatePolicy](/graph/api/resources/windowsupdates-featureupdatepolicy?view=graph-rest-beta&preserve-view=true) and [featureUpdateRing](/graph/api/resources/windowsupdates-featureupdatering?view=graph-rest-beta&preserve-view=true) resource types to manage feature update deployments and gradual rollout settings with Windows Autopatch.
- Added the [tenantSetting](/graph/api/resources/windowsupdates-tenantsetting?view=graph-rest-beta&preserve-view=true) and [mdmAppSetting](/graph/api/resources/windowsupdates-mdmappsetting?view=graph-rest-beta&preserve-view=true) resource types to manage tenant-level and MDM application settings for Windows Autopatch.
- Added the [applicableCatalog](/graph/api/resources/windowsupdates-applicablecatalog?view=graph-rest-beta&preserve-view=true) and [applicableDevice](/graph/api/resources/windowsupdates-applicabledevice?view=graph-rest-beta&preserve-view=true) resource types to identify updates that apply to devices targeted by a Windows Autopatch policy.
- Added the [updateData](/graph/api/resources/windowsupdates-updatedata?view=graph-rest-beta&preserve-view=true) resource type and related device profile, policy assignment, catalog applicability, and driver reporting resources to retrieve Windows Autopatch deployment data.

### Files

Updated the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to support SharePoint service prioritization reports. Use this report to retrieve total, standard, heavy, billed standard, and billed heavy API request counts by application and date.

### Identity and access | Directory management

- Added the [objectConnection](/graph/api/resources/synchronization-objectconnection?view=graph-rest-beta&preserve-view=true) resource type and related methods to inspect or clear cached connector data store linkage records.
- Added the **objectConnections** relationship to the [synchronizationJob](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta&preserve-view=true) resource to access linkage records for known object identifiers.

### Identity and access | Governance

- Added the [accessDriftSummary](/graph/api/resources/accessdriftsummary?view=graph-rest-beta&preserve-view=true) resource type and related methods for identifying governed resources whose actual access differs from access-package intent. Use it to list and inspect drift summaries, retrieve drift details, and download bulk reconciliation reports. Access drift details identify whether each affected identity is a user or group through the **identityType** property of [entraDriftIdentityInfo](/graph/api/resources/entradriftidentityinfo?view=graph-rest-beta&preserve-view=true).
- Added methods to read and configure a user's [approverDelegate](/graph/api/resources/approverdelegate?view=graph-rest-beta&preserve-view=true). Use them to delegate approval of Microsoft Entra entitlement management access package assignment requests and access reviews to another user or group for a specified period of time. Users can manage their own delegate, and Identity Governance Administrators can manage the delegate of any user.
- Added the **gracePeriodInDays** property to the [lifecyclePolicyRule](/graph/api/resources/identitygovernance-lifecyclepolicyrule?view=graph-rest-beta&preserve-view=true) resource. Use it to configure an optional grace period for each lifecycle policy rule before the policy action sequence starts.
- Added the [roleManagementCustomCalloutExtension](/graph/api/resources/rolemanagementcustomcalloutextension?view=graph-rest-beta&preserve-view=true) resource type and related methods for integrating external approval, ticketing, compliance, and audit workflows into Privileged Identity Management role assignment lifecycle events. Use these capabilities to associate custom extensions with role management policies, submit approval or denial results for Microsoft Entra role and group assignment requests, and optionally update assignment schedules.

### Identity and access | Identity and sign-in

- Added public preview support for OnPasswordUpdate custom authentication extensions. Use the [onPasswordUpdateCustomExtension](/graph/api/resources/onpasswordupdatecustomextension?view=graph-rest-beta&preserve-view=true) resource to notify external systems after a self-service password reset and the [onPasswordUpdateListener](/graph/api/resources/onpasswordupdatelistener?view=graph-rest-beta&preserve-view=true) resource to configure when the notification occurs.
- Added support for routing SMS and voice authentication traffic through a telecom provider integration. Configure the provider endpoint, application identifier, evaluation mode, and migration percentage through the **telecomProviderSettings** property on the [smsAuthenticationMethodConfiguration](/graph/api/resources/smsauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) and [voiceAuthenticationMethodConfiguration](/graph/api/resources/voiceauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resources.
- Added the **identityVerificationEventsConfiguration** property to the [verifiableCredentialsAuthenticationMethodConfiguration](/graph/api/resources/verifiablecredentialsauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resource. Use it to control tenant-wide collection and exposure of identity verification events and credential provenance information for Verified ID verification.
- Added the [conditionalAccessPolicyPlan](/graph/api/resources/conditionalaccesspolicyplan?view=graph-rest-beta&preserve-view=true) resource type and related methods for grouping shared Conditional Access conditions with scenario-specific rules. Use policy plans to consolidate common targeting conditions and manage rule-specific enforcement controls.

### Groups

Added the **mailboxId** property to the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource type to identify the Exchange mailbox associated with a Microsoft 365 group. The property is returned only when specified in `$select`.

### Identity and access | Directory management

Added the **isHardDeleteProtectionEnabled** property to the [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) (excluding on-premises synchronized users), [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true), [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true), and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) resources. Enable hard deletion protection on existing objects to block permanent deletion for seven days after soft deletion. Once enabled, protection can't be disabled.

### Mail

Added the [importMime](/graph/api/mailfolder-importmime?view=graph-rest-beta&preserve-view=true) method to the [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true) resource to create a non-draft message in a mail folder directly from MIME content. Unlike [creating a message](/graph/api/mailfolder-post-messages?view=graph-rest-beta&preserve-view=true), which always creates a draft, this method creates the message in a final, non-draft state. The message appears in the destination folder as if it was delivered; however, it doesn't go through transport, isn't stamped as sent, and never appears in the *Sent Items* folder. The action preserves the full MIME content, including internet message headers, body parts, and attachments. Use the **importMime** API to import existing mail into a mailbox, such as to migrate messages from another system.

### Mail | Message trace

Added support to identify recalled messages in message trace. Use `recalled` as a supported value of the **status** property of the [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace?view=graph-rest-beta&preserve-view=true) resource.

### Mailbox import and export

- Added the **isHidden** property to the [mailboxFolder](/graph/api/resources/mailboxfolder?view=graph-rest-beta&preserve-view=true) resource to identify hidden mailbox folders.
- Use the existing **includeHiddenFolders** query parameter for [listing folders](/graph/api/mailbox-list-folders?view=graph-rest-beta&preserve-view=true) and [listing child folders](/graph/api/mailboxfolder-list-childfolders?view=graph-rest-beta&preserve-view=true). Set it to `true` to include both hidden and nonhidden folders.

### Reports | Identity and access reports

- Added the [appManagementAudit](/graph/api/resources/appmanagementaudit?view=graph-rest-beta&preserve-view=true) resource type and related methods to retrieve Microsoft Entra application management audit logs. Use these APIs to understand how app management policy restrictions affected application and service principal changes.
- Added the `passwordUpdate` member to the **eventType** property of the [appliedAuthenticationEventListener](/graph/api/resources/appliedauthenticationeventlistener?view=graph-rest-beta&preserve-view=true) resource to identify OnPasswordUpdate custom extension listeners triggered during sign-ins.
- Added the `notAppliedAllAppsExclusion` and `reportOnlyNotAppliedAllAppsExclusion` members to the **appliedConditionalAccessPolicyResult** enumeration used by the **result** property of [appliedConditionalAccessPolicy](/graph/api/resources/appliedconditionalaccesspolicy?view=graph-rest-beta&preserve-view=true). Use these values to distinguish enabled and report-only policies skipped by an enabled all-apps exclusion from policies that don't apply for other reasons.

### Security

Added the **incidentConfiguration** property to the [detectionAction](/graph/api/resources/security-detectionaction?view=graph-rest-beta&preserve-view=true) resource and the [incidentConfiguration](/graph/api/resources/security-incidentconfiguration?view=graph-rest-beta&preserve-view=true) complex type. Use this setting to exclude alerts generated by a custom detection rule from automatic incident correlation and create standalone, single-alert incidents.

### Security | Audit log query

Added 35 members, from `PlannerCustomFieldDefinition` through `MESRawEmailContentMetadata`, to the [auditLogRecordType](/graph/api/resources/security-auditlogrecordtype?view=graph-rest-beta&preserve-view=true) enumeration and added the matching [auditData derived types](/graph/api/resources/security-auditdata-derived-types?view=graph-rest-beta&preserve-view=true) to represent workload-specific audit event payloads.

### Security | Case management

Clarified the existing maximum length of the **message** property on the [comment](/graph/api/resources/security-casemanagement-comment?view=graph-rest-beta&preserve-view=true) resource: 1,000 characters for incident cases and 5,000 characters for generic cases. These limits apply when you [create a comment activity](/graph/api/security-casemanagement-case-post-activities?view=graph-rest-beta&preserve-view=true). The 5,000-character limit also applies when you [update a comment activity](/graph/api/security-casemanagement-activity-update?view=graph-rest-beta&preserve-view=true) in a generic case; the update of comment activities in incident cases remains unsupported.

### Security | Data security and compliance

- Applications can now supply one or more sensitivity labels with file content submitted to the [processContent](/graph/api/userdatasecurityandgovernance-processcontent?view=graph-rest-beta&preserve-view=true) API by using the **sensitivityLabels** property of [processContentMetadataBase](/graph/api/resources/processcontentmetadatabase?view=graph-rest-beta&preserve-view=true).
- Added the `unknownFutureValue` member to the [applicationMode](/graph/api/resources/enums?view=graph-rest-beta&preserve-view=true#applicationmode-values) enumeration as a sentinel for future application modes.
- Updated the **evaluationErrorType** enumeration to use customer-facing reasons for incomplete policy evaluations, and removed the **errorMessage** property from the [evaluationErrorDetail](/graph/api/resources/evaluationerrordetail?view=graph-rest-beta&preserve-view=true) complex type. Use **errorType** to identify why an evaluation couldn't be completed.

### Security | Workbooks

Added the [workbook](/graph/api/resources/security-workbook?view=graph-rest-beta&preserve-view=true) resource type and related methods to manage tenant-scoped Microsoft Security workbook documents. Use stable IDs for repeatable deployments and replace a workbook's JSON content as a complete document.

### Teamwork and communications | Messaging

- Added methods to [get a custom emoji or its raw image content](/graph/api/teamworkcustomemoji-get?view=graph-rest-beta&preserve-view=true) and [delete a custom emoji](/graph/api/teamworkcustomemoji-delete?view=graph-rest-beta&preserve-view=true) by display name.
- Updated the [teamworkCustomEmoji](/graph/api/resources/teamworkcustomemoji?view=graph-rest-beta&preserve-view=true) resource to inherit its identifier, binary content, content type, and media-stream behavior from [teamworkHostedContent](/graph/api/resources/teamworkhostedcontent?view=graph-rest-beta&preserve-view=true).
- Added support for setting and unsetting custom emoji reactions on chat messages by specifying a display name (**displayName**), service-issued identifier (**reactionId**), or both. For more information, see [chatMessageReaction](/graph/api/resources/chatmessagereaction?view=graph-rest-beta&preserve-view=true).

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
