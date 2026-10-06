---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 10/01/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## September 2026: New and generally available

### Calendars | Work hours and locations

Added app-only support to the [workHoursAndLocationsSetting](/graph/api/resources/workhoursandlocationssetting), [workPlanOccurrence](/graph/api/resources/workplanoccurrence), and [workPlanRecurrence](/graph/api/resources/workplanrecurrence) resources and related methods. Apps can use the `Calendars.Read.All` application permission to read a user's setting, recurrences, and occurrences, and `Calendars.ReadWrite.All` to create, update, and delete them.

### Change notifications

Promoted the `unknownFutureValue` member of the **changeType** enumeration from beta to v1.0. The enumeration is used by the [changeNotification](/graph/api/resources/changenotification) and [commsNotification](/graph/api/resources/commsnotification) resources to identify notification change types.

### Files

- Added the **isPatternToken** property to the [fileStorageContainerCustomPropertyValue](/graph/api/resources/filestoragecontainercustompropertyvalue) resource to indicate whether a custom property value is a `urlTemplate` pattern that consumers must resolve before use, rather than a literal value.
- Added the **isOfficeRestricted** property to the [fileStorageContainerTypeSettings](/graph/api/resources/filestoragecontainertypesettings) and [fileStorageContainerTypeRegistrationSettings](/graph/api/resources/filestoragecontainertyperegistrationsettings) resources, and the **fileStorageContainerTypeSettingsOverride** enumeration.

### Groups

Added the **onPremisesExtensionAttributes** property to the [group](/graph/api/resources/group) resource. Use it to access extension attributes 1-15 synchronized from on-premises Active Directory.

### Identity and access | Directory management

- Added the [provision](/graph/api/device-provision) action to the [device](/graph/api/resources/device) resource in v1.0 to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.

### Identity and access | Governance

