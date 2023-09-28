---
title: "What's new in Microsoft Graph"
description: "View highlights of what's new in Microsoft Graph in the past two months, what was added in earlier releases, and how you can share your ideas."
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## September 2023: New in preview only

### Reports

The audit trail of all HTTP requests that Microsoft Graph received and processed for your tenant are now available through **Microsoft Graph activity logs**. Use Azure Monitor Logs to collect the logs and configure downstream destinations such as Azure Storage or stream with Azure Event Hubs to external security information and event management (SIEM) tools. For more information about Microsoft Graph activity logs, see [Access Microsoft Graph activity logs (preview)](/graph/microsoft-graph-activity-logs-overview).

### Identity and access | Governance

Learn how to [manage security alerts for Azure AD roles](/graph/how-to-pim-alerts) using Privileged Identity Management APIs in Microsoft Graph.

## August 2023: New and generally available

### Applications
Enable or disable the [lock configuration of sensitive properties](/graph/api/resources/serviceprincipallockconfiguration) of a multi-tenant [application](/graph/api/resources/application) for editing after the application is provisioned in a tenant. 

### Education
[Create](/graph/api/educationclass-post-assignment) a class assignment using an application permission without a signed-in user present.

### Identity and access | Directory management
Use the application permission `OnPremDirectorySynchronization.Read.All` or `OnPremDirectorySynchronization.ReadWrite.All` to read or update [on-premises directory synchronization](/graph/api/resources/onpremisesdirectorysynchronization) functionalities that are available for an organization, without a signed-in user present.

