---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## July 2024: New and generally available

### Security | Alerts and incidents

Use the **summary** property to get details about what happened, impacted assets, and the type of attack on an [incident](/graph/api/resources/security-incident).

### Teamwork and communications | Calls and online meetings

- Use the **callId** on [callRecording](/graph/api/resources/callrecording) or [callTranscript](/graph/api/resources/calltranscript) to identify the [call](/graph/api/resources/call) that is related to a recording or transcript.
- Use the **contentCorrelationId** on [callRecording](/graph/api/resources/callrecording) or [callTranscript](/graph/api/resources/calltranscript) to correlate a transcript with its corresponding recording.
- Use the **endDateTime** on [callRecording](/graph/api/resources/callrecording) or [callTranscript](/graph/api/resources/calltranscript) to identify when a recording or transcript ends.

### Backup Storage

The new Microsoft 365 Backup Storage API enables partners to build customized versions of their applications that are integrated with the Microsoft 365 Backup Storage platform. This helps to ensure exceptionally fast recovery from typical business continuity and disaster recovery (BCDR) scenarios, such as ransomware attacks or accidental/malicious deletion or overwriting of content by employees. To explore the API, see [Backup restore root](/graph/api/resources/backuprestoreroot?view=graph-rest-1.0).

## July 2024: New in preview only

### Applications | Application

Use the **configurationUris** property on [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true) to get the URIs required for the single sign-on configuration of a preintegrated application.

### Device and app management | Cloud PC

Use the **disasterRecoveryCapability** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the disaster recovery status of the Cloud PC, including the primary region, secondary region, and capability type.

### Education

Deprecated the **synchronizationProfiles** relationship on the [educationRoot](/graph/api/resources/educationroot?view=graph-rest-beta&preserve-view=true), including all types serviced under this endpoint.

### People and workplace intelligence | Profile

Use the **companyCode** on [companyDetail](/graph/api/resources/companydetail?view=graph-rest-beta&preserve-view=true) to get or set the legal entity number of the company or its subdivision.

### Security | Alerts and incidents

Use the **summary** property to get details about what happened, impacted assets, and the type of attack on an [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

Use the **settings** property on [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) to get or set whether attendees receive email notifications for a town hall or webinar.

Removed the **meetingOrganizerId** property from the [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) and [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) resources in favor of the **meetingOrganizer** property.

## June 2024: New and generally available

### Change notifications

Enabled change notifications support to the methods to [list](/graph/api/subscription-list), [get](/graph/api/subscription-get), [create](/graph/api/subscription-post-subscriptions), [reauthorize](/graph/api/subscription-reauthorize), [update](/graph/api/subscription-update), and [delete](/graph/api/subscription-delete) a subscription for [offerShiftRequest](/graph/api/resources/offershiftrequest), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest), [shift](/graph/api/resources/shift), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest), and [timeOffRequest](/graph/api/resources/timeoffrequest).

### Identity and access | Identity and sign-in

Get or update the [cross-tenant access default settings](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault) to include [cross-tenant access policy tenant restrictions](/graph/api/resources/crosstenantaccesspolicytenantrestrictions) that restrict organization users accessing an external organization on their network or devices.

### Files

### People and workplace intelligence | People admin settings

- Use more [granular privacy control](/graph/insights-customize-item-insights-privacy) over the availability and display of [item insights](/graph/api/resources/iteminsights) in Microsoft 365. These insights represent the relationships between a user and documents in OneDrive for work or school, calculated using advanced analytics and machine learning techniques.
- Update [insightsSettings](/graph/api/resources/insightssettings) to disable item insights for a specific Microsoft Entra group or an entire organization. You can also use the [List itemInsights](/graph/api/peopleadminsettings-list-iteminsights) API to display or return item insights in an organization.

[Permanently delete](/graph/api/filestoragecontainer-permanentdelete) a [fileStorageContainer](/graph/api/resources/filestoragecontainer).

### Microsoft Graph Data Connect

