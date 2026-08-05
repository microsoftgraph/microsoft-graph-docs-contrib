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

### Device and app management | Cloud PC

Added the [cloudPcServicePlan](/graph/api/resources/cloudpcserviceplan) resource type and related methods for managing Windows 365 service plans. Use the **servicePlans** relationship on [virtualEndpoint](/graph/api/resources/virtualendpoint) to discover available service plans that an organization can purchase for Cloud PCs.

### Files

Added the **allowOnPremUpdateOfOnPremisesObjectIdentifierEnabled** property to the [onPremisesDirectorySynchronizationFeature](/graph/api/resources/onpremisesdirectorysynchronizationfeature) resource.

### Groups

- Added support for assigning sensitivity labels to cloud security groups via the **assignedLabels** property on the [group](/graph/api/resources/group) resource. For more information, see [Sensitivity labels for Microsoft 365 groups and cloud security groups](/entra/identity/users/groups-sensitivity-labels).
- Added the `Group.ManageProtection.All` delegated permission as the least privilege permission for updating the **assignedLabels** property on the [group](/graph/api/resources/group) resource. App-only scenarios aren't supported.

### Identity and access | Directory management

- Added the [remoteTenantGroup](/graph/api/resources/remotetenantgroup) resource type and related methods to retrieve groups from remote Microsoft Entra tenants through the directory resource.
- Added the **sponsorOf** relationship to the [user](/graph/api/resources/user) resource type to represent the directory objects that a user sponsors.

### Identity and access | Governance