### Security | Alerts and incidents
Manage additional resources, such as a Kubernetes account or service, or a storage blob or blob container, as specific types of [evidence](/graph/api/resources/security-alertevidence) related to an [alert](/graph/api/resources/security-alert). See an exact [list](https://developer.microsoft.com/en-us/graph/changelog?search=e66d855d-9635-4fbb-b435-23182467f0ce) of evidence types added.

### Teamwork and communications | Apps
- [List](/graph/api/chat-list-permissiongrants) each [resource-specific permission grant](/graph/api/resources/resourcespecificpermissiongrant) on a specific [chat](/graph/api/resources/chat), showing each Azure AD app that has access to the chat, the permission type, and actual resource-specific permission.
- [List](/graph/api/team-list-permissiongrants) each [resource-specific permission grant](/graph/api/resources/resourcespecificpermissiongrant) on a specific [team](/graph/api/resources/team), showing each Azure AD app that has access to the team, the permission type, and actual resource-specific permission.

## August 2023: New in preview only

### Applications
Set as part of [authentication behaviors](/graph/api/resources/authenticationBehaviors?view=graph-rest-beta&preserve-view=true) a requirement that a multi-tenant resource [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) should have a service principal in the resource tenant before the application is granted access tokens.

### Device and app management | Cloud PC
- Set up an [alert rule](/graph/api/resources/devicemanagement-alertrule?view=graph-rest-beta&preserve-view=true) by using a rule template for a grace period scenario. This type of an alert rule triggers an alert on the Microsoft Endpoint Manager admin center when a license or assignment change happens to the user and the Cloud PC enters a grace period. For more information about Cloud PC grace periods, see [Device management overview for Cloud PCs](/windows-365/enterprise/device-management-overview).
- Get informational status from the most recent health check on an [on-premises network connection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true#cloudpconpremisesconnectionstatus-values) between a Cloud PC and Azure, involving Cloud PC add-on features such as single sign-on. This information is intended to optimize the user experience and does not affect the provisioning of the customer's Cloud PC.

### Device and app management | Multi-tenant management
Get the license type of a specified managed tenant as part of the Azure Active Directory [credential user registration](/graph/api/resources/managedtenants-credentialUserRegistrationsSummary?view=graph-rest-beta&preserve-view=true), for example, AADFree, AADPremium1, AADPremium2.

### Education
Organize individual learning resources in a systematic way in a [module](/graph/api/resources/educationModule?view=graph-rest-beta&preserve-view=true). Modules contain read-only learning resources and assignments the teacher wants the student to complete. The teacher can [set up a resources folder](/graph/api/educationmodule-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) on SharePoint for a module, [pin](/graph/api/educationmodule-pin?view=graph-rest-beta&preserve-view=true) one module at a time in a classwork list, [unpin](/graph/api/educationmodule-unpin?view=graph-rest-beta&preserve-view=true) a module in a classwork list, and [publish](/graph/api/educationmodule-publish?view=graph-rest-beta&preserve-view=true) a module to a student's classwork list.

### Identity and access | Identity and sign-in
- Use a [session control that requires sign-in sessions to be bound to a device](/graph/api/resources/secureSignInSessionControl?view=graph-rest-beta&preserve-view=true).
- Use [hardware OATH authentication method policy](/graph/api/resources/hardwareOathAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
- Use a new form of cross-tenant collaboration, [multi-tenant organization](/graph/api/resources/multitenantorganization?view=graph-rest-beta&preserve-view=true), to enable multiple tenants in Azure Active Directory to collaborate seamlessly as a single entity. Set up and manage a multi-tenant organization, and configure cross-tenant policies for multi-tenant organization tenants through policy templates. For more information, see [multi-tenant organization API overview](/graph/api/resources/multitenantorganization-overview?view=graph-rest-beta&preserve-view=true).

### People and workplace intelligence | People
- Use the delegated permission, `PeopleSettings.Read.All` or `PeopleSettings.ReadWrite.All`, to read or update [people-related admin settings](/graph/api/resources/peopleadminsettings?view=graph-rest-beta&preserve-view=true) that are available for an organization, with a signed-in user present.
- Use the policy-based application permission, `PeopleSettings.Read.All` or `PeopleSettings.ReadWrite.All`, to read or update [people-related admin settings](/graph/api/resources/peopleadminsettings?view=graph-rest-beta&preserve-view=true) that are available for an organization, without a signed-in user present.

### Reports | Identity and access reports
Get information about the [managed identity](/graph/api/resources/managedIdentity?view=graph-rest-beta&preserve-view=true) used for a [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true), including its type, associated Azure Resource Manager (ARM) resource ID, and federated token information.

### Security | Threat intelligence
List [host pair](/graph/api/resources/security-hostpair?view=graph-rest-beta&preserve-view=true) information for a [host](/graph/api/resources/security-host?view=graph-rest-beta&preserve-view=true) to reveal connections between websites, where your resources are being used and vice-versa, and adversaries' infrastructure of actor groups targeting your organization. A host pair is two pieces of infrastructure (a parent and a child), leveraging the relationship of which can build out a threat investigation. For more information, see [infrastructure chaining](/defender/threat-intelligence/infrastructure-chaining), [data sets](/defender/threat-intelligence/data-sets), and [host pairs](/defender/threat-intelligence/data-sets#host-pairs).

### Teamwork and communications | Calls and online meetings
- [Get](/graph/api/callrecording-get?view=graph-rest-beta&preserve-view=true) a specific [call recording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) for an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) for which the specified user is an organizer or participant.
- [List](/graph/api/onlinemeeting-list-recordings?view=graph-rest-beta&preserve-view=true) all recordings of an online meeting for which the specified user is an organizer or participant.
- [Get all recordings](/graph/api/onlinemeeting-getallrecordings?view=graph-rest-beta&preserve-view=true) from scheduled online meeting instances for which the specified user is the organizer. 
- [Get a set of recording resources that have been added](/graph/api/callrecording-delta?view=graph-rest-beta&preserve-view=true) for online meeting instances organized by the specified user.
- [List](/graph/api/virtualeventsession-list?view=graph-rest-beta&preserve-view=true) all [virtual event sessions](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) for a [webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) virtual event.

### Users
- [Get](/graph/api/user-get?view=graph-rest-beta&preserve-view=true) all [on-premises Session Initiation Protocol (SIP) information](/graph/api/resources/onpremisessipinfo?view=graph-rest-beta&preserve-view=true) related to a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true).
- Get [information related to Microsoft real-time communications](/graph/api/resources/cloudRealtimeCommunicationInfo?view=graph-rest-beta&preserve-view=true) for a user.


## July 2023: New and generally available

### Calendars
Request a lower privileged delegated or application permission, `Calendar.ReadBasic`, for most read operations for events in calendars, with or without a signed-in user present. This permission allows an app to read events of all calendars, except for properties such as body, attachments, and extensions. For the exact list of operations that support these permissions, see the [July updates](https://developer.microsoft.com/en-us/graph/changelog/?search=ae497d52-a781-46de-bec7-12a215043afd&from=2023-07-24&to=2023-08-24) for **Calendar**.

### Device and app management | Cloud printing
Get the printer name in reports for [archived print jobs](/graph/api/resources/archivedprintjob) and [printer usage](/graph/api/resources/printUsageByPrinter).

### Files
[Permanently delete](/graph/api/driveitem-permanentdelete) a file, folder, or other item stored in OneDrive or SharePoint.

### Identity and access | Directory management
- Find [tenant information](/graph/api/resources/tenantinformation) [by domain name](/graph/api/tenantrelationship-findtenantinformationbydomainname) or [by tenant ID](/graph/api/tenantrelationship-findtenantinformationbytenantid).
- Use a number of new properties to configure an [organization's branding](/graph/api/resources/organizationalbrandingproperties). For example, custom CSS for the sign-in page, a custom favicon with a CDN-based URL, custom link text and URL for "Terms of use" and "Privacy and cookies" in the footer, and a few other custom properties for users to manage accounts. For an exact list of these enhancements, see the [API changelog](https://developer.microsoft.com/en-us/graph/changelog/?search=7ffca2c2-e102-44b9-a5d8-966f35064056).

### Identity and access | Governance
- Get information about all [custom extension calls](/graph/api/resources/customextensioncalloutinstance) that were made during the [access package assignment](/graph/api/resources/accessPackageAssignment) and [access package assignment request](/graph/api/resources/accessPackageAssignmentRequest) workflows.
- Use an [access package resource request](/graph/api/resources/accesspackageresourcerequest) to add a [resource](/graph/api/resources/accesspackageresource) to a [catalog](/graph/api/resources/accesspackagecatalog) so that the [roles of the resource](/graph/api/resources/accesspackageresourcerole) can be used in one or more [access packages](/graph/api/resources/accesspackage) in the catalog, update a resource in a catalog to have different attribute requirements, or to remove a resource from a catalog that is no longer needed by the access packages.

### Reports | Identity and access reports
- Get a report of the details of the [registered authentication methods](/graph/api/resources/userRegistrationDetails) for a specified user or users in an organization, such as multi-factor authentication, self-service password reset, and passwordless authentication.
- [Get](/graph/api/authenticationmethodsroot-usersregisteredbyfeature) a report of the number of users in an organization capable of each of multi-factor authentication, self-service password reset, and passwordless authentication in an organization.
- [Get](/graph/api/authenticationmethodsroot-usersregisteredbymethod) a report of the number of users in an organization registered for each authentication method.

### Security | Alerts and incidents
[Get](/graph/api/security-alert-get) the Azure AD user display name for a [user account](/graph/api/resources/security-useraccount) which is involved in [mailbox evidence](/graph/api/resources/security-mailboxevidence), [process evidence](/graph/api/resources/security-processevidence), or [user evidence](/graph/api/resources/security-userevidence) related to an [alert](/graph/api/resources/security-alert).

### Teamwork and communication | Apps
Support for granting scoped access (also known as [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)) to an [app installed](/graph/api/resources/teamsappinstallation) within a chat, team, or the personal scope of a user.

### Teamwork and communications | Calls and online meetings
- [Create](/graph/api/call-post-audioroutinggroups) or [list ](/graph/api/call-list-audioroutinggroups) [audio routing group](/graph/api/resources/audioroutinggroup) resources.
- Allow or disallow participants to rename themselves in an instance of an [online meeting](/graph/api/resources/onlineMeeting).
- Set and get the [default mode for sharing chat history](/graph/api/resources/onlineMeeting#meetingchathistorydefaultmode-values) for an online meeting.

## July 2023: New in preview only

### Applications | Synchronization
[Perform](/graph/api/synchronization-synchronizationjob-post-bulkupload?view=graph-rest-beta&preserve-view=true) a [bulk upload](/graph/api/resources/synchronization-bulkupload?view=graph-rest-beta&preserve-view=true) as a [synchronization job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta&preserve-view=true) to ingest data into the Azure AD synchronization service. 

### Device and app management | Cloud PC
- [Get a report for inaccessible Cloud PCs](/graph/api/cloudPcReports-getInaccessibleCloudPcReports?view=graph-rest-beta&preserve-view=true) that have failed at least a health check or experienced consecutive user connections failure.
- Use a [setting on a Cloud PC](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to allow or disallow an end user to reset their Cloud PC. 

### Device and app management | Corporate management
Intune [July updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-07-01&to=2023-07-31) for the beta version.

### Identity and access | Directory management
- [Get](/graph/api/companysubscription-get?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/directory-list-subscriptions?view=graph-rest-beta&preserve-view=true) one or more of the [commercial subscription](/graph/api/resources/companysubscription?view=graph-rest-beta&preserve-view=true) resources that an organization has acquired. A subscription resource contains the ID and part number of the [SKU](/graph/api/resources/subscribedsku?view=graph-rest-beta&preserve-view=true) that it is associated with.
- In a [role definition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true), [get](/graph/api/unifiedroledefinition-get?view=graph-rest-beta&preserve-view=true) one or more types of principals that can be assigned the role, including user, service principal, and group.

### Identity and access | Governance
[Stop the process of applying a review decision](/graph/api/accessreviewinstance-stopapplydecisions?view=graph-rest-beta&preserve-view=true) for an [instance](/graph/api/resources/accessreviewinstance?view=graph-rest-beta&preserve-view=true) of a recurring access review created with autoapply and autoreview settings.

### Identity and access | Network access
Use the APIs for Microsoft Entra Internet Access and Microsoft Entra Private Access to enable organizations to consolidate controls and configure unified identity and network access policies. Microsoft Entra Internet Access manages access to Microsoft 365, SaaS, and public internet apps while protecting users, devices, and data against internet threats. Microsoft Entra Private Access manages access to private apps hosted on-premises or in the cloud. The two products comprise Microsoft's Security Service Edge solution. For more information on the APIs, see [Secure access to cloud, public, and private apps using Microsoft Graph network access APIs](/graph/api/resources/networkaccess-global-secure-access-api-overview?view=graph-rest-beta&preserve-view=true).

### Mail
- [Mark an email as junk](/graph/api/message-markasjunk?view=graph-rest-beta&preserve-view=true), adds the sender to the list of blocked senders, and optionally, moves the message to the Junk Email folder.
- [Mark an email as not-junk](/graph/api/message-markasnotjunk?view=graph-rest-beta&preserve-view=true), removes the sender from the list of blocked senders, and optionally, moves the message to the Inbox.

### Reports | Identity and access reports
- [Get](/graph/api/azureadauthentication-get?view=graph-rest-beta&preserve-view=true) the monthly perentage of authentication availability on Azure Active Directory for a tenant. This data is the tenant's actual attainment as compared with the [Azure AD service-level agreement (SLA)](https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services?lang=1) which commits to at least 99.99% authentication availability, as described in [Azure Active Directory SLA performance](/azure/active-directory/reports-monitoring/reference-azure-ad-sla-performance).
- Get a log of events for [traffic routed through the Global Secure Access services](/graph/api/resources/networkaccess-networkaccesstraffic?view=graph-rest-beta&preserve-view=true).
- Get all the report components in the Global Secure Access services, including [entities summaries](/graph/api/networkaccess-reports-entitiessummaries?view=graph-rest-beta&preserve-view=true), [cross-tenant summary](/graph/api/networkaccess-reports-getcrosstenantsummary?view=graph-rest-beta&preserve-view=true), [destination summaries](/graph/api/networkaccess-reports-getdestinationsummaries?view=graph-rest-beta&preserve-view=true), [device usage summary](/graph/api/networkaccess-reports-getdeviceusagesummary?view=graph-rest-beta&preserve-view=true), and [transaction summaries](/graph/api/networkaccess-reports-transactionsummaries?view=graph-rest-beta&preserve-view=true).

### Security | Alerts and incidents
- When [getting alerts](/graph/api/security-list-alerts_v2?view=graph-rest-beta&preserve-view=true), in addition to the previously supported types of detection technology and services, you can now identify Microsoft Defender for Cloud as the technology that detected a specific [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true), or service that created the alert. 
- When getting alerts, in addition to previously supported types of [evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true), you can now differentiate evidence resources of the following types: [Amazon resource evidence](/graph/api/resources/security-amazonResourceEvidence?view=graph-rest-beta&preserve-view=true), [Azure resource evidence](/graph/api/resources/security-azureresourceevidence?view=graph-rest-beta&preserve-view=true), or [Google resource evidence](/graph/api/resources/security-googlecloudresourceevidence?view=graph-rest-beta&preserve-view=true).

### Sites and lists
- For a [standard web part](/graph/api/resources/standardwebpart?view=graph-rest-beta&preserve-view=true) contained in a rich text web part, get the ID of the container [text web part](/graph/api/resources/textwebpart?view=graph-rest-beta&preserve-view=true).
- [Create](/graph/api/sitepage-post-horizontalsection?view=graph-rest-beta&preserve-view=true), [update](/graph/api/horizontalsection-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/horizontalsection-delete?view=graph-rest-beta&preserve-view=true) a [horizontal section](/graph/api/resources/horizontalSection?view=graph-rest-beta&preserve-view=true) on a SharePoint [page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true).
- [Create](/graph/api/sitepage-post-verticalsection?view=graph-rest-beta&preserve-view=true), [update](/graph/api/verticalsection-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/verticalsection-delete?view=graph-rest-beta&preserve-view=true) a [vertical section](/graph/api/resources/verticalsection?view=graph-rest-beta&preserve-view=true) on a SharePoint [page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true).
- In addition to [getting](/graph/api/webpart-get?view=graph-rest-beta&preserve-view=true) or [listing](/graph/api/webpart-list?view=graph-rest-beta&preserve-view=true) one or more [web part](/graph/api/resources/webpart?view=graph-rest-beta&preserve-view=true) resources on a [page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true), you can now [create](/graph/api/sitepage-create-webpart?view=graph-rest-beta&preserve-view=true), [update](/graph/api/webpart-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/webpart-delete?view=graph-rest-beta&preserve-view=true) a web part.

### Teamwork and communications | Calls and online meetings
Subscribe to [change notifications](/graph/api/resources/webhooks?view=graph-rest-beta&preserve-view=true) [for transcripts of a specific online meeting](/graph/teams-changenotifications-callrecording-and-calltranscript?view=graph-rest-beta&preserve-view=true#subscribe-to-transcripts-available-for-a-particular-online-meeting), or [for transcripts of any online meeting in a tenant](/graph/teams-changenotifications-callrecording-and-calltranscript?view=graph-rest-beta&preserve-view=true#subscribe-to-transcripts-available-at-the-tenant-level).

### Teamwork and communications | Devices
[Listing](/graph/api/teamworkdevice-list?view=graph-rest-beta&preserve-view=true) teamwork devices now includes SIP analog devices provisioned for the tenant. These SIP analog devices are legacy endpoints such as elevator phones, parking lot phones, or factory floor devices, registered with Microsoft Teams through the SIP Gateway.

### Users
Associate users or groups as sponsors for a guest user's privileges in the tenant and keep the guest user's information and access updated. You can [assisn a sponsor](/graph/api/user-post-sponsors?view=graph-rest-beta&preserve-view=true), [list sponsors](/graph/api/user-list-sponsors?view=graph-rest-beta&preserve-view=true), and [remove a sponsor](/graph/api/user-delete-sponsors?view=graph-rest-beta&preserve-view=true).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Feedback Portal](https://aka.ms/graphfeedback).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
