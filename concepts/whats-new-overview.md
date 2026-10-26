---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 10/05/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## October 2026: New and generally available

### Backup and recovery | Microsoft 365 backup and storage

Added the [getStatisticsByPolicy](/graph/api/backupreport-getstatisticsbypolicy) method to the [backupReport](/graph/api/resources/backupreport) resource type in v1.0. Use it to retrieve policy-level protection statistics for Microsoft 365 Backup Storage.

### Calendars

- Promoted the **isSharedWithMe** property of [calendar](/graph/api/resources/calendar) resource from beta to v1.0. The property is used to identify the shared calendars.
- Added the [delta](/graph/api/calendar-delta) method to the [calendar](/graph/api/resources/calendar) resource type. Use it to track calendars added, deleted, or updated in a user's mailbox.

### Calendars | Places

- Use the **lastUpdatedTime** and **customProperties** properties on the [place](/graph/api/resources/place) resource to read when a place was last updated and manage custom string key-value metadata.
- The [Place update](/graph/api/place-update) API doesn't honor administrative roles assigned to groups in Microsoft Entra ID. Instead, assign the required role directly to the user in Microsoft Entra ID, or assign it to a user or group through the Microsoft 365 admin center.

### Mail | Message trace

Added support to identify recalled messages in message trace. Use `recalled` as a supported value of the **status** property of the [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace) resource.

### Tasks and plans

Added support for single-value extended properties on [todoTask](/graph/api/resources/todotask) and [todoTaskList](/graph/api/resources/todotasklist) resources, enabling apps to store and retrieve custom data for Microsoft To Do tasks and task lists.

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

Updated the date when deprecated image properties on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true), [cloudPcSourceDeviceImage](/graph/api/resources/cloudpcsourcedeviceimage?view=graph-rest-beta&preserve-view=true), and [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage?view=graph-rest-beta&preserve-view=true) will stop returning data from January 31, 2024 to December 7, 2026. No replacement is planned for **recommendedSku**. Review the replacement property guidance in these resource topics and update affected integrations before the deadline.

### Device and app management | Device updates

- Added the [driverUpdatePolicy](/graph/api/resources/windowsupdates-driverupdatepolicy?view=graph-rest-beta&preserve-view=true), [driverUpdateRing](/graph/api/resources/windowsupdates-driverupdatering?view=graph-rest-beta&preserve-view=true), and [driverUpdateApprovalRule](/graph/api/resources/windowsupdates-driverupdateapprovalrule?view=graph-rest-beta&preserve-view=true) resource types to manage driver and firmware update approvals and deployments with Windows Autopatch.
- Added the [featureUpdatePolicy](/graph/api/resources/windowsupdates-featureupdatepolicy?view=graph-rest-beta&preserve-view=true) and [featureUpdateRing](/graph/api/resources/windowsupdates-featureupdatering?view=graph-rest-beta&preserve-view=true) resource types to manage feature update deployments and gradual rollout settings with Windows Autopatch.
- Added the [tenantSetting](/graph/api/resources/windowsupdates-tenantsetting?view=graph-rest-beta&preserve-view=true) and [mdmAppSetting](/graph/api/resources/windowsupdates-mdmappsetting?view=graph-rest-beta&preserve-view=true) resource types to manage tenant-level and MDM application settings for Windows Autopatch.
- Added the [applicableCatalog](/graph/api/resources/windowsupdates-applicablecatalog?view=graph-rest-beta&preserve-view=true) and [applicableDevice](/graph/api/resources/windowsupdates-applicabledevice?view=graph-rest-beta&preserve-view=true) resource types to identify updates that apply to devices targeted by a Windows Autopatch policy.
- Added the [updateData](/graph/api/resources/windowsupdates-updatedata?view=graph-rest-beta&preserve-view=true) resource type and related device profile, policy assignment, catalog applicability, and driver reporting resources to retrieve Windows Autopatch deployment data.

### Files

Updated the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to support SharePoint service prioritization reports. Use this report to retrieve total, standard, heavy, billed standard, and billed heavy API request counts by application and date.