Effective January 31, 2024, billing is now enabled for all Microsoft Graph Data Connect pipelines on Microsoft Fabric. Update your application in the [Microsoft Graph Data Connect experience in the Azure portal](https://aka.ms/mgdcinazure) to use it with Fabric.

### Security | Threat intelligence

Use the [relatedHosts](/graph/api/security-sslcertificate-list-relatedhosts) method to get a list of related [host](/graph/api/resources/security-host) resources associated with an [sslCertificate](/graph/api/resources/security-sslcertificate).

### Teamwork and communications | Messaging

[Archive](/graph/api/channel-archive) or [unarchive](/graph/api/channel-unarchive) a [channel](/graph/api/resources/channel) in a [team](/graph/api/resources/team).

## June 2024: New in preview only

### Change notifications

Enabled change notifications support to the methods to [list](/graph/api/subscription-list?view=graph-rest-beta&preserve-view=true), [get](/graph/api/subscription-get?view=graph-rest-beta&preserve-view=true), [create](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&preserve-view=true), [reauthorize](/graph/api/subscription-reauthorize?view=graph-rest-beta&preserve-view=true), [update](/graph/api/subscription-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/subscription-delete?view=graph-rest-beta&preserve-view=true) a subscription for [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest?view=graph-rest-beta&preserve-view=true), [shift](/graph/api/resources/shift?view=graph-rest-beta&preserve-view=true), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta&preserve-view=true), and [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC

- Removed the **type** property from the [cloudPcAuditResource](/graph/api/resources/cloudpcauditresource?view=graph-rest-beta&preserve-view=true) resource. Going forward, use the **resourceType** property.
- Use the **deviceRegionName** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the name of the geographical region where the Cloud PC is currently provisioned.
- Use the **initiatedByUserPrincipalName** property on [cloudPcBulkAction](/graph/api/resources/cloudpcbulkaction?view=graph-rest-beta&preserve-view=true) to get the user principal name (UPN) of the user who initiated a bulk action.
- Use the **status** property on [cloudPcBulkAction](/graph/api/resources/cloudpcbulkaction?view=graph-rest-beta&preserve-view=true) to get the status of bulk actions.
- Perform bulk disaster recovery [failover](/graph/api/resources/cloudpcbulkdisasterrecoveryfailover?view=graph-rest-beta&preserve-view=true) and [failback](/graph/api/resources/cloudpcbulkdisasterrecoveryfailback?view=graph-rest-beta&preserve-view=true) actions to initiate the activation or deactivation of cross-region disaster recovery during regional outage scenarios.
- Deprecated the [getCloudPcRemoteActionResults](/graph/api/manageddevice-getcloudpcremoteactionresults?view=graph-rest-beta&preserve-view=true) method in favor of the [retrieveCloudPcRemoteActionResults](/graph/api/cloudpc-retrievecloudpcremoteactionresults?view=graph-rest-beta&preserve-view=true) method.
- Use the [retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method on the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource to retrieve the Windows 365 cross-region disaster recovery report with configuration health check results, disaster recovery status, latest cross-region restore points, and user settings.

### Employee experience | Employee engagement

[List](/graph/api/employeeexperience-list-communities?view=graph-rest-beta&preserve-view=true), [update](/graph/api/community-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/community-delete?view=graph-rest-beta&preserve-view=true) Viva Engage [community] objects.

### Files

You can now [discard a checkout](/graph/api/driveitem-discardcheckout?view=graph-rest-beta&preserve-view=true) of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in

- You can now control multifactor authentication (MFA) on an individual user basis, commonly referred to as per-user MFA on the Microsoft Entra admin center, by using the [authenticationMethod](/graph/api/resources/authenticationmethod?view=graph-rest-beta&preserve-view=true) resource and its associated methods.
- While [restoring soft-deleted users](/graph/api/directory-deleteditems-restore?view=graph-rest-beta&preserve-view=true), you can now specify whether Microsoft Entra ID should autoreconcile conflicting proxy addresses if one or more of the soft-deleted user's proxy addresses are currently used for an active user.

### Identity and access | Network access

You can now enable and control compliant network check with Conditional Access through the Global Secure Access service by using the [compliantNetworkNamedLocation resource type](/graph/api/resources/compliantnetworknamedlocation?view=graph-rest-beta&preserve-view=true) and its associated methods.

### Security | Threat intelligence

Use the [relatedHosts](/graph/api/security-sslcertificate-list-relatedhosts?view=graph-rest-beta&preserve-view=true) method to get a list of related [host](/graph/api/resources/security-host?view=graph-rest-beta&preserve-view=true) resources associated with an [sslCertificate](/graph/api/resources/security-sslcertificate?view=graph-rest-beta&preserve-view=true).

### Sites and lists

Added [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) support to sites. You can apply content models to SharePoint document libraries to classify and extract metadata from files. The new APIs enable you to do the following:

- Use [Get model](/graph/api/contentmodel-get?view=graph-rest-beta&preserve-view=true) or [Get model by name](/graph/api/contentmodel-getbyname?view=graph-rest-beta&preserve-view=true) methods to get a [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) resource. 
- Add a [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) to a library by using the [add to drive](/graph/api/contentmodel-addtodrive?view=graph-rest-beta&preserve-view=true) method to make it ready to process files.
- Remove a [content model](/graph/api/resources/contentmodel?view=graph-rest-beta&preserve-view=true) from a library by using the [remove from drive](/graph/api/contentmodel-removefromdrive?view=graph-rest-beta&preserve-view=true) method.
- Use [Get applied drives](/graph/api/contentmodel-getapplieddrives?view=graph-rest-beta&preserve-view=true) to list all libraries associated with the content model.

The content model automatically processes new files that are added to the libraries. You can create [document processing jobs](/graph/api/resources/documentprocessingjob?view=graph-rest-beta&preserve-view=true) to process existing files.

### Tasks and plans

[Assign a sensitivity label](/graph/api/plannerroster-assignsensitivitylabel?view=graph-rest-beta&preserve-view=true) to a [plannerRoster](/graph/api/resources/plannerroster?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

- Introduced the ability to [list](/graph/api/virtualeventregistration-list?view=graph-rest-beta&preserve-view=true), [create](/graph/api/virtualeventwebinar-post-registrations?view=graph-rest-beta&preserve-view=true), [cancel](/graph/api/virtualeventregistration-cancel?view=graph-rest-beta&preserve-view=true), and [list sessions](/graph/api/virtualeventregistration-list-sessions?view=graph-rest-beta&preserve-view=true) for virtual event meeting registrations.
- [Delete](/graph/api/virtualeventregistrationquestionbase-delete?view=graph-rest-beta&preserve-view=true) a registration question from a [webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true). The question can either be a [predefined registration question](/graph/api/resources/virtualeventregistrationpredefinedquestion?view=graph-rest-beta&preserve-view=true) or a [custom registration question](/graph/api/resources/virtualeventregistrationcustomquestion?view=graph-rest-beta&preserve-view=true).  

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
