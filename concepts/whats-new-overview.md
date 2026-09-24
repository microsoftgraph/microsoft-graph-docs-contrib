---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 09/14/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## September 2026: New and generally available

### Groups

Added the **onPremisesExtensionAttributes** property to the [group](/graph/api/resources/group) resource. Use it to access extension attributes 1-15 synchronized from on-premises Active Directory.

### Identity and access | Governance

- Promoted the **access reviews customer-provided data** APIs from beta to v1.0. Use them to review entitlement data that you upload for resources that Microsoft Entra doesn't discover itself, such as third-party applications. The promoted surface includes:
  - the **description** property on [accessReviewInstanceDecisionItemResource](/graph/api/resources/accessreviewinstancedecisionitemresource) to describe the resource under review.
  - [accessReviewInstanceDecisionItemPermission](/graph/api/resources/accessreviewinstancedecisionitempermission) complex type and the **permission** property on [accessReviewInstanceDecisionItem](/graph/api/resources/accessreviewinstancedecisionitem), which describe the permission that grants the principal access to the resource under review.
  - [accessReviewInstanceDecisionItemCustomDataProvidedResource](/graph/api/resources/accessreviewinstancedecisionitemcustomdataprovidedresource) complex type, which represents a decision item resource whose entitlement data is supplied by the customer rather than discovered by Microsoft Entra.
  - [batchApplyCustomDataProvidedResourceDecisions](/graph/api/accessreviewinstance-batchapplycustomdataprovidedresourcedecisions) method on [accessReviewInstance](/graph/api/resources/accessreviewinstance) to set the apply result on all decision items that match a customer-provided resource in one call.
  - [accessReviewInstanceDecisionItemApplyResult](/graph/api/resources/enums#accessreviewinstancedecisionitemapplyresult-values) enumeration type to represent the result of applying a recorded decision to the target resource.
- Clarified that the [List resources](/graph/api/accesspackagecatalog-list-resources) method returns SharePoint Online resources only when it's called with delegated permissions. To retrieve SharePoint site information with application permissions, use the [sites: getAllSites](/graph/api/site-getallsites) method.

### Teamwork and communications | Messaging

Updated the [getAllRetainedMessages](/graph/api/channel-getallretainedmessages) method to support exporting retained versions of private-channel messages that were edited or deleted after the tenant completed private-channel storage migration.

## September 2026: New in preview only

### Agents

Added the **isDisabled** property to the [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint?view=graph-rest-beta&preserve-view=true) resource. Use it to deactivate an agent identity blueprint without deleting it.

### Backup and recovery | Microsoft 365 backup and storage

- Added the **policyId** property to the [restoreSessionBase](/graph/api/resources/restoresessionbase?view=graph-rest-beta&preserve-view=true) resource type to scope restore sessions to a protection policy.
- Added the optional **policyId** parameter to the [restorePoint: search](/graph/api/restorepoint-search?view=graph-rest-beta&preserve-view=true) method to validate protection-unit membership and improve policy-scoped routing. You can also filter the restore points collection by `protectionUnit/policyId`.

### Backup storage

- Added the [getStatisticsByPolicy](/graph/api/backupreport-getstatisticsbypolicy?view=graph-rest-beta&preserve-view=true) method to retrieve policy-level protection statistics for Microsoft 365 Backup Storage. Use the report to monitor protected and unprotected artifacts across completed, in-progress, and failed states, review offboarding activity, and determine when the metrics were last calculated.

### Calendar | Places

- Added the [stringDictionary](/graph/api/resources/stringdictionary?view=graph-rest-beta&preserve-view=true) resource type to represent custom string key-value pairs.
- Added the **customProperties** property to the [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) resource type to store customer-defined string key-value pairs.
- Added the read-only **lastUpdatedTime** property to the [place](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) resource type to indicate when the place was last updated.

### Device and app management | Cloud PC

- Added the **isDisasterRecoveryActive** property to the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource to indicate whether the Cloud PC currently runs in its disaster recovery region after a failover event.
- Use `failoverInProgress` and `failbackInProgress` as supported values for the **status** property on the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) and [cloudPcStatusSummary](/graph/api/resources/cloudpcstatussummary?view=graph-rest-beta&preserve-view=true) resources.