### Identity and access | Governance

- Added the [accessDriftSummary](/graph/api/resources/accessdriftsummary?view=graph-rest-beta&preserve-view=true) resource type and related methods for identifying governed resources whose actual access differs from access-package intent. Use it to list and inspect drift summaries, retrieve drift details, and download bulk reconciliation reports. Access drift details identify whether each affected identity is a user or group through the **identityType** property of [entraDriftIdentityInfo](/graph/api/resources/entradriftidentityinfo?view=graph-rest-beta&preserve-view=true).
- Added methods to read and configure a user's [approverDelegate](/graph/api/resources/approverdelegate?view=graph-rest-beta&preserve-view=true). Use them to delegate approval of Microsoft Entra entitlement management access package assignment requests and access reviews to another user or group for a specified period of time. Users can manage their own delegate, and Identity Governance Administrators can manage the delegate of any user.
- Added the **gracePeriodInDays** property to the [lifecyclePolicyRule](/graph/api/resources/identitygovernance-lifecyclepolicyrule?view=graph-rest-beta&preserve-view=true) resource. Use it to configure an optional grace period for each lifecycle policy rule before the policy action sequence starts.
- Added the [roleManagementCustomCalloutExtension](/graph/api/resources/rolemanagementcustomcalloutextension?view=graph-rest-beta&preserve-view=true) resource type and related methods for integrating external approval, ticketing, compliance, and audit workflows into Privileged Identity Management role assignment lifecycle events. Use these capabilities to associate custom extensions with role management policies, submit approval or denial results for Microsoft Entra role and group assignment requests, and optionally update assignment schedules.

### Identity and access | Identity and sign-in

- Added public preview support for OnPasswordUpdate custom authentication extensions. Use the [onPasswordUpdateCustomExtension](/graph/api/resources/onpasswordupdatecustomextension?view=graph-rest-beta&preserve-view=true) resource to notify external systems after a self-service password reset and the [onPasswordUpdateListener](/graph/api/resources/onpasswordupdatelistener?view=graph-rest-beta&preserve-view=true) resource to configure when the notification occurs.

### Groups

Added the **mailboxId** property to the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource type to identify the Exchange mailbox associated with a Microsoft 365 group. The property is returned only when specified in `$select`.

### Mail | Message trace

Added support to identify recalled messages in message trace. Use `recalled` as a supported value of the **status** property of the [exchangeMessageTrace](/graph/api/resources/exchangemessagetrace?view=graph-rest-beta&preserve-view=true) resource.

### Mailbox import and export

- Added the **isHidden** property to the [mailboxFolder](/graph/api/resources/mailboxfolder?view=graph-rest-beta&preserve-view=true) resource to identify hidden mailbox folders.
- Use the existing **includeHiddenFolders** query parameter for [listing folders](/graph/api/mailbox-list-folders?view=graph-rest-beta&preserve-view=true) and [listing child folders](/graph/api/mailboxfolder-list-childfolders?view=graph-rest-beta&preserve-view=true). Set it to `true` to include both hidden and nonhidden folders.

### Reports | Identity and access reports

- Added the [appManagementAudit](/graph/api/resources/appmanagementaudit?view=graph-rest-beta&preserve-view=true) resource type and related methods to retrieve Microsoft Entra application management audit logs. Use these APIs to understand how app management policy restrictions affected application and service principal changes.
- Added the `passwordUpdate` member to the **eventType** property of the [appliedAuthenticationEventListener](/graph/api/resources/appliedauthenticationeventlistener?view=graph-rest-beta&preserve-view=true) resource to identify OnPasswordUpdate custom extension listeners triggered during sign-ins.

### Security

Added the **incidentConfiguration** property to the [detectionAction](/graph/api/resources/security-detectionaction?view=graph-rest-beta&preserve-view=true) resource and the [incidentConfiguration](/graph/api/resources/security-incidentconfiguration?view=graph-rest-beta&preserve-view=true) complex type. Use this setting to exclude alerts generated by a custom detection rule from automatic incident correlation and create standalone, single-alert incidents.

### Security | Audit log query

