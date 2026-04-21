---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 04/17/2026
ms.topic: whats-new
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## April 2026: New and generally available

### Applications

- Added the [approvedClientApp](/graph/api/resources/approvedclientapp) resource type for managing approved client applications for [remote desktop access](/graph/api/resources/remotedesktopsecurityconfiguration).
- Added the **managerApplications** property to the [application](/graph/api/resources/application) and [agentIdentityBlueprint](/graph/api/resources/agentidentityblueprint) resources to enable Microsoft first-party applications to be designated as managers of agent blueprints.

### Backup storage

- When a [protection policy is deactivated](/graph/api/protectionpolicybase-deactivate), backup activity stops immediately, no new backups are taken, and the protected resources are no longer covered by the policy. Any backups taken before deactivation are retained according to the retention policy, after which they're offboarded. You can restore data using previous restore points even after deactivation.
- A [protection policy can be deleted](/graph/api/protectionpolicybase-delete) only after it was [deactivated](/graph/api/protectionpolicybase-deactivate). When you delete a policy, all associated protection units are removed, and backup protection stops for the resources previously covered by the policy. Existing backup data is retained according to the retention policy before it's offboarded. You can restore data using previous restore points even after deletion.

### Files

- Use the **height** and **width** parameters to [download a file in another format](/graph/api/driveitem-get-content-format) when `format=jpg`.
- Use the [List activities](/graph/api/itemactivity-list) API to retrieve recent activities that took place on a [drive](/graph/api/resources/drive), [list](/graph/api/resources/list), item, or within an item hierarchy.

### Identity and access | Governance

Use `approverRemove` as a new supported value for the **requestType** property of the [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest) resource. For more information, see [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest).

### Teamwork and communications | Apps

Manage Teams apps at the channel level within a team using the following APIs:
- [List apps](/graph/api/channel-list-enabledapps) in a channel.
- [Get an app](/graph/api/teamsapp-get) in a channel.
- [Enable a new Teams app](/graph/api/channel-post-enabledapps) in a channel.
- [Disable an app](/graph/api/channel-delete-enabledapps) in a channel.

### Teamwork and communications | Messaging

- Removed the `model` parameters and payment-model guidance from Microsoft Teams export APIs and related change-notification documentation. The `model` query parameter is no longer required and is ignored if supplied. For more information, see [Payment models and licensing requirements for Microsoft Teams APIs](/graph/teams-licenses).
- The following Microsoft Teams APIs support **@odata.nextLink** pagination to handle increased channel limits. When the result set spans multiple pages, the response includes the **@odata.nextLink** property with a URL for retrieving the next page of results:
  - [List channels](/graph/api/channel-list)
  - [List incomingChannels](/graph/api/team-list-incomingchannels)
  - [List allChannels](/graph/api/team-list-allchannels)

## April 2026: New in preview only

### Applications

Added the **deprecationDate** property to the [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true) resource to indicate when an application will be removed from the Microsoft Entra application gallery.

### Backup storage

- When a [protection policy is deactivated](/graph/api/protectionpolicybase-deactivate?view=graph-rest-beta&preserve-view=true), backup activity stops immediately, no new backups are taken, and the protected resources are no longer covered by the policy. Any backups taken before deactivation are retained according to the retention policy, after which they're offboarded. You can restore data using previous restore points even after deactivation.
- A [protection policy can be deleted](/graph/api/protectionpolicybase-delete?view=graph-rest-beta&preserve-view=true) only after it was [deactivated](/graph/api/protectionpolicybase-deactivate?view=graph-rest-beta&preserve-view=true). When you delete a policy, all associated protection units are removed, and backup protection stops for the resources previously covered by the policy. Existing backup data is retained according to the retention policy before it's offboarded. You can restore data using previous restore points even after deletion.
- Use the **billingPolicyId** property on [protectionUnitBase](/graph/api/resources/protectionunitbase?view=graph-rest-beta&preserve-view=true), [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) to get or set the unique identifier of the billing policy assigned to the protection unit for cost allocation.
- [Update](/graph/api/driveprotectionunit-update?view=graph-rest-beta&preserve-view=true) the **billingPolicyId** property on a [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true) object.
- [Update](/graph/api/mailboxprotectionunit-update?view=graph-rest-beta&preserve-view=true) the **billingPolicyId** property on a [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true) object.
- [Update](/graph/api/siteprotectionunit-update?view=graph-rest-beta&preserve-view=true) the **billingPolicyId** property on a [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) object.