### Files

- Added the **userObjectId** parameter to the [getByUser](/graph/api/filestoragecontainer-getbyuser?view=graph-rest-beta&preserve-view=true) method on the [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) resource to retrieve a list of file storage containers owned by a user by passing the user's Microsoft Entra ID object ID.

### Identity and access | Directory management

- Added the [provision](/graph/api/device-provision?view=graph-rest-beta&preserve-view=true) action to the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.

### Identity and access | Governance

Clarified that the [Get accessPackageResourceEnvironment](/graph/api/accesspackageresourceenvironment-get?view=graph-rest-beta&preserve-view=true) method returns SharePoint Online resource environments only when it's called with delegated permissions. A SharePoint Online resource environment corresponds to a SharePoint root site, so to retrieve root site information with application permissions, use the [List sites](/graph/api/site-list?view=graph-rest-beta&preserve-view=true) method with the `$filter=siteCollection/root ne null` query option.

### People and workplace intelligence | Analytics

Added the **sensitivityLabel** property to the [searchHit](/graph/api/resources/searchhit?view=graph-rest-beta&preserve-view=true) resource type to provide sensitivity-label information for the search result resource.

### Security | Data security and compliance

Added the `contentFiltering` member to the [userActivityTypes](/graph/api/resources/enums-security?view=graph-rest-beta&preserve-view=true#useractivitytypes-values) enumeration used by the [compute protection scopes for a user](/graph/api/userprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) and [compute protection scopes for a tenant](/graph/api/tenantprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) APIs, enabling applications to determine whether data loss prevention policies govern content filtering before evaluating content.

Updated the [contentActivity](/graph/api/resources/contentactivity?view=graph-rest-beta&preserve-view=true) resource to support reporting Secure by Default policy evaluations that couldn't be completed. Enforcement planes can submit structured incomplete-inspection reasons through the existing content activity ingestion API.

### Security | Audit log query

- Added the **isRecordCountLimitExceeded**, **recordCountLimit**, and **approximateReturnedRecordCount** properties to the [auditLogQuery](/graph/api/resources/security-auditlogquery?view=graph-rest-beta&preserve-view=true) resource. Use these properties to determine whether a completed query exceeded the per-search record-count limit and to inspect the applicable limit and approximate returned record count.

### Teamwork and communications | Messaging

Updated the [getAllRetainedMessages](/graph/api/channel-getallretainedmessages?view=graph-rest-beta&preserve-view=true) method to document support for retained private-channel message versions captured after the tenant's private-channel storage migration completed.

## August 2026: New and generally available

### Applications

- Added the [authenticationBehaviors](/graph/api/resources/authenticationbehaviors) resource type and the **coopEnforcement** property to the v1.0 endpoint. Application owners can use the property to explicitly test Cross-Origin-Opener-Policy enforcement, temporarily suppress enforcement while remediating an incompatible browser authentication flow, or return to the service default. The property is available in the global service only and isn't available in national cloud deployments.
- Added the **authenticationBehaviors** property to the [application](/graph/api/resources/application) resource type in v1.0. Returned only on `$select`.

### Change notifications | Subscription

- Added support for delivering change notifications to Web Push endpoints (RFC 8291) for the [subscription](/graph/api/resources/subscription) resource type.
- Added the [getVapidPublicKey](/graph/api/subscription-getvapidpublickey) method to obtain the VAPID public key (RFC 8292) used when creating Web Push subscriptions.

### Files

- Added the [Upsert columns](/graph/api/filestoragecontainer-patch-columns) method to the [fileStorageContainer](/graph/api/resources/filestoragecontainer) resource type to create or update up to 20 columnDefinition objects in a single request.
- Added the **appliedByUser** parameter to the [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel) action on the [driveItem](/graph/api/resources/driveitem) resource. This parameter allows app-only callers to specify the user identity on whose behalf the sensitivity label is applied.

### Identity and access | Directory management

- Added the **managerApplications** property to the [agentIdentity](/graph/api/resources/agentidentity) and [agentIdentityBlueprintPrincipal](/graph/api/resources/agentidentityblueprintprincipal) resources to identify the applications that manage the backing agent identity blueprint.

Added the [recovery](/graph/api/resources/entrarecoveryservices-recovery) resource type and related methods to programmatically recover critical Microsoft Entra directory objects from automatically created point-in-time snapshots. Use these APIs to inspect available snapshots, preview and scope changes before restoration, run recovery jobs, monitor progress, and review failed changes.

### Identity and access | Governance

- Added the [externalSapAcConnectionInfo](/graph/api/resources/externalsapacconnectioninfo) complex type, along with the supporting [authenticationInfo](/graph/api/resources/authenticationinfo) and [clientCredentialAuthenticationInfo](/graph/api/resources/clientcredentialauthenticationinfo) types, to configure connections from Microsoft Entra entitlement management to SAP Access Control (AC) systems. Set these on the **connectionInfo** property of an [externalOriginResourceConnector](/graph/api/resources/externaloriginresourceconnector) when its **connectorType** is `sapAc`.
- Promoted the **Lifecycle Workflows provisioning and workflow subject** APIs from beta to v1.0, introducing a broader, extensible subject model for workflows and surfacing per-subject processing results. The promoted surface includes:
  - [workflowSubject](/graph/api/resources/identitygovernance-workflowsubject) base type and its [provisioningObjectWorkflowSubject](/graph/api/resources/identitygovernance-provisioningobjectworkflowsubject) and [directoryObjectWorkflowSubject](/graph/api/resources/identitygovernance-directoryobjectworkflowsubject) derived types
  - [subjectProcessingResult](/graph/api/resources/identitygovernance-subjectprocessingresult) resource with the **subjectProcessingResults** navigation property on the [run](/graph/api/resources/identitygovernance-run) and [workflow](/graph/api/resources/identitygovernance-workflow) resources
  - [subjectSummary](/graph/api/resources/identitygovernance-subjectsummary) resource and the [summary](/graph/api/identitygovernance-subjectprocessingresult-summary) method on the [subjectProcessingResult](/graph/api/resources/identitygovernance-subjectprocessingresult) resource
  - [activateAndWait](/graph/api/identitygovernance-workflow-activateandwait) action on the [workflow](/graph/api/resources/identitygovernance-workflow) resource, returning the [awaitedWorkflowProcessingResult](/graph/api/resources/identitygovernance-awaitedworkflowprocessingresult) resource
  - [provisioningAttributeMapping](/graph/api/resources/identitygovernance-provisioningattributemapping) and [attributeSetEntry](/graph/api/resources/identitygovernance-attributesetentry) resources
  - [customTaskExtensionResponseData](/graph/api/resources/identitygovernance-customtaskextensionresponsedata) resource, the **replyMode** property on [customTaskExtension](/graph/api/resources/identitygovernance-customtaskextension), and the **targetSubject** property on [customTaskExtensionCalloutData](/graph/api/resources/identitygovernance-customtaskextensioncalloutdata)
  - **targetSubjectType** property on [workflowBase](/graph/api/resources/identitygovernance-workflowbase) and **workflowSubject** property on [taskProcessingResult](/graph/api/resources/identitygovernance-taskprocessingresult)
  - [subjectType](/graph/api/resources/enums-identitygovernance#subjecttype-values) and [customTaskExtensionReplyMode](/graph/api/resources/enums-identitygovernance#customtaskextensionreplymode-values) enumerations, along with the `extensibility` and   `extensibilityOnDemand` enumeration members
- Added the [externalOriginResourceConnector](/graph/api/resources/externaloriginresourceconnector) resource type and methods to [create](/graph/api/entitlementmanagement-post-externaloriginresourceconnectors), [list](/graph/api/entitlementmanagement-list-externaloriginresourceconnectors), [get](/graph/api/externaloriginresourceconnector-get), [update](/graph/api/externaloriginresourceconnector-update), and [delete](/graph/api/externaloriginresourceconnector-delete) connections from Microsoft Entra entitlement management to SAP Identity Access Governance (SAP IAG). For an SAP IAG connector, specify the SAP IAG endpoint, OAuth token endpoint, and client ID, along with the Azure subscription, resource group, key vault, and secret that identify where its client secret is stored. The connector is associated with an access package resource so that entitlement management can provision access to resources in SAP IAG through access packages.
- Added the **reviewerId** and **scopeType** properties to [accessReviewReviewerScope](/graph/api/resources/accessreviewreviewerscope) to specify a reviewer directly or as a well-known scope instead of through a query.
- Added the **applyDescription** property to [accessReviewInstanceDecisionItem](/graph/api/resources/accessreviewinstancedecisionitem) to describe the result of applying a decision.
- Added the **appRoleId** and **appRoleDisplayName** properties to [accessReviewInstanceDecisionItemServicePrincipalResource](/graph/api/resources/accessreviewinstancedecisionitemserviceprincipalresource) to identify the app role under review.
- Added the **errors** property to [accessReviewInstance](/graph/api/resources/accessreviewinstance) and the [accessReviewError](/graph/api/resources/accessreviewerror) resource type to report errors that occur during the review instance lifecycle.
- Added the [accessReviewPrincipalScope](/graph/api/resources/accessreviewprincipalscope), [accessReviewResourceScope](/graph/api/resources/accessreviewresourcescope), and [accessReviewAccessPackageAssignmentPolicyScope](/graph/api/resources/accessreviewaccesspackageassignmentpolicyscope) resource types. Use them in the **principalScopes** and **resourceScopes** properties of [principalResourceMembershipsScope](/graph/api/resources/principalresourcemembershipsscope) to state which principals have their access to which resources reviewed without writing a query expression.
- Added the **accessReviewPrincipalScopeType**, **accessReviewResourceScopeType**, and **accessReviewReviewerScopeType** enumeration types to identify well-known principal, resource, and reviewer scopes.

### Identity and access | Identity and sign-in

Added support for managing Microsoft 365 cross-tenant capabilities in cross-tenant access policies. Use the [m365CapabilityBase](/graph/api/resources/m365capabilitybase) resource and the **m365Capabilities** relationship to manage which Microsoft 365 experiences—such as calendar sharing, MailTips, places booking, and cross-tenant migration—are enabled between tenants. For the default policy, you can [list](/graph/api/crosstenantaccesspolicyconfigurationdefault-list-m365capabilities), [create](/graph/api/crosstenantaccesspolicyconfigurationdefault-post-m365capabilities), and [update](/graph/api/crosstenantaccesspolicyconfigurationdefault-update-m365capabilities) capabilities. For partner policies, you can [list](/graph/api/crosstenantaccesspolicyconfigurationpartner-list-m365capabilities), [create](/graph/api/crosstenantaccesspolicyconfigurationpartner-post-m365capabilities), [update](/graph/api/crosstenantaccesspolicyconfigurationpartner-update-m365capabilities), and [delete](/graph/api/crosstenantaccesspolicyconfigurationpartner-delete-m365capabilities) capabilities.

### Mail

- Added the [note](/graph/api/resources/note) resource type and methods to [list](/graph/api/user-list-notes), [create](/graph/api/user-post-notes), [get](/graph/api/note-get), [update](/graph/api/note-update), and [delete](/graph/api/note-delete) quick-capture notes in a user's _Notes_ folder. Use [delta query](/graph/api/note-delta) to synchronize notes that were added, updated, or deleted since the previous request. You can also [list](/graph/api/note-list-attachments), [add](/graph/api/note-post-attachments), and [delete](/graph/api/attachment-delete) inline image attachments, and use open or legacy extended properties to store custom data on a note.

### Mailbox import and export

- Added the **wellKnownName** property to the [mailboxFolder](/graph/api/resources/mailboxfolder) resource type in v1.0. Use this property to identify folders created by Outlook by using a locale-independent name.
- Added the [Delete mailboxItem](/graph/api/mailboxfolder-delete-items) method to the [mailboxItem](/graph/api/resources/mailboxitem) resource type in v1.0. Use this method to delete an individual mailbox item from a mailbox folder with Exchange soft-delete or hard-delete semantics.

### Security

Updated the retirement date for the legacy Microsoft Graph [security alerts API](/graph/api/resources/alert) from August 31, 2026 to October 15, 2026.

### Identity and access | Monitoring & health

- Added support for tagging Microsoft Entra recommendations and their impacted resources. Use the [recommendation: addTag](/graph/api/recommendation-addtag?view=graph-rest-beta&preserve-view=true), [recommendation: removeTag](/graph/api/recommendation-removetag?view=graph-rest-beta&preserve-view=true), [impactedResource: addTag](/graph/api/impactedresource-addtag?view=graph-rest-beta&preserve-view=true), and [impactedResource: removeTag](/graph/api/impactedresource-removetag?view=graph-rest-beta&preserve-view=true) methods to manage the **tags** relationship, backed by the new [recommendationTag](/graph/api/resources/recommendationtag?view=graph-rest-beta&preserve-view=true) resource. You can also add or remove a tag on up to 50 impacted resources in a single request by using the [impactedResource: addTag](/graph/api/impactedresource-addtag-collection?view=graph-rest-beta&preserve-view=true) and [impactedResource: removeTag](/graph/api/impactedresource-removetag-collection?view=graph-rest-beta&preserve-view=true) methods.
- Added alternate remediation states for recommendations and impacted resources. Use the [markPlanned](/graph/api/recommendation-markplanned?view=graph-rest-beta&preserve-view=true), [acceptRisk](/graph/api/recommendation-acceptrisk?view=graph-rest-beta&preserve-view=true), and [applyAlternateMitigation](/graph/api/recommendation-applyalternatemitigation?view=graph-rest-beta&preserve-view=true) methods on the [recommendation](/graph/api/resources/recommendation?view=graph-rest-beta&preserve-view=true) resource, and the corresponding methods on the [impactedResource](/graph/api/resources/impactedresource?view=graph-rest-beta&preserve-view=true) resource.
- Added the `needsMoreAction` member to the **recommendationStatus** enumeration, and the `critical` member to the **recommendationPriority** enumeration.
- Added the [nistClassification](/graph/api/resources/nistclassification?view=graph-rest-beta&preserve-view=true) resource and the **nistClassifications** property to the [recommendationBase](/graph/api/resources/recommendationbase?view=graph-rest-beta&preserve-view=true) resource to map recommendations to NIST Cybersecurity Framework 2.0 functions and categories.
- Added the **categoryGroup** property (and the new **recommendationCategoryGroup** enumeration), **completedBySystemDateTime**, **completedByUserDateTime**, **failedReviewDateTime**, **needsMoreActionResourceCount**, **remediatedDateTime**, and **statusModifiedDateTime** properties to the [recommendationBase](/graph/api/resources/recommendationbase?view=graph-rest-beta&preserve-view=true) resource. Added the `microsoftEntraSuite` member to the **requiredLicenses** enumeration and the **lastRefreshedDateTime** property to the [recommendationConfiguration](/graph/api/resources/recommendationconfiguration?view=graph-rest-beta&preserve-view=true) resource.

### Teamwork and communications | Calls and online meetings

- Updated the [getAllRecordings](/graph/api/onlinemeeting-getallrecordings) and [getAllTranscripts](/graph/api/onlinemeeting-getalltranscripts) methods to document a service-update issue that can cause paginated requests to return an empty collection followed by duplicate items.
- Updated the [getAllRecordings](/graph/api/onlinemeeting-getallrecordings) method to return a Microsoft Graph URL that you can use to download recording content.

## August 2026: New in preview only


### Applications

- Added the **coopEnforcement** property to the [authenticationBehaviors](/graph/api/resources/authenticationbehaviors?view=graph-rest-beta&preserve-view=true) resource. Application owners can use it to explicitly test Cross-Origin-Opener-Policy enforcement, temporarily suppress enforcement while remediating an incompatible browser authentication flow, or return to the service default.

### Device and app management | Cloud PC

- Added the [retrieveCloudPcPerformanceMetricsReport](/graph/api/cloudpcreports-retrievecloudpcperformancemetricsreport?view=graph-rest-beta&preserve-view=true) method to the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource type. Use it to get VM-level utilization and performance metrics for a specific Cloud PC, including CPU, memory, and network metrics.

### Files

- Added the [Upsert columns](/graph/api/filestoragecontainer-patch-columns?view=graph-rest-beta&preserve-view=true) method to the [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) resource type to create or update up to 20 columnDefinition objects in a single request.
- Added the **appliedByUser** parameter to the [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel?view=graph-rest-beta&preserve-view=true) action on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) resource. This parameter allows app-only callers to specify the user identity on whose behalf the sensitivity label is applied, enabling label assignment for SharePoint Embedded containers.

### Identity and access | Governance

- Added support for configurable time-based lifecycle workflow triggers through the [timeBasedAttributeTriggerV2](/graph/api/resources/identitygovernance-timebasedattributetriggerv2?view=graph-rest-beta&preserve-view=true) resource. Select a date-type user attribute and configure an operator to run workflows on an exact date, within a rolling window, or between two offsets before or after that date.

### Identity and access | Identity and sign-in

- Added the [anonymousCalendarSharingFreeBusySimple](/graph/api/resources/anonymouscalendarsharingfreebusysimple?view=graph-rest-beta&preserve-view=true), [anonymousCalendarSharingFreeBusyDetail](/graph/api/resources/anonymouscalendarsharingfreebusydetail?view=graph-rest-beta&preserve-view=true), and [anonymousCalendarSharingFreeBusyReviewer](/graph/api/resources/anonymouscalendarsharingfreebusyreviewer?view=graph-rest-beta&preserve-view=true) capabilities that derive from [m365CapabilityBase](/graph/api/resources/m365capabilitybase?view=graph-rest-beta&preserve-view=true). Use these capabilities in cross-tenant access policies to authorize anonymous external users to view calendar free/busy information at simple, detailed, or reviewer fidelity.

### Mail

- Changed the **members** property on the [distributionList](/graph/api/resources/distributionlist?view=graph-rest-beta&preserve-view=true) resource to an expandable relationship. Use `$expand=members` with the [Get distribution list](/graph/api/distributionlist-get?view=graph-rest-beta&preserve-view=true) method instead of the removed standalone methods for listing and getting members.

### People and workplace intelligence

- Updated [Manage profile source precedence in Microsoft 365](/graph/profilepriority-configure-profilepropertysetting) to clarify supported data sources for HR and work position data, explain how source precedence affects single-value versus multi-value properties, and add guidance on correctly configuring and removing tenant-level settings using the Microsoft Graph API or PowerShell.
- Added the [People data sources in Microsoft 365](/graph/people-data-sources) concept article that describes the data sources that build the Microsoft 365 user profile, including Microsoft Entra ID, Copilot connectors, Organizational data, SharePoint, People Skills, user edits, and the API user source. The article also provides a reference table of built-in source IDs (GUIDs) and explains how source metadata appears in the profile API output.

### Security | Advanced hunting

- Added the [getHuntingSchemaTables](/graph/api/security-security-gethuntingschematables?view=graph-rest-beta&preserve-view=true) function to the [security](/graph/api/resources/security?view=graph-rest-beta&preserve-view=true) resource. Use it to retrieve only the advanced hunting tables that the signed-in user can access, returned as a collection so that you can apply OData query parameters to request a targeted subset of tables and columns.

### Security | Alerts and incidents

- Added the [createAlert](/graph/api/security-alert-createalert?view=graph-rest-beta&preserve-view=true) action to the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource for creating Microsoft 365 Defender alerts programmatically, including alert properties, incident-linking options, workspace routing, and inline entity definitions in a single request.

### Security | Case management

- Added the **slaPolicies** property to the [case](/graph/api/resources/security-casemanagement-case?view=graph-rest-beta&preserve-view=true) resource type, a read-only collection of [caseSlaPolicyEntry](/graph/api/resources/security-casemanagement-caseslapolicyentry?view=graph-rest-beta&preserve-view=true) objects that report the current status and breach target time of each SLA policy applied to a case.
- Added the [download attachment content](/graph/api/security-casemanagement-attachment-download-content?view=graph-rest-beta&preserve-view=true) and [upload attachment content](/graph/api/security-casemanagement-attachment-upload-content?view=graph-rest-beta&preserve-view=true) methods to the [attachment](/graph/api/resources/security-casemanagement-attachment?view=graph-rest-beta&preserve-view=true) resource type to transfer case evidence in chunks and retrieve it after malware scanning.
- Added the [get relation](/graph/api/security-casemanagement-relation-get?view=graph-rest-beta&preserve-view=true) and [delete relation](/graph/api/security-casemanagement-relation-delete?view=graph-rest-beta&preserve-view=true) methods to the [relation](/graph/api/resources/security-casemanagement-relation?view=graph-rest-beta&preserve-view=true) resource type to read and remove links between a case and related security resources.
- Added the [delete task](/graph/api/security-casemanagement-task-delete?view=graph-rest-beta&preserve-view=true) method to the [task](/graph/api/resources/security-casemanagement-task?view=graph-rest-beta&preserve-view=true) resource type to remove a task from a case.

### Security | Data security and compliance

- Added the `privacyDataMatch`, `aiPowered`, and `unknownFutureValue` members to the **classificationMethod** enumeration for the [sensitiveType](/graph/api/resources/sensitivetype?view=graph-rest-beta&preserve-view=true) resource. These members support privacy data matching based on tenant data, AI-powered classification that can benefit from supported caller-supplied embeddings, and forward-compatible handling of future values.
- Replaced the **offsetChunks** property and **embeddingOffsetChunk** resource type with the **chunkOffsets** property and [chunkOffsets](/graph/api/resources/chunkoffsets?view=graph-rest-beta&preserve-view=true) complex type in [embeddingInput](/graph/api/resources/embeddinginput?view=graph-rest-beta&preserve-view=true). Use **chunkOffsets** to associate precomputed embedding vectors with their source text ranges by using base64-encoded start positions and lengths.

### Teamwork and communications | Calls and online meetings

- Updated the [getAllRecordings](/graph/api/onlinemeeting-getallrecordings?view=graph-rest-beta&preserve-view=true) and [getAllTranscripts](/graph/api/onlinemeeting-getalltranscripts?view=graph-rest-beta&preserve-view=true) methods to document a service-update issue that can cause paginated requests to return an empty collection followed by duplicate items.

### Teamwork and communications | Messaging

- Added the [agentCommunicationConfiguration](/graph/api/resources/agentcommunicationconfiguration?view=graph-rest-beta&preserve-view=true) resource type and related methods to configure how agents send and receive messages in Microsoft Teams. Define default communication settings on an [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint?view=graph-rest-beta&preserve-view=true) and override them for a specific agent on [agentIdentity](/graph/api/resources/agentidentity?view=graph-rest-beta&preserve-view=true).
- Added the [reorder sections](/graph/api/teamworksection-reorder?view=graph-rest-beta&preserve-view=true) and [reorder section items](/graph/api/teamworksectionitem-reorder?view=graph-rest-beta&preserve-view=true) actions. Use these actions to apply a complete custom order to a user's sections or to the items in a user-defined section.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
