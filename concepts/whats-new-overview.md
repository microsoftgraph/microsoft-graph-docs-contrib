---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## March 2021: New and generally available

### Applications
GA of the [applicationTemplate](/graph/api/resources/applicationtemplate) resource which supports [listing](/graph/api/applicationtemplate-list) applications in the Azure AD application gallery, and [adding](/graph/api/applicationtemplate-instantiate) an instance of such an application to a directory.

### Devices and apps | Cloud printing
GA of the [cloud printing API](universal-print-concept-overview.md) for Universal Print! See the [announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/universal-print-is-ready-for-business/ba-p/2176778), and check out how to [get started with Universal Print](https://docs.microsoft.com/universal-print/fundamentals/universal-print-license).

### Teamwork
- GA of a few more properties of [teamsAppDefinition](/graph/api/resources/teamsAppDefinition), which represent details of a version of an app in the Microsoft Teams app catalog, including the following:
  - **createdBy**, **description**, **shortDescription**, **lastModifiedDateTime**
  - **publishingState** which can be one of `submitted` and under review, `published`, or `rejected` by the admin
  - **bot** relationship of the [teamworkBot](/graph/api/resources/teamworkbot) type, representing the details of the bot specified in the teams app manifest.
- [List](/graph/api/chatmessage-list-chatmessagehostedcontents) or [get](/graph/api/chatmessagehostedcontent-get) rich content hosted in a [chatMessage](/graph/api/resources/chatmessage), such as images or code snippets.

## March 2021: New in preview only

### Devices and apps | Cloud printing
Get the most recent date/time (**lastSeenDateTime** property) when a printer interacted with Universal Print.

### Sites and lists
- Support a specific content type or template for documents or document sets in specific site collections, through a set of new properties and methods on the [contentType](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) entity. The methods include the following:
  - [addCopy](/graph/api/contenttype-addcopy?view=graph-rest-beta&preserve-view=true)
  - [associateWithHubSites](/graph/api/contenttype-associatewithhubsites?view=graph-rest-beta&preserve-view=true)
  - [copyToDefaultContentLocation](/graph/api/contenttype-copytodefaultcontentlocation?view=graph-rest-beta&preserve-view=true)
  - [isPublished](/graph/api/contenttype-ispublished?view=graph-rest-beta&preserve-view=true)
  - [publish](/graph/api/contenttype-publish?view=graph-rest-beta&preserve-view=true)
  - [unpublish](/graph/api/contenttype-unpublish?view=graph-rest-beta&preserve-view=true)
- Customize content types by their columns. Columns are represented by the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta&preserve-view=true) entity, and support the full set of CRUD operations.
- [Get content types of a site that can be applied to a list](/graph/api/site-getApplicableContentTypesForList?view=graph-rest-beta&preserve-view=true).
- Differentiate column types by the following properties in the **columnDefinition** entity: boolean, calculated, choice, currency, dateTime, lookup, number, personOrGroup, text. These properties are mutually exclusive.

### Users
[Get](/graph/api/regionalandlanguagesettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/regionalandlanguagesettings-update?view=graph-rest-beta&preserve-view=true) a user's [preferences for translating languages](/graph/api/resources/translationpreferences?view=graph-rest-beta&preserve-view=true). For example, whether or not to translate, translate automatically, or prompt before translating specific languages in messages, chats, and web pages, and any [translation overrides](/graph/api/resources/translationlanguageoverride?view=graph-rest-beta&preserve-view=true).

## February 2021: New and generally available

### Cloud communications | Online meeting
Use policy-based application permissions of `OnlineMeetings.Read.All` or `OnlineMeetings.ReadWrite.All` on operations and methods of the [onlineMeeting](/graph/api/resources/onlinemeeting) resource. This means administrators can [configure application access policy](cloud-communication-online-meeting-application-access-policy.md) to allow apps to access online meetings on behalf of a user.

### Sites and lists
Use the [permission](/graph/api/resources/permission) resource and its CRUD operations to manage sharing permission granted for a [driveItem](/graph/api/resources/driveitem). Permissions with a link facet represent sharing links created on the item. Permissions with an invitation facet represent permissions added by inviting specific users or groups to have access to the file.

## February 2021: New in preview only

### Applications
Use application permissions for the [synchronization APIs](/graph/api/resources/synchronization-overview?view=graph-rest-beta&preserve-view=true) that automate provisioning (creation, maintenance) and de-provisioning (removal) of identities in Azure AD.

### Cloud communications | Calls
Support for [policy-based recording for calls](/microsoftteams/teams-recording-policy) where using administrative policy, calls are automatically recorded for subsequent processing and retention as required by relevant corporate or regulatory policy. Before a policy-based participant joins a call, policy stipulates sending a [participantJoiningNotification ](/graph/api/resources/participantJoiningNotification?view=graph-rest-beta&preserve-view=true) to the bot associated with the policy that has available capacity to handle the new participant. The bot responds with one of [acceptJoinResponse](/graph/api/resources/acceptjoinresponse?view=graph-rest-beta&preserve-view=true), [rejectJoinResponse](/graph/api/resources/rejectjoinresponse?view=graph-rest-beta&preserve-view=true), or [inviteNewBotResponse](/graph/api/resources/invitenewbotresponse?view=graph-rest-beta&preserve-view=true) in its response payload.