Added 35 members, from `PlannerCustomFieldDefinition` through `MESRawEmailContentMetadata`, to the [auditLogRecordType](/graph/api/resources/security-auditlogrecordtype?view=graph-rest-beta&preserve-view=true) enumeration and added the matching [auditData derived types](/graph/api/resources/security-auditdata-derived-types?view=graph-rest-beta&preserve-view=true) to represent workload-specific audit event payloads.

### Security | Data security and compliance

Applications can now supply one or more sensitivity labels with file content submitted to the [processContent](/graph/api/userdatasecurityandgovernance-processcontent?view=graph-rest-beta&preserve-view=true) API by using the **sensitivityLabels** property of [processContentMetadataBase](/graph/api/resources/processcontentmetadatabase?view=graph-rest-beta&preserve-view=true).

Added the `unknownFutureValue` member to the [applicationMode](/graph/api/resources/enums?view=graph-rest-beta&preserve-view=true#applicationmode-values) enumeration as a sentinel for future application modes.

Updated the **evaluationErrorType** enumeration to use customer-facing reasons for incomplete policy evaluations, and removed the **errorMessage** property from the [evaluationErrorDetail](/graph/api/resources/evaluationerrordetail?view=graph-rest-beta&preserve-view=true) complex type. Use **errorType** to identify why an evaluation couldn't be completed.

### Security | Workbooks

- Added the [workbook](/graph/api/resources/security-workbook?view=graph-rest-beta&preserve-view=true) resource type and related methods to manage tenant-scoped Microsoft Security workbook documents. Use stable IDs for repeatable deployments and replace a workbook's JSON content as a complete document.

### Teamwork and communications | Messaging

Added support for setting and unsetting custom emoji reactions on chat messages by specifying a display name (**displayName**), service-issued identifier (**reactionId**), or both. For more information, see [chatMessageReaction](/graph/api/resources/chatmessagereaction?view=graph-rest-beta&preserve-view=true).

## September 2026: New and generally available

### Applications

- Updated the availability of the **coopEnforcement** property on the [authenticationBehaviors](/graph/api/resources/authenticationbehaviors) resource to include the supported national cloud deployments: US Government L4, US Government L5 (DoD), and China operated by 21Vianet.

### Calendars | Work hours and locations

Added app-only support to the [workHoursAndLocationsSetting](/graph/api/resources/workhoursandlocationssetting), [workPlanOccurrence](/graph/api/resources/workplanoccurrence), and [workPlanRecurrence](/graph/api/resources/workplanrecurrence) resources and related methods. Apps can use the `Calendars.Read.All` application permission to read a user's setting, recurrences, and occurrences, and `Calendars.ReadWrite.All` to create, update, and delete them.

### Change notifications

Promoted the `unknownFutureValue` member of the **changeType** enumeration from beta to v1.0. The enumeration is used by the [changeNotification](/graph/api/resources/changenotification) and [commsNotification](/graph/api/resources/commsnotification) resources to identify notification change types.

### Files

- Added the **isPatternToken** property to the [fileStorageContainerCustomPropertyValue](/graph/api/resources/filestoragecontainercustompropertyvalue) resource to indicate whether a custom property value is a `urlTemplate` pattern that consumers must resolve before use, rather than a literal value.
- Added the **isOfficeRestricted** property to the [fileStorageContainerTypeSettings](/graph/api/resources/filestoragecontainertypesettings) and [fileStorageContainerTypeRegistrationSettings](/graph/api/resources/filestoragecontainertyperegistrationsettings) resources, and the **fileStorageContainerTypeSettingsOverride** enumeration.
- Use the [revokeGrants](/graph/api/permission-revokegrants) method of the [permission](/graph/api/resources/permission) resource to revoke access to a sharing link for specified recipients.

### Groups

Added the **onPremisesExtensionAttributes** property to the [group](/graph/api/resources/group) resource. Use it to access extension attributes 1-15 synchronized from on-premises Active Directory.

### Identity and access | Directory management

- Added the [directoryRoleManagementDeletedItemContainer](/graph/api/resources/directoryrolemanagementdeleteditemcontainer) resource type and related methods to v1.0. Use these APIs to list and inspect soft-deleted custom roles, restore them to the active role definitions collection, or permanently delete them.
- Added the [provision](/graph/api/device-provision) action to the [device](/graph/api/resources/device) resource in v1.0 to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.
Added the [provision](/graph/api/device-provision) action to the [device](/graph/api/resources/device) resource in v1.0 to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.

### Identity and access | Governance

- Added the [roleManagementCustomCalloutExtension](/graph/api/resources/rolemanagementcustomcalloutextension) resource type and related methods for integrating external approval, ticketing, compliance, and audit workflows into Privileged Identity Management role assignment lifecycle events.
- Promoted the **access reviews customer-provided data** APIs from beta to v1.0. Use them to review entitlement data that you upload for resources that Microsoft Entra doesn't discover itself, such as third-party applications. The promoted surface includes:
  - the **description** property on [accessReviewInstanceDecisionItemResource](/graph/api/resources/accessreviewinstancedecisionitemresource) to describe the resource under review.
  - [accessReviewInstanceDecisionItemPermission](/graph/api/resources/accessreviewinstancedecisionitempermission) complex type and the **permission** property on [accessReviewInstanceDecisionItem](/graph/api/resources/accessreviewinstancedecisionitem), which describe the permission that grants the principal access to the resource under review.
  - [accessReviewInstanceDecisionItemCustomDataProvidedResource](/graph/api/resources/accessreviewinstancedecisionitemcustomdataprovidedresource) complex type, which represents a decision item resource whose entitlement data is supplied by the customer rather than discovered by Microsoft Entra.
  - [batchApplyCustomDataProvidedResourceDecisions](/graph/api/accessreviewinstance-batchapplycustomdataprovidedresourcedecisions) method on [accessReviewInstance](/graph/api/resources/accessreviewinstance) to set the apply result on all decision items that match a customer-provided resource in one call.
  - [accessReviewInstanceDecisionItemApplyResult](/graph/api/resources/enums#accessreviewinstancedecisionitemapplyresult-values) enumeration type to represent the result of applying a recorded decision to the target resource.
- Clarified that the [List resources](/graph/api/accesspackagecatalog-list-resources) method returns SharePoint Online resources only when it's called with delegated permissions. To retrieve SharePoint site information with application permissions, use the [sites: getAllSites](/graph/api/site-getallsites) method.

### Identity and access | Identity and sign-in

- Added the [resourceAccountKeyAuthenticationMethod](/graph/api/resources/resourceaccountkeyauthenticationmethod) resource type and related methods for managing resource account key credentials on shared devices. Use the APIs to list, get, and delete credentials that enable devices such as Teams Rooms and Teams phones to sign in without user interaction.
- Added the [anonymousCalendarSharingFreeBusyDetail](/graph/api/resources/anonymouscalendarsharingfreebusydetail), [anonymousCalendarSharingFreeBusyReviewer](/graph/api/resources/anonymouscalendarsharingfreebusyreviewer), and [anonymousCalendarSharingFreeBusySimple](/graph/api/resources/anonymouscalendarsharingfreebusysimple) resource types. Use these cross-tenant access policy capabilities to authorize anonymous external users to view calendar free/busy information at different levels of detail.

### Security | Audit log query

Added the **isRecordCountLimitExceeded**, **recordCountLimit**, and **approximateReturnedRecordCount** properties to the [auditLogQuery](/graph/api/resources/security-auditlogquery) resource. Use these properties to determine whether a completed query exceeded the per-search record-count limit and to inspect the applicable limit and approximate returned record count.

### Teamwork and communications | Messaging

Updated the [getAllRetainedMessages](/graph/api/channel-getallretainedmessages) method to support exporting retained versions of private-channel messages that were edited or deleted after the tenant completed private-channel storage migration.

## September 2026: New in preview only

### Agents

Added the **isDisabled** property to the [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint?view=graph-rest-beta&preserve-view=true) resource. Use it to deactivate an agent identity blueprint without deleting it.

### Applications

- Updated the availability of the **coopEnforcement** property on the [authenticationBehaviors](/graph/api/resources/authenticationbehaviors?view=graph-rest-beta&preserve-view=true) resource to include the supported national cloud deployments: US Government L4, US Government L5 (DoD), and China operated by 21Vianet.
- Added the **isDeviceAccessEnabled** property to the [onPremisesPublishing](/graph/api/resources/onpremisespublishing?view=graph-rest-beta&preserve-view=true) resource to configure device access for Microsoft Entra Private Access.

### Backup and recovery | Microsoft 365 backup and storage

- Added the **policyId** property to the [restoreSessionBase](/graph/api/resources/restoresessionbase?view=graph-rest-beta&preserve-view=true) resource type to scope restore sessions to a protection policy.
- Added the optional **policyId** parameter to the [restorePoint: search](/graph/api/restorepoint-search?view=graph-rest-beta&preserve-view=true) method to validate protection-unit membership and improve policy-scoped routing. You can also filter the restore points collection by `protectionUnit/policyId`.

### Backup storage

- Added the [getStatisticsByPolicy](/graph/api/backupreport-getstatisticsbypolicy?view=graph-rest-beta&preserve-view=true) method to retrieve policy-level protection statistics for Microsoft 365 Backup Storage. Use the report to monitor protected and unprotected artifacts across completed, in-progress, and failed states, review offboarding activity, and determine when the metrics were last calculated.

### Calendar | Places

- Added the [stringDictionary](/graph/api/resources/stringdictionary?view=graph-rest-beta&preserve-view=true) resource type to represent custom string key-value pairs.
- Added the **customProperties** property to the [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) resource type to store customer-defined string key-value pairs.
- Added the read-only **lastUpdatedTime** property to the [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) resource type to indicate when the place was last updated.

### Calendars | Work hours and locations

Added app-only support to the [workHoursAndLocationsSetting](/graph/api/resources/workhoursandlocationssetting?view=graph-rest-beta&preserve-view=true), [workPlanOccurrence](/graph/api/resources/workplanoccurrence?view=graph-rest-beta&preserve-view=true), and [workPlanRecurrence](/graph/api/resources/workplanrecurrence?view=graph-rest-beta&preserve-view=true) resources and related methods. Apps can use the `Calendars.Read.All` application permission to read a user's setting, recurrences, and occurrences, and `Calendars.ReadWrite.All` to create, update, and delete them.

### Change notifications

Added the `unknownFutureValue` member to the **changeType** enumeration used by the [changeNotification](/graph/api/resources/changenotification?view=graph-rest-beta&preserve-view=true) resource to support forward-compatible notification change types.

### Device and app management | Cloud PC

- Added the **isDisasterRecoveryActive** property to the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource to indicate whether the Cloud PC currently runs in its disaster recovery region after a failover event.
- Use `failoverInProgress` and `failbackInProgress` as supported values for the **status** property on the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) and [cloudPcStatusSummary](/graph/api/resources/cloudpcstatussummary?view=graph-rest-beta&preserve-view=true) resources.

### Files

- Added the **userObjectId** parameter to the [getByUser](/graph/api/filestoragecontainer-getbyuser?view=graph-rest-beta&preserve-view=true) method on the [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) resource to retrieve a list of file storage containers owned by a user by passing the user's Microsoft Entra ID object ID.
- Added the **isPatternToken** property to the [fileStorageContainerCustomPropertyValue](/graph/api/resources/filestoragecontainercustompropertyvalue?view=graph-rest-beta&preserve-view=true) resource to indicate whether a custom property value is a `urlTemplate` pattern that consumers must resolve before use, rather than a literal value.

### Identity and access | Directory management

- Added the [directoryRoleManagementDeletedItemContainer](/graph/api/resources/directoryrolemanagementdeleteditemcontainer?view=graph-rest-beta&preserve-view=true) resource type and related methods for recovering custom role definitions that have been deleted. Use these APIs to list and inspect soft-deleted custom roles, including when they were deleted through the **deletedDateTime** property, restore them to the active role definitions collection, or permanently delete them.
- Added the [provision](/graph/api/device-provision?view=graph-rest-beta&preserve-view=true) action to the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.

### Groups

- Added the **disableNesting** property to the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource. Use it to prevent other groups from being added as members of a security group.

### Identity and access | Directory management

Added the [provision](/graph/api/device-provision?view=graph-rest-beta&preserve-view=true) action to the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.

### Identity and access | Governance

- Added the [accessReviewCatalogScope](/graph/api/resources/accessreviewcatalogscope?view=graph-rest-beta&preserve-view=true) resource to scope an access review to an entitlement management catalog. Use the **additionalCatalogResourceTypes** property to review access packages in the catalog, in addition to the groups, applications, and custom data provided resources that are always reviewed.
- Clarified that the [Get accessPackageResourceEnvironment](/graph/api/accesspackageresourceenvironment-get?view=graph-rest-beta&preserve-view=true) method returns SharePoint Online resource environments only when it's called with delegated permissions. A SharePoint Online resource environment corresponds to a SharePoint root site, so to retrieve root site information with application permissions, use the [List sites](/graph/api/site-list?view=graph-rest-beta&preserve-view=true) method with the `$filter=siteCollection/root ne null` query option.
- Added public preview support for lifecycle policies that govern agent identities and guest users. Use [lifecyclePolicy](/graph/api/resources/identitygovernance-lifecyclepolicy?view=graph-rest-beta&preserve-view=true) and its derived policy types to configure scope, rules, workflow enforcement, impact evaluation, and processing reports.
- Added the [selectedAgentBuilderPlatformsSubjectSet](/graph/api/resources/identitygovernance-selectedagentbuilderplatformssubjectset?view=graph-rest-beta&preserve-view=true) resource type to include only agent identities created by selected builder platforms in an agent identity lifecycle policy scope.
- Added guest-user lifecycle actions to [attest](/graph/api/user-attest?view=graph-rest-beta&preserve-view=true), [add the signed-in user as a sponsor](/graph/api/user-addselfassponsor?view=graph-rest-beta&preserve-view=true), and [remove the signed-in user as a sponsor](/graph/api/user-removeselfassponsor?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

Added the **requireCertificateSidAlignment** property to the [x509CertificateAuthenticationMethodConfiguration](/graph/api/resources/x509certificateauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resource. Use it to require certificate SID alignment for hybrid and cloud-only users during certificate-based authentication.

### Identity and access | Monitoring & health

- Added support for tagging Microsoft Entra recommendations and their impacted resources. Use the [recommendation: addTag](/graph/api/recommendation-addtag?view=graph-rest-beta&preserve-view=true), [recommendation: removeTag](/graph/api/recommendation-removetag?view=graph-rest-beta&preserve-view=true), [impactedResource: addTag](/graph/api/impactedresource-addtag?view=graph-rest-beta&preserve-view=true), and [impactedResource: removeTag](/graph/api/impactedresource-removetag?view=graph-rest-beta&preserve-view=true) methods to manage the **tags** relationship, backed by the new [recommendationTag](/graph/api/resources/recommendationtag?view=graph-rest-beta&preserve-view=true) resource. You can also add or remove a tag on up to 50 impacted resources in a single request by using the [impactedResource: addTag](/graph/api/impactedresource-addtag-collection?view=graph-rest-beta&preserve-view=true) and [impactedResource: removeTag](/graph/api/impactedresource-removetag-collection?view=graph-rest-beta&preserve-view=true) methods.
- Added alternate remediation states for recommendations and impacted resources. Use the [markPlanned](/graph/api/recommendation-markplanned?view=graph-rest-beta&preserve-view=true), [acceptRisk](/graph/api/recommendation-acceptrisk?view=graph-rest-beta&preserve-view=true), and [applyAlternateMitigation](/graph/api/recommendation-applyalternatemitigation?view=graph-rest-beta&preserve-view=true) methods on the [recommendation](/graph/api/resources/recommendation?view=graph-rest-beta&preserve-view=true) resource, and the corresponding methods on the [impactedResource](/graph/api/resources/impactedresource?view=graph-rest-beta&preserve-view=true) resource.
- Added the `needsMoreAction` member to the **recommendationStatus** enumeration, and the `critical` member to the **recommendationPriority** enumeration.
- Added the [nistClassification](/graph/api/resources/nistclassification?view=graph-rest-beta&preserve-view=true) resource and the **nistClassifications** property to the [recommendationBase](/graph/api/resources/recommendationbase?view=graph-rest-beta&preserve-view=true) resource to map recommendations to NIST Cybersecurity Framework 2.0 functions and categories.
- Added the **categoryGroup** property (and the new **recommendationCategoryGroup** enumeration), **completedBySystemDateTime**, **completedByUserDateTime**, **failedReviewDateTime**, **needsMoreActionResourceCount**, **remediatedDateTime**, and **statusModifiedDateTime** properties to the [recommendationBase](/graph/api/resources/recommendationbase?view=graph-rest-beta&preserve-view=true) resource. Added the `microsoftEntraSuite` member to the **requiredLicenses** enumeration and the **lastRefreshedDateTime** property to the [recommendationConfiguration](/graph/api/resources/recommendationconfiguration?view=graph-rest-beta&preserve-view=true) resource.

### People and workplace intelligence | Analytics

Added the **sensitivityLabel** property to the [searchHit](/graph/api/resources/searchhit?view=graph-rest-beta&preserve-view=true) resource type to provide sensitivity-label information for the search result resource.

### Reports | Partner billing reports

Added the [billedAggregatedUsage](/graph/api/resources/partners-billing-billedaggregatedusage?view=graph-rest-beta&preserve-view=true) resource type and related export method for CSP partners to generate billed aggregated Azure usage reports for a specific invoice.

### Security | Audit log query

Added the **isRecordCountLimitExceeded**, **recordCountLimit**, and **approximateReturnedRecordCount** properties to the [auditLogQuery](/graph/api/resources/security-auditlogquery?view=graph-rest-beta&preserve-view=true) resource. Use these properties to determine whether a completed query exceeded the per-search record-count limit and to inspect the applicable limit and approximate returned record count.

### Security | Data security and compliance

- Added the `contentFiltering` member to the [userActivityTypes](/graph/api/resources/enums-security?view=graph-rest-beta&preserve-view=true#useractivitytypes-values) enumeration used by the [compute protection scopes for a user](/graph/api/userprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) and [compute protection scopes for a tenant](/graph/api/tenantprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) APIs, enabling applications to determine whether data loss prevention policies govern content filtering before evaluating content.
- Updated the [contentActivity](/graph/api/resources/contentactivity?view=graph-rest-beta&preserve-view=true) resource to support reporting Secure by Default policy evaluations that couldn't be completed. Enforcement planes can submit structured incomplete-inspection reasons through the existing content activity ingestion API.
- Added the **policyConfiguration** property to the [policyScopeBase](/graph/api/resources/policyscopebase?view=graph-rest-beta&preserve-view=true) resource type. Enforcement planes can use the effective Secure by Default configuration returned by the protection scope APIs to determine whether to audit or block content when policy evaluation can't be completed.
- Added support for applying Microsoft Purview data loss prevention policies to agent interactions. Use [tenantProtectionScopeContainer: compute](/graph/api/tenantprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) to retrieve agent policy scopes, and use the tenant-scoped [processContent](/graph/api/tenantdatasecurityandgovernance-processcontent?view=graph-rest-beta&preserve-view=true) method to evaluate content exchanged between protected agents and users, other agents, or tools.

### Tasks and plans

Added the [plan](/graph/api/resources/plan?view=graph-rest-beta&preserve-view=true) resource type for Planner Graph V4. Use these APIs to create and manage plans and tasks with richer scheduling, dependency, custom field, and chat capabilities than the existing Planner API surface.

### Teamwork and communications | Messaging

Updated the [getAllRetainedMessages](/graph/api/channel-getallretainedmessages?view=graph-rest-beta&preserve-view=true) method to document support for retained private-channel message versions captured after the tenant's private-channel storage migration completed.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