### Identity and access | Governance

Use `default`, `notVisible`, and `visible` as supported values for the **approverInformationVisibility** property of the [accessPackageApprovalStage](/graph/api/resources/accesspackageapprovalstage?view=graph-rest-beta&preserve-view=true) and [approvalStage](/graph/api/resources/approvalstage?view=graph-rest-beta&preserve-view=true) resources to indicate whether approver information is visible to the requestor.

### Identity and access | Identity and sign-in

Added the **blueprintId** and **source** agent-descriptive properties to [agentRiskDetection](/graph/api/resources/agentriskdetection?view=graph-rest-beta&preserve-view=true) and [riskyAgent](/graph/api/resources/riskyagent?view=graph-rest-beta&preserve-view=true) resources.

### Files

Use the **height** and **width** query parameters on the [driveItem content conversion API](/graph/api/driveitem-get-content-format?view=graph-rest-beta&preserve-view=true) to download a file in another format when `format=jpg`.

### People and workplace intelligence | Profile

Use the **activities**, **awards**, and **fieldsOfStudy** properties on [educationalActivityDetail](/graph/api/resources/educationalactivitydetail?view=graph-rest-beta&preserve-view=true) to get or set collections of activities, awards, or fields of study.

### Reports | Identity and access reports

Added the [azureADPremiumLicenseInsight](/graph/api/resources/azureadpremiumlicenseinsight?view=graph-rest-beta&preserve-view=true) resource and its associated APIs for getting insights into the Microsoft Entra ID P1 and P2 premium license utilization for the tenant, including feature utilization breakdowns for P1, P2, Internet Access, and Private Access features.

### Security | Compliance

Updated the capabilities of the [auditLogQuery resource type](/graph/api/resources/security-auditlogquery?view=graph-rest-beta&preserve-view=true) and its associated methods as follows:
- Updated the [auditLogRecordType](/graph/api/resources/security-auditlogrecordtype?view=graph-rest-beta&preserve-view=true) enumeration to represent over 400 types of audit log operations across Microsoft cloud services.
- Added 135 new derived types of the [auditData](/graph/api/resources/security-auditdata?view=graph-rest-beta&preserve-view=true) resource to represent audit log data for specific services and features, including AI and Copilot interactions, agent management, compliance and data lifecycle management (Microsoft Purview, eDiscovery, DLP), cloud services (Azure Firewall, Microsoft Defender, Sentinel), and collaboration services (Teams, Planner, SharePoint, Viva). For a complete list of audit data types, see [auditData derived types](/graph/api/resources/security-auditdata-derived-types?view=graph-rest-beta&preserve-view=true).

### Security | Microsoft Defender for Identity

Use the **sensorTypes** property on [sensorCandidate](/graph/api/resources/security-sensorcandidate?view=graph-rest-beta&preserve-view=true) to get the list of device types for the sensor.

### Teamwork and communications | Messaging

- Use the targeted messages APIs to manage messages in Microsoft Teams that are visible only to specified recipients within group chats or channels:
  - Use the [targetedChatMessage](/graph/api/resources/targetedchatmessage?view=graph-rest-beta&preserve-view=true) resource type to represent a targeted message in a chat or channel.
  - [Get all targeted messages](/graph/api/userteamwork-getalltargetedmessages?view=graph-rest-beta&preserve-view=true) sent to a user in group chats and channels for compliance and archiving purposes.
  - [Get all retained targeted messages](/graph/api/userteamwork-getallretainedtargetedmessages?view=graph-rest-beta&preserve-view=true) for a user, including messages deleted by the sender but preserved due to organizational retention policies.
  - [Delete a targeted message from a channel](/graph/api/userteamwork-deletetargetedmessage?view=graph-rest-beta&preserve-view=true) by providing the team ID, channel ID, and message ID.
  - [Delete a targeted message from a chat](/graph/api/chat-delete-targetedmessages?view=graph-rest-beta&preserve-view=true) by providing the chat ID and message ID.