### Compliance | eDiscovery
- Use the [legalHold](/graph/api/resources/ediscovery-legalhold?view=graph-rest-beta&preserve-view=true) resource and its APIs to protect content indefinitely from deletion, for the purpose of litigation, internal investigation, or other legal actions.
- Use the [sourceCollection](/graph/api/resources/ediscovery-sourcecollection?view=graph-rest-beta&preserve-view=true) resource and its APIs to search for and identify relevant documents from custodial and non-custodial locations in Microsoft 365.
- Use the [tag](/graph/api/resources/ediscovery-tag?view=graph-rest-beta&preserve-view=true) resource and APIs to mark documents during review to separate responsive and non-responsive content.
- [Export](/graph/api/ediscovery-reviewset-export?view=graph-rest-beta&preserve-view=true) documents from a [review set](/graph/api/resources/ediscovery-reviewset?view=graph-rest-beta&preserve-view=true).
- Use the [addToReviewSet](/graph/api/ediscovery-reviewset-addtoreviewset?view=graph-rest-beta&preserve-view=true) action to add documents in a **sourceCollection** to a **reviewSet**.
- [Apply tags](/graph/api/ediscovery-reviewsetquery-applytags?view=graph-rest-beta&preserve-view=true) to documents based on a [review set query](/graph/api/resources/ediscovery-reviewsetquery?view=graph-rest-beta&preserve-view=true).
- Defined all eDiscovery API in the `microsoft.graph.ediscovery` namespace.
- Changed delegated permissions model from `User.Read` to `eDiscovery.Read.All` and `eDiscovery.ReadWrite.All`.

### Devices and apps | Corporate management
- Intune [February](https://developer.microsoft.com/graph/changelog/?from=2021-02-01&to=2021-02-28&filterBy=Corporate%20management) updates for the beta version.
- New properties set by Intune on the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource: **deviceCategory**, **deviceOwnership**, **domainName**, **enrollmentProfileName**, **enrollmentType**, **isRooted**, **managementType**, and **registrationDateTime**.

### Education
Use [educationAssignmentDefaults](/graph/api/resources/educationAssignmentDefaults?view=graph-rest-beta&preserve-view=true) to specify default practices on an assignment for a class, for example, assignment due time, channel URL for notifications on an assignment. You can still customize values when creating an assignment.

### Identity and access | Identity and sign-in
- Use the [smsAuthenticationMethodConfiguration](/graph/api/resources/smsAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) resource to [get](/graph/api/smsauthenticationmethodconfiguration-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/smsauthenticationmethodconfiguration-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/smsauthenticationmethodconfiguration-delete?view=graph-rest-beta&preserve-view=true) the configuration settings of a text message authentication policy in an organization.
- Use the [temporaryAccessPassAuthenticationMethodConfiguration](/graph/api/resources/temporaryaccesspassauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resource to [get](/graph/api/temporaryaccesspassauthenticationmethodconfiguration-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/temporaryaccesspassauthenticationmethodconfiguration-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/temporaryaccesspassauthenticationmethodconfiguration-delete?view=graph-rest-beta&preserve-view=true) the configuration settings of a temporary access pass authentication policy in an organization.

### Identity and access | Governance
- Assign geolocation information to an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true) resource in the [access package assignment request](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true).
- Get a list of all [access package resource environments](/graph/api/resources/accesspackageresourceenvironment?view=graph-rest-beta&preserve-view=true) that represent the geolocations that store SharePoint Online resources.
- Use application permissions (`EntitlementManagement.Read.All` or `EntitlementManagement.ReadWrite.All`) for operations of the following resources:
  - [accessPackage](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignment](/graph/api/resources/accesspackageassignment?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignmentPolicy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignmentResourceRole](/graph/api/resources/accesspackageassignmentresourcerole?view=graph-rest-beta&preserve-view=true)
  - [accessPackageCatalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true)
  - [accessPackageResourceRequest](/graph/api/resources/accesspackageresourcerequest?view=graph-rest-beta&preserve-view=true)
  - [connectedOrganization](/graph/api/resources/connectedorganization?view=graph-rest-beta&preserve-view=true)
  - [entitlementManagementSettings](/graph/api/resources/entitlementmanagementsettings?view=graph-rest-beta&preserve-view=true)

### Reports | Microsoft 365 usage reports
Get more properties included in [detail reports for SharePoint site usage](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta&preserve-view=true): anonymousLinkCount, companyLinkCount, externalSharing, geolocation, secureLinkForGuestCount, secureLinkForMemberCount, siteSensitivityLabelId, and unmanagedDevicePolicy.

### Tasks and plans
- Define up to 25 categories in a [plan details](/graph/api/resources/plannerplandetails?view=graph-rest-beta&preserve-view=true) object for a plan. For each category, specify a descriptive label and associate tasks in a plan with one or more of these categories. 
- Use a [roster](/graph/api/resources/plannerRoster?view=graph-rest-beta&preserve-view=true) to represent a collection of users collaborating on a [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true). Use the **rosterPlans** relationship to get the rosters of which the user is a [member](/graph/api/resources/plannerrostermember?view=graph-rest-beta&preserve-view=true). 
- For plans that are surfaced in experiences outside of Planner, such as Microsoft Teams, specify in the [plan context details](/graph/api/resources/plannerplancontextdetails?view=graph-rest-beta&preserve-view=true) how to display the link to the [plan context](/graph/api/resources/plannerPlanContext?view=graph-rest-beta&preserve-view=true). 

### Use SDKs
Try the preview release of the [Microsoft Graph Java SDK v3](https://github.com/microsoftgraph/msgraph-sdk-java/tree/feature/v3)! For more information, see the related [blog post](https://developer.microsoft.com/graph/blogs/announcing-the-public-preview-of-microsoft-graph-java-sdk-v3/).



## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