- Added the [Get](/graph/api/accesspackagesubject-get) and [Update](/graph/api/accesspackagesubject-update) methods to the [accessPackageSubject](/graph/api/resources/accesspackagesubject) resource type to manage the subject lifecycle of external directory users in Microsoft Entra entitlement management.
- Added the [cancelProcessing](/graph/api/identitygovernance-workflow-cancelprocessing) method to the [workflow](/graph/api/resources/identitygovernance-workflow) resource to cancel workflow runs that are currently in progress or queued.
- Added workflow preview operations to the [workflow](/graph/api/resources/identitygovernance-workflow) resource type in Lifecycle Workflows, enabling you to validate tasks and run workflows in preview mode without affecting production users.
- Promoted the **Bring Your Own Data (BYOD) Upload** APIs from beta to v1.0, enabling upload of external access data for access reviews. The promoted surface includes:
  - [customDataProvidedResourceUploadSession](/graph/api/resources/customdataprovidedresourceuploadsession) base resource and [customDataProvidedResourceAccessReviewUploadSession](/graph/api/resources/customdataprovidedresourceaccessreviewuploadsession) derived type
  - [customDataProvidedResourceFile](/graph/api/resources/customdataprovidedresourcefile), [customDataProvidedResourceUploadStats](/graph/api/resources/customdataprovidedresourceuploadstats), and [customDataProvidedResourceUploadSessionRequest](/graph/api/resources/customdataprovidedresourceuploadsessionrequest) resources
  - Supporting resource types: [data](/graph/api/resources/customdataprovidedresourcepayloads-data), [accessReviewContextDataBase](/graph/api/resources/customdataprovidedresourcepayloads-accessreviewcontextdatabase), [accessReviewContextData](/graph/api/resources/customdataprovidedresourcepayloads-accessreviewcontextdata), and [applyDecisionContextData](/graph/api/resources/customdataprovidedresourcepayloads-applydecisioncontextdata)
  - [uploadFile](/graph/api/customdataprovidedresourceuploadsession-uploadfile) action
  - **uploadSessions** navigation property on [accessPackageResource](/graph/api/resources/accesspackageresource)
  - [customDataProvidedResourceUploadStatus](/graph/api/resources/enums#customdataprovidedresourceuploadstatus-values) enumeration

### Teamwork and communications | Calls and online meetings

 - Added the **meetingType** and **cloudVideoInteropInfo** properties to the [onlineMeetingBase](/graph/api/resources/onlinemeetingbase) resource to help determine the type of an online meeting and retrieve Cloud Video Interop settings.
 - Added the **isRegistrationRequired** and **capacity** properties to virtual events (for example, [virtualEvent](/graph/api/resources/virtualevent), [virtualEventTownhall](/graph/api/resources/virtualeventtownhall), and [virtualEventSession](/graph/api/resources/virtualeventsession)) to control registration requirements and expected attendance.
 - Added the [virtualEventTownhallRegistrationConfiguration](/graph/api/resources/virtualeventtownhallregistrationconfiguration) resource type and related methods to manage attendee registration for town halls.

### Teamwork and communications | Messaging

- Documented support for the optional **ConsistencyLevel** request header when [getting hosted content for a chat message](/graph/api/chatmessagehostedcontent-get). Use `ConsistencyLevel: eventual` to retrieve hosted content for edited or deleted messages. Hosted content retrieval isn't supported for messages in deleted threads.
- Added the [targetedChatMessage](/graph/api/resources/targetedchatmessage) resource type and related methods for managing targeted messages in Microsoft Teams. Targeted messages are visible only to specified recipients within group chats and channels.
  - Use the [getAllTargetedMessages](/graph/api/userteamwork-getalltargetedmessages) function to retrieve all targeted messages sent to a user across all group chats and channels.
  - Use the [getAllRetainedTargetedMessages](/graph/api/userteamwork-getallretainedtargetedmessages) function to retrieve retained targeted messages that were deleted by the sender but preserved by retention policies.
  - Use the [deleteTargetedMessage](/graph/api/userteamwork-deletetargetedmessage) action to delete a specific targeted message from a user's storage in a channel context.

### Users

- Added the `User.Create` permission as the least privileged permission to [create a user](/graph/api/user-post-users).
- Added the `User.ReadUpdate.All` permission as the least privileged permission to [update a user](/graph/api/user-update).

## July 2026: New in preview only

### Change notifications

Added the **vapidPublicKey**, **webPushEncryptionP256dhPublicKey**, and **webPushEncryptionSecret** properties to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) resource to support encrypted change notifications delivered to browser-native Web Push endpoints (Apple, Mozilla, FCM). Browser-based applications can now register with Microsoft Graph to receive change notifications through the W3C Push API channel without operating a public webhook. See [RFC 8291](https://www.rfc-editor.org/rfc/rfc8291.html) and [RFC 8292](https://www.rfc-editor.org/rfc/rfc8292.html) for the underlying encryption and authentication protocols.

### Device and app management | Cloud PC

- Updated [retrieveCloudPcTroubleshootReports](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) on the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource to support new troubleshooting report types across tenant, configuration, user and device, and view data table scopes.
- [Create](/graph/api/virtualendpoint-post-cloudapps?view=graph-rest-beta&preserve-view=true) or [delete](/graph/api/cloudpccloudapp-delete?view=graph-rest-beta&preserve-view=true) a [cloud app](/graph/api/resources/cloudpccloudapp?view=graph-rest-beta&preserve-view=true).
- Extended the **appDetail** property on [cloudPcCloudApp](/graph/api/resources/cloudpccloudapp?view=graph-rest-beta&preserve-view=true) to support the [cloudPcAutomaticDiscoveredAppDetail](/graph/api/resources/cloudpcautomaticdiscoveredappdetail?view=graph-rest-beta&preserve-view=true) type for apps automatically discovered from the *start* menu, and the [cloudPcFilePathAppDetail](/graph/api/resources/cloudpcfilepathappdetail.md) type for apps manually created when a file path is specified.
- Added the `iconPathInvalid` and `filePathInvalid` members as supported values for the **actionFailedErrorCode** property on the [cloudPcCloudApp](/graph/api/resources/cloudpccloudapp?view=graph-rest-beta&preserve-view=true). Use these members to indicate that the icon or file path specified for the cloud app is invalid.
- Added the [cloudPcPool](/graph/api/resources/cloudpcpool?view=graph-rest-beta&preserve-view=true) resource and its derived type [cloudPcAgentPool](/graph/api/resources/cloudpcagentpool?view=graph-rest-beta&preserve-view=true) to enable management of Cloud PC pools for agentic workloads.
- Added the [cloudPcPoolAssignment](/graph/api/resources/cloudpcpoolassignment?view=graph-rest-beta&preserve-view=true) resource and its derived type [cloudPcAgentPoolUserAssignment](/graph/api/resources/cloudpcagentpooluserassignment?view=graph-rest-beta&preserve-view=true) to manage pool assignments.
- Use `australiaNewZealand` as a new supported value in the **geographicLocationType** property of the [cloudPcSupportedRegion](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true) and [cloudPcDomainJoinConfiguration](/graph/api/resources/cloudpcdomainjoinconfiguration?view=graph-rest-beta&preserve-view=true) resources.
- Added the **snapshotResetMode** property to the [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) resource to indicate whether snapshot reset is available for a provisioning policy.
- Added the **shareSnapshot** method to the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource type. Use it to copy a Cloud PC snapshot to an Azure storage account.
- Added support for activating or deactivating an organization for Windows 365 for Agents. Use the [cloudPC: organizationAction](/graph/api/cloudpc-organizationaction?view=graph-rest-beta&preserve-view=true) action to trigger the operation.
- Use the [cloudPC: retrieveOrganizationActionDetail](/graph/api/cloudpc-retrieveorganizationactiondetail?view=graph-rest-beta&preserve-view=true) method to retrieve the status and details of an organization action.
- Added the **permissions** relationship to the [list](/graph/api/resources/list) and [listItem](/graph/api/resources/listitem) resources in v1.0. Use the [list permissions](/graph/api/list-list-permissions) and [create permission](/graph/api/list-post-permissions) methods to manage permissions for SharePoint lists and list items.

### Files

- Updated the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to support the optional **reportType** parameter for retrieving throttling metrics. Use `reportType='throttlingReport'` to get throttled request counts via the **throttledRequests** property on the [sharePointApiUsageDataPoint](/graph/api/resources/sharepointapiusagedatapoint?view=graph-rest-beta&preserve-view=true) resource, or use `reportType='egressReport'` (default) to get egress usage via the **usageMB** property.
- Added the **allowOnPremUpdateOfOnPremisesObjectIdentifierEnabled** property to the [onPremisesDirectorySynchronizationFeature](/graph/api/resources/onpremisesdirectorysynchronizationfeature?view=graph-rest-beta&preserve-view=true) resource.
- Added the [getByUser](/graph/api/filestoragecontainer-getbyuser?view=graph-rest-beta&preserve-view=true) method to the [fileStorageContainer](/graph/api/resources/filestoragecontainer?view=graph-rest-beta&preserve-view=true) resource to retrieve a list of file storage containers owned by a user, with optional filtering by role (owner or principalOwner).

### Groups

Added the `Group.ManageProtection.All` delegated permission as the least privilege permission for updating the **assignedLabels** property on the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource. App-only scenarios aren't supported.

### Identity and access | Directory management

Added the **sponsorOf** relationship to the [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) resource type to represent the directory objects that a user sponsors.

### Identity and access | Governance

Added support for automatically quarantining Lifecycle Workflows to stop a workflow from processing more users than expected. Configure thresholds using the **quarantineConfiguration** property on [lifecycleManagementSettings](/graph/api/resources/identitygovernance-lifecyclemanagementsettings?view=graph-rest-beta&preserve-view=true), and clear a quarantine by calling [clearQuarantine](/graph/api/identitygovernance-workflow-clearquarantine?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

- Added the [resourceAccountKeyAuthenticationMethod](/graph/api/resources/resourceaccountkeyauthenticationmethod?view=graph-rest-beta&preserve-view=true) resource type and related methods for managing resource account key credentials on shared devices. Use these APIs to list, get, and delete resource account key authentication methods for Teams Meeting Rooms and Teams phones that authenticate silently to Microsoft Entra ID.
- Added support for programmatic FIDO2 passkey registration. Use the [creationOptions](/graph/api/fido2authenticationmethod-creationoptions?view=graph-rest-beta&preserve-view=true) function to get WebAuthn credential creation options, then complete registration by posting the new **publicKeyCredential** property to the [fido2AuthenticationMethod](/graph/api/resources/fido2authenticationmethod?view=graph-rest-beta&preserve-view=true) resource.
- Added support to update and delete Microsoft 365 cross-tenant capabilities in the cross-tenant access policy. For details, see [m365CapabilityBase](/graph/api/resources/m365capabilitybase?view=graph-rest-beta&preserve-view=true).

- Updated the [verifiedIdProfile](/graph/api/resources/verifiedidprofile?view=graph-rest-beta&preserve-view=true) resource to support mobile driver's license verification and self-service Verified ID issuance through MyAccount. Profiles can specify the verification method and credential manifest used for these experiences.
- Enhanced the [verifiedIdProfile](/graph/api/resources/verifiedidprofile?view=graph-rest-beta&preserve-view=true) resource with expanded verification capabilities:
  - Added the **methodType** property to [verifiedIdProfileConfiguration](/graph/api/resources/verifiedidprofileconfiguration?view=graph-rest-beta&preserve-view=true) to specify the verification method category, including tenant custom credentials, verified employee credentials, and identity verification partners. Introduced the **verifiedIdMethodType** enumeration to support these scenarios.
  - Added the **manifestUrl** property to [verifiedIdProfileConfiguration](/graph/api/resources/verifiedidprofileconfiguration?view=graph-rest-beta&preserve-view=true) to reference the credential issuer's manifest defining the credential schema and issuer details.
  - Added the `verification` member to the **verifiedIdUsageConfigurationPurpose** enumeration to enable just-in-time identity verification scenarios, such as step-up authentication enforcement through Conditional Access policies.

### Security | Alerts and incidents

- Added the **tenantId** property to the [userAccount](/graph/api/resources/security-useraccount) resource to provide the Entra home tenant ID for the compromised user account indicated in a [security alert](/graph/api/resources/security-alert) where the alert evidence is related to a [processEvidence](/graph/api/resources/security-processevidence), [userEvidence](/graph/api/resources/security-userevidence), or [mailboxEvidence](/graph/api/resources/security-mailboxevidence).
- Added the [alert: moveAlerts](/graph/api/security-alert-movealerts) and [incident: mergeIncidents](/graph/api/security-incident-mergeincidents) actions to support moving alerts and merging incidents in Microsoft Defender.
- Added the [correlationReason](/graph/api/resources/security-correlationreason) enumeration and [mergeResponse](/graph/api/resources/security-mergeresponse) resource type.

### Security | eDiscovery

Added the `cloudNativeHtmlConversion` member to the [additionalDataOptions](/graph/api/resources/security-ediscoveryaddtoreviewsetoperation#additionaldataoptions-values) enumeration.
### Mailbox import and export

- Added the **wellKnownName** property to the [mailboxFolder](/graph/api/resources/mailboxfolder?view=graph-rest-beta&preserve-view=true) resource type to identify folders created by Outlook by using a locale-independent name.
- Added the [Delete mailboxItem](/graph/api/mailboxfolder-delete-items?view=graph-rest-beta&preserve-view=true) method to delete an individual [mailboxItem](/graph/api/resources/mailboxitem?view=graph-rest-beta&preserve-view=true) from a mailbox folder by using the mailbox import and export APIs. Use the **disposalType** query parameter to specify soft-delete or hard-delete semantics.

### Reports

Added the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to the [reportRoot](/graph/api/resources/reportroot?view=graph-rest-beta&preserve-view=true) resource to retrieve aggregated OneDrive and SharePoint API usage metrics for a tenant, including egress usage and throttling metrics.

### Tasks and plans

- Added the [plannerHistoryItem](/graph/api/resources/plannerhistoryitem?view=graph-rest-beta&preserve-view=true) resource type and [List historyItems](/graph/api/plannerplan-list-historyitems?view=graph-rest-beta&preserve-view=true) method to audit task changes within a Planner plan. Track when tasks are created, updated, deleted, or moved, and filter by **occurredDateTime** to retrieve changes within specific time ranges.
- Added the [plannerGoal](/graph/api/resources/plannergoal?view=graph-rest-beta&preserve-view=true) resource type and related read methods for viewing goals in a Planner plan and understanding which goals are associated with each task.

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

- Added the [getSharePointApiUsage](/graph/api/reportroot-getsharepointapiusage?view=graph-rest-beta&preserve-view=true) method to the [reportRoot](/graph/api/resources/reportroot?view=graph-rest-beta&preserve-view=true) resource to retrieve aggregated OneDrive and SharePoint API usage metrics for a tenant, including egress usage and throttling metrics.
- [Upsert](/graph/api/filestoragecontainer-patch-permissions) (create or update) up to 40 permissions on a [fileStorageContainer](/graph/api/resources/filestoragecontainer) in a single request. The limit increased from 10 to 40 [permission](/graph/api/resources/permission) objects per request.

### Groups

- Added the **accessType**, **isFavorite**, **unseenConversationsCount**, and **unseenMessagesCount** properties to the [group](/graph/api/resources/group) resource. Use these properties to manage access settings and track conversation activity for Microsoft 365 groups. Added the **groupAccessType** enumeration type to support the **accessType** property on the [group](/graph/api/resources/group) resource.

### Identity and access | Directory management

- Added the [deviceRegistrationPolicy](/graph/api/resources/deviceregistrationpolicy) resource type and related methods to manage the policy that controls device registration quota restrictions, additional authentication, and authorization policies for your Microsoft Entra tenant.
- Added the [Get](/graph/api/accesspackagesubject-get) and [Update](/graph/api/accesspackagesubject-update) methods to the [accessPackageSubject](/graph/api/resources/accesspackagesubject) resource type to manage the subject lifecycle of external directory users in Microsoft Entra entitlement management.
- Added the **type** property to the [accessPackageResourceRole](/graph/api/resources/accesspackageresourcerole) resource to indicate whether an Azure resource role is active or eligible, enabling PIM-based role assignments for Azure resources in access packages.
- Added the [accessPackageSuggestion](/graph/api/resources/accesspackagesuggestion) resource type and related methods for discovering suggested access packages based on related people insights and assignment history. Use the [filterByCurrentUser](/graph/api/accesspackagesuggestions-filterbycurrentuser) function to retrieve personalized suggestions.
- Added the **approverInformationVisibility** property to the [accessPackageApprovalStage](/graph/api/resources/accesspackageapprovalstage) resource to control whether approver information is visible to requestors.
- Added the [endUserSettings](/graph/api/resources/endusersettings) resource type and related methods for configuring access package suggestion behavior, including related people insight levels and approver detail visibility.
- Added workflow preview operations to the [workflow](/graph/api/resources/identitygovernance-workflow) resource type in Lifecycle Workflows, enabling you to validate tasks and run workflows in preview mode without affecting production users.
- Added the [customDataProvidedResourceUploadSession](/graph/api/resources/customdataprovidedresourceuploadsession) resource type and related methods for uploading external access data (Bring Your Own Data) for access reviews.
- Added the [customDataProvidedResource](/graph/api/resources/customdataprovidedresource) resource type, an access package resource that represents an external application whose access data is provided through the Bring Your Own Data (BYOD) flow for catalog user access reviews.

### Identity and access | Identity and sign-in

- Added the [onVerifiedIdClaimValidationCustomExtension](/graph/api/resources/onverifiedidclaimvalidationcustomextension) and [onVerifiedIdClaimValidationListener](/graph/api/resources/onverifiedidclaimvalidationlistener) resource types and associated methods to support custom logic for claim validation from Verified ID credential presentations during authentication flows through Microsoft Entra custom authentication extensions in External ID.
- Added claim validation and match-confidence capabilities to [Verified ID profiles](/graph/api/resources/verifiedidprofile), enabling stronger claim verification and more flexible matching.
- Enhanced the [x509CertificateAuthenticationMethodConfiguration](/graph/api/resources/x509certificateauthenticationmethodconfiguration) resource type with the following capabilities for certificate-based authentication (CBA):
    - Scoping CBA to specific certificate authorities and restricting which groups of users can authenticate using certificates from those CAs.
    - Controlling whether issuer hints are sent to the client to filter the certificates shown in the certificate picker.
- Updated the **targetedAuthenticationMethod** property of the [authenticationMethodsRegistrationCampaignIncludeTarget](/graph/api/resources/authenticationmethodsregistrationcampaignincludetarget) resource to support `Fido2` in addition to `microsoftAuthenticator` for authentication method registration campaigns. Organizations can now use registration campaigns to nudge users to register and sign in with phishing-resistant passkeys (FIDO2).

### Mailbox import and export

- Added the [Overview of the mailbox import and export APIs in Microsoft Graph](/graph/mailbox-import-export-concept-overview) to help you build solutions for mailbox import and export scenarios.

### People and workplace intelligence | Places

- Added the **servicePlans** property to the [desk](/graph/api/resources/desk) resource to manage the service plans associated with workspace desks.
- Added the **placeId** property to the [place](/graph/api/resources/place) resource to provide a stable identifier across place types.

### Security | Alerts and incidents

- Added the migration guide [Migrate from legacy alerts to the alerts and incidents API](/graph/alertsv1-alertsv2-migration) to help you transition your apps from the deprecated Microsoft Graph security alerts v1 API to the new alerts and incidents API.
- Extended the [alertEvidence](/graph/api/resources/security-alertevidence) base type with additional derived types to provide detailed context about various artifacts involved in [security alerts](/graph/api/resources/security-alert).

### Teamwork and communications | Messaging

Added the [chatMessageBody](/graph/api/resources/chatmessagebody?view=graph-rest-beta&preserve-view=true) resource type to support Teams-specific message content formats, including `markdown`.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