- Organize chats, channels, and meetings into custom sections in a user's Microsoft Teams chat list using the new [teamworkSection](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) and [teamworkSectionItem](/graph/api/resources/teamworksectionitem?view=graph-rest-beta&preserve-view=true) resources. Use the section management APIs to [list](/graph/api/userteamwork-list-sections?view=graph-rest-beta&preserve-view=true), [create](/graph/api/userteamwork-post-sections?view=graph-rest-beta&preserve-view=true), [get](/graph/api/teamworksection-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/teamworksection-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/teamworksection-delete?view=graph-rest-beta&preserve-view=true) sections, and [add](/graph/api/teamworksection-post-items?view=graph-rest-beta&preserve-view=true), [remove](/graph/api/teamworksectionitem-delete?view=graph-rest-beta&preserve-view=true), and [move](/graph/api/teamworksectionitem-move?view=graph-rest-beta&preserve-view=true) items within sections.

## March 2026: New and generally available

### Applications

Using the **signInAudience** property to limit where an [application](/graph/api/resources/application) can be used **isn't** a replacement for proper tenant validation and authorization enforcement in your application code. If your application expects access only in specific tenants, you *must* enforce that validation in your application code. To learn more, see [Secure applications and APIs by validating claims](/entra/identity-platform/claims-validation).

### Calendars | Places

- Added a known issue of RBAC in [Places update API](/graph/api/place-update): update requests may still succeed without *Exchange Administrator* role but result in unexpected behaviors.
- When using *application permissions* with the [Create place](/graph/api/place-post), [Update place](/graph/api/place-update), and [Delete place](/graph/api/place-delete) APIs, you must configure the required `TenantPlacesManagement` role (to manage Places) and the `MailRecipient` role (to manage users and mailboxes). For more information on how to configure these roles, see [Role Based Access Control for Applications in Exchange Online](/exchange/permissions-exo/application-rbac).

### Device and app management | Cloud PC

- Use the **osVersionNumber** property on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage) and [cloudPcGalleryImage](/graph/api/resources/cloudpcgalleryimage) resources to get the operating system version of an image.
- Use the **sizeInGB** property on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage) to get the size of the image in GB.

### Files

- Use the following new container columns APIs added to further support structured file storage in SharePoint Embedded applications:
  - [Get column](/graph/api/filestoragecontainer-get-column)
  - [Update column](/graph/api/filestoragecontainer-update-column)
  - [Delete column](/graph/api/filestoragecontainer-delete-column)