- Promoted the **access reviews customer-provided data** APIs from beta to v1.0. Use them to review entitlement data that you upload for resources that Microsoft Entra doesn't discover itself, such as third-party applications. The promoted surface includes:
  - the **description** property on [accessReviewInstanceDecisionItemResource](/graph/api/resources/accessreviewinstancedecisionitemresource) to describe the resource under review.
  - [accessReviewInstanceDecisionItemPermission](/graph/api/resources/accessreviewinstancedecisionitempermission) complex type and the **permission** property on [accessReviewInstanceDecisionItem](/graph/api/resources/accessreviewinstancedecisionitem), which describe the permission that grants the principal access to the resource under review.
  - [accessReviewInstanceDecisionItemCustomDataProvidedResource](/graph/api/resources/accessreviewinstancedecisionitemcustomdataprovidedresource) complex type, which represents a decision item resource whose entitlement data is supplied by the customer rather than discovered by Microsoft Entra.
  - [batchApplyCustomDataProvidedResourceDecisions](/graph/api/accessreviewinstance-batchapplycustomdataprovidedresourcedecisions) method on [accessReviewInstance](/graph/api/resources/accessreviewinstance) to set the apply result on all decision items that match a customer-provided resource in one call.
  - [accessReviewInstanceDecisionItemApplyResult](/graph/api/resources/enums#accessreviewinstancedecisionitemapplyresult-values) enumeration type to represent the result of applying a recorded decision to the target resource.
- Clarified that the [List resources](/graph/api/accesspackagecatalog-list-resources) method returns SharePoint Online resources only when it's called with delegated permissions. To retrieve SharePoint site information with application permissions, use the [sites: getAllSites](/graph/api/site-getallsites) method.

### Identity and access | Identity and sign-in

Added the [anonymousCalendarSharingFreeBusyDetail](/graph/api/resources/anonymouscalendarsharingfreebusydetail), [anonymousCalendarSharingFreeBusyReviewer](/graph/api/resources/anonymouscalendarsharingfreebusyreviewer), and [anonymousCalendarSharingFreeBusySimple](/graph/api/resources/anonymouscalendarsharingfreebusysimple) resource types. Use these cross-tenant access policy capabilities to authorize anonymous external users to view calendar free/busy information at different levels of detail.

### Security | Audit log query

- Added the **isRecordCountLimitExceeded**, **recordCountLimit**, and **approximateReturnedRecordCount** properties to the [auditLogQuery](/graph/api/resources/security-auditlogquery) resource. Use these properties to determine whether a completed query exceeded the per-search record-count limit and to inspect the applicable limit and approximate returned record count.

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

### Groups

- Added the **disableNesting** property to the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource. Use it to prevent other groups from being added as members of a security group.

### Identity and access | Directory management

- Added the [provision](/graph/api/device-provision?view=graph-rest-beta&preserve-view=true) action to the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource to enable approved Virtual Desktop Infrastructure (VDI) providers to provision devices in a customer's directory.

### Identity and access | Governance

Clarified that the [Get accessPackageResourceEnvironment](/graph/api/accesspackageresourceenvironment-get?view=graph-rest-beta&preserve-view=true) method returns SharePoint Online resource environments only when it's called with delegated permissions. A SharePoint Online resource environment corresponds to a SharePoint root site, so to retrieve root site information with application permissions, use the [List sites](/graph/api/site-list?view=graph-rest-beta&preserve-view=true) method with the `$filter=siteCollection/root ne null` query option.

- Added public preview support for lifecycle policies that govern agent identities and guest users. Use [lifecyclePolicy](/graph/api/resources/identitygovernance-lifecyclepolicy?view=graph-rest-beta&preserve-view=true) and its derived policy types to configure scope, rules, workflow enforcement, impact evaluation, and processing reports.
- Added guest-user lifecycle actions to [attest](/graph/api/user-attest?view=graph-rest-beta&preserve-view=true), [add the signed-in user as a sponsor](/graph/api/user-addselfassponsor?view=graph-rest-beta&preserve-view=true), and [remove the signed-in user as a sponsor](/graph/api/user-removeselfassponsor?view=graph-rest-beta&preserve-view=true).

### Identity and access | Monitoring & health

- Added support for tagging Microsoft Entra recommendations and their impacted resources. Use the [recommendation: addTag](/graph/api/recommendation-addtag?view=graph-rest-beta&preserve-view=true), [recommendation: removeTag](/graph/api/recommendation-removetag?view=graph-rest-beta&preserve-view=true), [impactedResource: addTag](/graph/api/impactedresource-addtag?view=graph-rest-beta&preserve-view=true), and [impactedResource: removeTag](/graph/api/impactedresource-removetag?view=graph-rest-beta&preserve-view=true) methods to manage the **tags** relationship, backed by the new [recommendationTag](/graph/api/resources/recommendationtag?view=graph-rest-beta&preserve-view=true) resource. You can also add or remove a tag on up to 50 impacted resources in a single request by using the [impactedResource: addTag](/graph/api/impactedresource-addtag-collection?view=graph-rest-beta&preserve-view=true) and [impactedResource: removeTag](/graph/api/impactedresource-removetag-collection?view=graph-rest-beta&preserve-view=true) methods.
- Added alternate remediation states for recommendations and impacted resources. Use the [markPlanned](/graph/api/recommendation-markplanned?view=graph-rest-beta&preserve-view=true), [acceptRisk](/graph/api/recommendation-acceptrisk?view=graph-rest-beta&preserve-view=true), and [applyAlternateMitigation](/graph/api/recommendation-applyalternatemitigation?view=graph-rest-beta&preserve-view=true) methods on the [recommendation](/graph/api/resources/recommendation?view=graph-rest-beta&preserve-view=true) resource, and the corresponding methods on the [impactedResource](/graph/api/resources/impactedresource?view=graph-rest-beta&preserve-view=true) resource.
- Added the `needsMoreAction` member to the **recommendationStatus** enumeration, and the `critical` member to the **recommendationPriority** enumeration.
- Added the [nistClassification](/graph/api/resources/nistclassification?view=graph-rest-beta&preserve-view=true) resource and the **nistClassifications** property to the [recommendationBase](/graph/api/resources/recommendationbase?view=graph-rest-beta&preserve-view=true) resource to map recommendations to NIST Cybersecurity Framework 2.0 functions and categories.
- Added the **categoryGroup** property (and the new **recommendationCategoryGroup** enumeration), **completedBySystemDateTime**, **completedByUserDateTime**, **failedReviewDateTime**, **needsMoreActionResourceCount**, **remediatedDateTime**, and **statusModifiedDateTime** properties to the [recommendationBase](/graph/api/resources/recommendationbase?view=graph-rest-beta&preserve-view=true) resource. Added the `microsoftEntraSuite` member to the **requiredLicenses** enumeration and the **lastRefreshedDateTime** property to the [recommendationConfiguration](/graph/api/resources/recommendationconfiguration?view=graph-rest-beta&preserve-view=true) resource.

### People and workplace intelligence | Analytics

Added the **sensitivityLabel** property to the [searchHit](/graph/api/resources/searchhit?view=graph-rest-beta&preserve-view=true) resource type to provide sensitivity-label information for the search result resource.

### Security

Added the **incidentConfiguration** property to the [detectionAction](/graph/api/resources/security-detectionaction?view=graph-rest-beta&preserve-view=true) resource and the [incidentConfiguration](/graph/api/resources/security-incidentconfiguration?view=graph-rest-beta&preserve-view=true) complex type. Use this setting to exclude alerts generated by a custom detection rule from automatic incident correlation and create standalone, single-alert incidents.

### Security | Audit log query

- Added the **isRecordCountLimitExceeded**, **recordCountLimit**, and **approximateReturnedRecordCount** properties to the [auditLogQuery](/graph/api/resources/security-auditlogquery?view=graph-rest-beta&preserve-view=true) resource. Use these properties to determine whether a completed query exceeded the per-search record-count limit and to inspect the applicable limit and approximate returned record count.

### Security | Data security and compliance

Added the `contentFiltering` member to the [userActivityTypes](/graph/api/resources/enums-security?view=graph-rest-beta&preserve-view=true#useractivitytypes-values) enumeration used by the [compute protection scopes for a user](/graph/api/userprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) and [compute protection scopes for a tenant](/graph/api/tenantprotectionscopecontainer-compute?view=graph-rest-beta&preserve-view=true) APIs, enabling applications to determine whether data loss prevention policies govern content filtering before evaluating content.

Added the **policyConfiguration** property to the [policyScopeBase](/graph/api/resources/policyscopebase?view=graph-rest-beta&preserve-view=true) resource type. Enforcement planes can use the effective Secure by Default configuration returned by the protection scope APIs to determine whether to audit or block content when policy evaluation can't be completed.

Updated the [contentActivity](/graph/api/resources/contentactivity?view=graph-rest-beta&preserve-view=true) resource to support reporting Secure by Default policy evaluations that couldn't be completed. Enforcement planes can submit structured incomplete-inspection reasons through the existing content activity ingestion API

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