- [Download a partial range of bytes from a previous version of a file](/graph/api/driveitemversion-get-contents#example-2-download-a-partial-range-of-bytes-from-a-previous-version-of-a-file).
- Requests made using the [list containers](/graph/api/filestorage-list-containers) API without a user context (app-only authentication) aren't currently supported for multi-geo tenants.

### Identity and access | Directory management

Introduced the Agent Identity API to support registration and management of AI agents in Microsoft Entra ID. This API enables agent builders and tenant admins to:
  - Create [agent identity blueprints](/graph/api/resources/agentidentityblueprint) as base definitions for agents
  - Configure [inheritable permissions](/graph/api/resources/inheritablepermission) that control which scopes can be inherited by agent instances
  - Create [agent identity blueprint principals](/graph/api/resources/agentidentityblueprintprincipal) as tenant-specific representations
  - Create multiple [agent identity](/graph/api/resources/agentidentity) instances from a single blueprint for multi-instancing scenarios
  - Manage sponsors who can authorize and manage agent lifecycles

The API also introduces supporting types including [inheritableScopes](/graph/api/resources/inheritablescopes), [allAllowedScopes](/graph/api/resources/allallowedscopes), [enumeratedScopes](/graph/api/resources/enumeratedscopes), [noScopes](/graph/api/resources/noscopes), and the **scopeCollectionKind** enumeration.

Added the **createdByAppId** property to the [application](/graph/api/resources/application) and [servicePrincipal](/graph/api/resources/serviceprincipal) resources.

### Identity and access | Governance

- Added the `allDirectoryAgentIdentities` member to the [allowedTargetScope](/graph/api/resources/enums#allowedtargetscope-values) enumeration to allow access packages to target all directory agent identities.
- Added the [targetAgentIdentitySponsorsOrOwners](/graph/api/resources/targetagentidentitysponsorsorowners) resource type that defines the sponsors or owners of a specific agent identity.

### Identity and access | Identity and sign-in

- Added new authentication event resources to support Just-In-Time (JIT) user migration scenarios from legacy authentication systems:
  - Use the [onPasswordSubmitListener](/graph/api/resources/onpasswordsubmitlistener) resource to configure authentication event listeners that trigger during password submission.
  - Use the [onPasswordSubmitCustomExtension](/graph/api/resources/onpasswordsubmitcustomextension) resource to configure custom extensions that validate passwords against external legacy authentication systems.
- Added the following properties and their associated complex types to the [crossTenantAccessPolicyConfigurationDefault](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault?view=graph-rest-beta&preserve-view=true) and [crossTenantAccessPolicyConfigurationPartner](/graph/api/resources/crosstenantaccesspolicyconfigurationpartner?view=graph-rest-beta&preserve-view=true) resources of cross-tenant access policy APIs to support Microsoft 365 collaboration and app service connect settings:
  - **appServiceConnectInbound** property to get or set the default or partner-specific configuration for inbound app service connect settings.
  - **m365CollaborationInbound** property to get or set the default or partner-specific configuration for inbound Microsoft 365 collaboration settings.
  - **m365CollaborationOutbound** property get or set the default or partner-specific configuration for outbound Microsoft 365 collaboration settings.

### People and workplace intelligence | People admin settings

- Use the new [profileSource](/graph/api/resources/profilesource) APIs to enable administrators to customize the display information of a profile source seen by users across an organization in Microsoft 365 experiences.
- Use the new [profilePropertySetting](/graph/api/resources/profilepropertysetting) APIs to configure tenant-level settings for profile properties.

### Personal contacts

Use the **primaryEmailAddress**, **secondaryEmailAddress**, and **tertiaryEmailAddress** properties on [contact](/graph/api/resources/contact) to get or set the primary, secondary, or tertiary email address of a contact.

### Teamwork and communications | Calls and online meetings

Added [ad hoc call](/graph/api/resources/adhoccall) support to change notifications for transcripts and recordings in Microsoft Teams. You can now subscribe to the following resources to get notified when a transcript or recording is available for an ad hoc call:

- `communications/adhocCalls/{adhocCallId}/transcripts`
- `users/{userId}/adhocCalls/getAllTranscripts`
- `communications/adhocCalls/{adhocCallId}/recordings`
- `users/{userId}/adhocCalls/getAllRecordings`

For more information, see [Get change notifications for transcripts and recordings using Microsoft Graph](teams-changenotifications-callrecording-and-calltranscript.md).

### Tenant management | Configuration management

The new Tenant Configuration Management APIs in Microsoft Graph allow administrators to control and manage configuration settings across a single workload or multiple workloads within an organization. To learn more about supported use cases, see [Use the Tenant Configuration Management APIs in Microsoft Graph](/graph/api/resources/unified-tenant-configuration-management-api-overview).

## March 2026: New in preview only

### Applications

- Using the **signInAudience** and **signInAudienceRestrictions** properties to limit where an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) can be used **isn't** a replacement for proper tenant validation and authorization enforcement in your application code. If your application expects access only in specific tenants, you *must* enforce that validation in your application code. To learn more, see [Secure applications and APIs by validating claims](/entra/identity-platform/claims-validation).
- Added the **trafficRoutingMethod** property to the [onPremisesPublishing](/graph/api/resources/onpremisespublishing?view=graph-rest-beta&preserve-view=true) resource to control how traffic is distributed across multiple connectors in a connector group in Microsoft Entra app proxy.

### Backup storage

- Use the **backupRetentionPeriodInDays** property on [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) to get the retention period of the backup, in days.
- Added the `includeNewerItems` member as supported value for the **tags** property on [restorePoint](/graph/api/resources/restorepoint?view=graph-rest-beta&preserve-view=true) to get a restore point within a specified time period that includes any newer items created during that period.

### Calendars | Places

- Added a known issue of RBAC in [Places update API](/graph/api/place-update?view=graph-rest-beta&preserve-view=true): update requests may still succeed without *Exchange Administrator* role but result in unexpected behaviors.
- When using *application permissions* with the [Create place](/graph/api/place-post?view=graph-rest-beta&preserve-view=true), [Upsert places](/graph/api/place-patch-places?view=graph-rest-beta&preserve-view=true), [Update place](/graph/api/place-update?view=graph-rest-beta&preserve-view=true), and [Delete place](/graph/api/place-delete?view=graph-rest-beta&preserve-view=true) APIs, you must configure the required `TenantPlacesManagement` role (to manage Places) and the `MailRecipient` role (to manage users and mailboxes). For more information on how to configure these roles, see [Role Based Access Control for Applications in Exchange Online](/exchange/permissions-exo/application-rbac).

### Device and app management | Cloud PC

- Added `underServiceMaintenance` and `inUse` as new supported values for the **cloudPcConnectivityStatus** enumeration. Use these values with the **status** property on [cloudPcConnectivityResult](/graph/api/resources/cloudpcconnectivityresult?view=graph-rest-beta&preserve-view=true) to indicate that the Cloud PC is temporarily unavailable for service-initiated maintenance or is currently in use by a user.
- Added [configureAgent](/graph/api/cloudpcexternalpartner-configureagent?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [deployAgent](/graph/api/cloudpcexternalpartner-deployagent?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [retrieveDeployAgentActionResults](/graph/api/cloudpcexternalpartner-retrievedeployagentactionresults?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [retrieveActionReports](/graph/api/cloudpcexternalpartner-retrieveactionreports?view=graph-rest-beta&preserve-view=true) as a new action for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [cloudPcExternalPartnerAgentSetting](/graph/api/resources/cloudpcexternalpartneragentsetting?view=graph-rest-beta&preserve-view=true) as a new complex type for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [cloudPcExternalPartnerActionResult](/graph/api/resources/cloudpcexternalpartneractionresult?view=graph-rest-beta&preserve-view=true) as a new complex type for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- Added [cloudPcExternalPartnerActionReport](/graph/api/resources/cloudpcexternalpartneractionreport?view=graph-rest-beta&preserve-view=true) as a new complex type for [cloudpcexternalpartner](/graph/api/resources/cloudpcexternalpartner?view=graph-rest-beta&preserve-view=true).
- [Retry the upload](/graph/api/cloudpcdeviceimage-retryupload?view=graph-rest-beta&preserve-view=true) of a [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) object that previously failed.
- Deprecated the [reupload](/graph/api/cloudpcdeviceimage-reupload?view=graph-rest-beta&preserve-view=true) method in favor of [retryUpload](/graph/api/cloudpcdeviceimage-retryupload?view=graph-rest-beta&preserve-view=true).

### Employee experience | Employee engagement

Use the [follow user](/graph/api/storyline-follow?view=graph-rest-beta&preserve-view=true), [unfollow user](/graph/api/storyline-unfollow?view=graph-rest-beta&preserve-view=true), [list followers](/graph/api/storyline-list-followers?view=graph-rest-beta&preserve-view=true), and [list following](/graph/api/storyline-list-followings?view=graph-rest-beta&preserve-view=true) APIs for Viva Engage to manage storyline following relationships.

### Files

- Added support for the `DELETE /groups/{group-id}/drive/items/{item-id}/retentionLabel`, `DELETE /me/drive/items/{item-id}/retentionLabel`, and `DELETE /users/{user-id}/drive/items/{item-id}/retentionLabel` endpoints to the [driveItem: removeRetentionLabel](/graph/api/driveitem-removeretentionlabel?view=graph-rest-beta&preserve-view=true) API.
- [Download a partial range of bytes from a previous version of a file](/graph/api/driveitemversion-get-contents#example-2-download-a-partial-range-of-bytes-from-a-previous-version-of-a-file).
- Use the [list](/graph/api/filestoragecontainertype-list-permissions?view=graph-rest-beta&preserve-view=true), [create](/graph/api/filestoragecontainertype-post-permissions?view=graph-rest-beta&preserve-view=true), [get](/graph/api/filestoragecontainertype-get-permission?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/filestoragecontainertype-delete-permissions?view=graph-rest-beta&preserve-view=true) APIs to manage user permissions for SharePoint Embedded [file storage container types](/graph/api/resources/filestoragecontainertype?view=graph-rest-beta&preserve-view=true).
- [Archive](/graph/api/filestoragecontainer-archive?view=graph-rest-beta&preserve-view=true) or [unarchive](/graph/api/filestoragecontainer-unarchive?view=graph-rest-beta&preserve-view=true) a SharePoint Embedded storage container.
- Requests made using the [list containers](/graph/api/filestorage-list-containers?view=graph-rest-beta&preserve-view=true) API without a user context (app-only authentication) aren't currently supported for multi-geo tenants.
- Use the **itemCount** property on the [list](/graph/api/resources/list?view=graph-rest-beta&preserve-view=true) resource to quickly access the total number of items in a SharePoint list without retrieving all items or making additional queries.
- Use the **principalId** property on [sharePointGroup](/graph/api/resources/sharepointgroup?view=graph-rest-beta&preserve-view=true) to get the principal ID of the SharePoint group in the tenant.
- Use the **sharePointGroup** property on [sharePointIdentitySet](/graph/api/resources/sharepointidentityset?view=graph-rest-beta&preserve-view=true) to get the SharePoint group associated with a **sharePointIdentitySet** object.

### Groups

Added the [ownerlessGroupPolicy](/graph/api/resources/ownerlessgrouppolicy?view=graph-rest-beta&preserve-view=true) resource and related API operations to enable IT administrators to configure policies for managing groups that have lost their sole owner. Use this API to send actionable notification emails to active members of ownerless groups to accept ownership.

### Identity and access | Directory management

- Introduced the Entra Backup and Recovery APIs to enable IT administrators to back up and restore Microsoft Entra ID tenant data. You can view snapshots and start preview jobs for analysis before running the recovery jobs. You can also monitor the status of recovery processes including successes and failures. For more information, see [Overview of Microsoft Entra Backup and Recovery APIs](/graph/api/resources/entrarecoveryservices-backup-recovery-overview).
- Use **keyCredentials** as a property on [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to get a collection of certificate restrictions settings to be applied to an application or service principal.
- Use **passwordCredentials** as a property on [appManagementConfiguration](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true) to get a collection of password restrictions settings to be applied to an application or service principal.
- Use **customSecurityAttributes** as a property on [appManagementPolicyActorExemptions](/graph/api/resources/appmanagementpolicyactorexemptions?view=graph-rest-beta&preserve-view=true) to get a collection of [customSecurityAttributeExemption](/graph/api/resources/customsecurityattributeexemption?view=graph-rest-beta&preserve-view=true) objects to exempt from the policy enforcement.

### Identity and access | Governance

Use the **administrationScopeTargets** relationship on the [workflowBase](/graph/api/resources/identitygovernance-workflowbase), [workflow](/graph/api/resources/identitygovernance-workflow), and [workflowVersion](/graph/api/resources/identitygovernance-workflowversion) resources to specify the [administrative units](/graph/api/resources/administrativeunit) in the scope of a lifecycle workflow.
- Added **privilegeLevel** as a property on [accessPackageCatalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true). This value represents the privilege level of the access package catalogs.
- Added the [targetAgentIdentitySponsorsOrOwners](/graph/api/resources/targetagentidentitysponsorsorowners?view=graph-rest-beta&preserve-view=true) resource type that defines the sponsors or owners of a specific agent identity.

### Identity and access | Network access

- Added the **homeTenantId**, **crossTenantAccessType**, and **deviceJoinType** properties to the [connection](/graph/api/resources/networkaccess-connection?view=graph-rest-beta&preserve-view=true) resource to support Bring Your Own Device (BYOD) and Business-to-Business (B2B) collaboration scenarios in Global Secure Access traffic connection logs.
- Added the [crossTenantAccessType](/graph/api/resources/networkaccess-crosstenantaccesstype?view=graph-rest-beta&preserve-view=true) enumeration type.
- Added the [deviceJoinType](/graph/api/resources/networkaccess-devicejointype?view=graph-rest-beta&preserve-view=true) enumeration type.
- Added the [List generativeAIInsights](/graph/api/networkaccess-logs-list-generativeaiinsights?view=graph-rest-beta&preserve-view=true) method to retrieve generative AI prompt and MCP activity insights from Global Secure Access traffic logs. Use this method to monitor AI activity patterns, investigate destination context, and correlate user sessions for security and compliance analysis.
- Added the Cloud Firewall APIs to manage firewall policies, rules, and policy links for Microsoft Entra Global Secure Access. Use the following new resources and their associated APIs:
  - Use the [cloudFirewallPolicy](/graph/api/resources/networkaccess-cloudfirewallpolicy?view=graph-rest-beta&preserve-view=true) resource and its associated methods to create and manage cloud firewall policies.
  - Use the [cloudFirewallRule](/graph/api/resources/networkaccess-cloudfirewallrule?view=graph-rest-beta&preserve-view=true) resource and its associated methods to define firewall rules with source and destination matching conditions.
  - Use the [cloudFirewallPolicyLink](/graph/api/resources/networkaccess-cloudfirewallpolicylink?view=graph-rest-beta&preserve-view=true) resource and its associated methods to link cloud firewall policies to filtering profiles.

### Security | Alerts and incidents

- Added the [alert: moveAlerts](/graph/api/security-alert-movealerts?view=graph-rest-beta&preserve-view=true) and [incident: mergeIncidents](/graph/api/security-incident-mergeincidents?view=graph-rest-beta&preserve-view=true) actions to support moving alerts and merging incidents in Microsoft Defender.
- Added the [correlationReason](/graph/api/resources/security-correlationreason?view=graph-rest-beta&preserve-view=true) enumeration and [mergeResponse](/graph/api/resources/security-mergeresponse?view=graph-rest-beta&preserve-view=true) resource type.

### Tenant management | Governance

Introduced the tenant governance API set to enable organizations to manage and govern relationships with other tenants. Key capabilities include:
- Activating invitation reception and related tenant discovery
- Establishing governance relationships between a governing tenant and a governed tenant
- Tracking established relationships 
- Configure relationship policies

### Security | Microsoft Defender for Identities

- Added migration guidance for Microsoft Defender for Endpoint (MDE) advanced hunting APIs to help organizations transition from the retired APIs that were available through the `https://api.securitycenter.microsoft.com` endpoint to the advanced hunting APIs available in Microsoft Graph. For more information, see [Migrate from the older APIs](/graph/api/resources/security-api-overview#migrate-from-older-apis).
- The Defender for Identity sensor management APIs let you discover eligible servers, control automatic onboarding, activate or deactivate the unified agent, and manage required auditing settings during activation—all through a single management interface.

For more information, see [Overview of Tenant Governance APIs](/graph/api/resources/tenantgovernanceservices-tenantgovernance-overview).

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
