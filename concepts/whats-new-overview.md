---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.


## February 2022: New and generally available

### Teamwork
Get [details about an online meeting](/graph/api/resources/teamworkOnlineMeetingInfo) that is associated with a [chat](/graph/api/resources/chat) through the **onlineMeetingInfo** property.

## February 2022: New in preview only

### Change notifications
Subscribe to changes of Outlook contacts, events, or messages to receive notifications that include resource data in the payload. For more information, see [Change notifications for Outlook resources in Microsoft Graph](outlook-change-notifications-overview.md).

### Identity and access | Directory management
Use application permissions `CustomSecAttributeAssignment.Read.All` to read [custom security attribute definitions](/graph/api/resources/customsecurityattributedefinition?view=graph-rest-beta&preserve-view=true) for an organization without a signed-in user.

### Identity and access | Governance
- Configure [settings](/graph/api/resources/accessreviewstagesettings?view=graph-rest-beta&preserve-view=true) for each [stage](/graph/api/resources/accessreviewstage?view=graph-rest-beta&preserve-view=true) in a multi-stage access review. In addition to [get](/graph/api/accessreviewstage-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/accessreviewstage-update?view=graph-rest-beta&preserve-view=true) an access review stage, you can do the following: 
  - [Stop](/graph/api/accessreviewstage-stop?view=graph-rest-beta&preserve-view=true) reviewers from giving more input to a stage and proceed to the next stage if applicable. 
  - [Filter](/graph/api/accessreviewstage-filterbycurrentuser?view=graph-rest-beta&preserve-view=true) and get all the stages on an [access review instance](/graph/api/resources/accessreviewinstance?view=graph-rest-beta&preserve-view=true) for which the calling user is a reviewer
  - [List decisions](/graph/api/accessreviewstage-list-decisions?view=graph-rest-beta&preserve-view=true) from a multi-stage access review.
- Apps can use application permission `EntitlementManagement.ReadWrite.All` to [create an access package resource request](/graph/api/entitlementmanagement-post-accesspackageresourcerequests?view=graph-rest-beta&preserve-view=true) to add or remove a resource to an [access package catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Use a number of new properties to configure an [organization's branding](/graph/api/resources/organizationalbrandingproperties?view=graph-rest-beta&preserve-view=true). For example, a banner version of a company logo for the sign-in page, a custom favicon with a CDN-based URL, and a few other custom properties for users to manage accounts.
- Include or exclude Linux as one of the [platform conditions](/graph/api/resources/conditionalaccessplatforms?view=graph-rest-beta&preserve-view=true) in a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- Identify [at-risk service principals](/graph/api/resources/riskyserviceprincipal?view=graph-rest-beta&preserve-view=true) in an organization with Azure AD, which continually [detects and evaluates risks](/graph/api/resources/serviceprincipalriskdetection?view=graph-rest-beta&preserve-view=true) based on various signals and machine learning. You can [confirm](/graph/api/riskyserviceprincipal-confirmcompromised?view=graph-rest-beta&preserve-view=true) if an at-risk service principal is indeed compromised, upon which Microsoft would disable that service principal object. You can [dismiss](/graph/api/riskyserviceprincipal-dismiss?view=graph-rest-beta&preserve-view=true) the risk of an at-risk service principal. And, you can [list the risk history](/graph/api/riskyserviceprincipal-list-history?view=graph-rest-beta&preserve-view=true) of a service principal.
- Use [cross-tenant access settings](/graph/api/resources/crosstenantaccesspolicy-overview?view=graph-rest-beta&preserve-view=true) to control and manage collaboration between users in your organization and other organizations. They are granular to let you determine the users, groups, and apps, both in your organization and in external organizations, that can participate in Azure AD B2B collaboration and Azure AD B2B direct connect. 
- Enable or disable users and groups in an organization to use the [Azure AD native Certificate-Based Authentication (CBA)](/graph/api/resources/x509CertificateAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true).

## January 2022: New and generally available

### Devices and apps | Service health and communications
Get a [service announcement attachment](/graph/api/resources/serviceAnnouncementAttachment) added to a [service update message](/graph/api/resources/serviceupdatemessage).

### Identity and access | Governance
- Get a collection of [access review reviewer](/graph/api/resources/accessreviewreviewer) resources that is used to define reviewers contacted for an [instance of access reviews](/graph/api/resources/accessReviewInstance).
- Differentiate 3 types of resources whose access is represented through an [access review decision](/graph/api/resources/accessreviewinstancedecisionitem):
  - An [access package assignment policy](/graph/api/resources/accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource) for which access is determined by an access review decision.
  - An [Azure resource role](/graph/api/resources/accessReviewInstanceDecisionItemAzureRoleResource) for which access is determined by an access review decision.
  - A [service principal](/graph/api/resources/accessReviewInstanceDecisionItemServicePrincipalResource) whose access to a resource is determined by an access review decision.

### Identity and access | Identity and sign-in
Enforce a [session control](/graph/api/resources/conditionalAccessSessionControls) (by setting the **disableResilienceDefaults** property) to determine whether Azure AD should extend existing sessions based on information collected prior to an outage.

### Teamwork
[Create a chat](/graph/api/chat-post) using application permissions.

## January 2022: New in preview only

### Compliance | eDiscovery
Get the URL of a custodian's OneDrive for Business site (**siteWebUrl** property of [userSource](/graph/api/resources/ediscovery-userSource?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Cloud PC
- Get or update [settings for an organization](/graph/api/resources/cloudpcorganizationsettings?view=graph-rest-beta&preserve-view=true), which include the Windows operating system version to provision on Cloud PCs, and the user account type on provisioned Cloud PCs.
- [Change the user account type](/graph/api/cloudPC-changeUserAccountType?view=graph-rest-beta&preserve-view=true) on a specified Cloud PC.

### Identity and access | Governance
- Reviewers of an access review can [record](/graph/api/accessreviewinstancedecisionitem-recordalldecisions?view=graph-rest-beta&preserve-view=true) decisions for which the current user is the reviewer.
- Configure [the last sign-in date and time of a user as an insight](/graph/api/resources/userLastSignInRecommendationInsightSetting?view=graph-rest-beta&preserve-view=true) to aid reviewers in making decisions for an [access review schedule definition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true).
- Configure [the last sign-in date and time of a user as an insight](/graph/api/resources/userSignInInsight?view=graph-rest-beta&preserve-view=true) for a [decision on a user or principal's access in an instance of an access review](/graph/api/resources/accessreviewinstancedecisionitem?view=graph-rest-beta&preserve-view=true).
- The requestor of an access package can provide custom information as part of an [access package resource](/graph/api/resources/accesspackageresource?view=graph-rest-beta&preserve-view=true) that may be used to make approval decisions for the access package.
- A requestor can edit the answer to a [question](/graph/api/resources/accessPackageQuestion?view=graph-rest-beta&preserve-view=true) in an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports
- Get details of the [authentication methods registered for a user](/graph/api/resources/userRegistrationDetails?view=graph-rest-beta&preserve-view=true), such as multi-factor authentication, self-service password reset, and passwordless authentication.
- Get the following properties for a [sign-in](/graph/api/resources/signIn?view=graph-rest-beta&preserve-view=true) event of a user or application in an organization: 
  - Any conditional access [authentication context](/graph/api/resources/authenticationContext?view=graph-rest-beta&preserve-view=true).
  - Any conditional access [session lifetime policy](/graph/api/resources/sessionLifetimePolicy?view=graph-rest-beta&preserve-view=true).
  - The ID of an Azure resource accessed during sign-in.
  - The identifier of an application's federated identity credential if that was used to sign in.
  - The identifier of the service principal representing the target resource in the sign-in event.

### Reports | Microsoft 365 usage reports
Get usage reports for Outlook, OneDrive, and SharePoint for Microsoft Cloud for US Government. See summary for [cloud deployments](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true#cloud-deployments).

### Sites and lists
- Add or synchronize a content type from the content type hub to a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/resources/list?view=graph-rest-beta&preserve-view=true), by using the [addCopyFromContentTypeHub](/graph/api/contenttype-addcopyfromcontenttypehub?view=graph-rest-beta&preserve-view=true) action. This makes a content type or its update available to a specific site or list where it is needed. This is an improvement from the legacy sync infrastructure which pushes the content type to all sites across an organization, reducing wait times for the publishing to propagate. 
- Get one or more [rich, long-running operations](/graph/api/resources/richlongrunningoperation?view=graph-rest-beta&preserve-view=true) occurring on a site or list, which can happen when adding a content type synchronously.
- Get a collection of [content type](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) resources from the content type hub that are compatible by using the [getCompatibleHubContentTypes](/graph/api/contenttype-getcompatiblehubcontenttypes?view=graph-rest-beta&preserve-view=true) action. 

### Teamwork
- Let users choose **LastModifiedDateTime** or **CreatedDateTime** as the sorting order when [listing messages in a chat](/graph/api/chat-list-messages?view=graph-rest-beta&preserve-view=true).
- Specify user attribution (in the **onBehalfOf** property) when a bot sends a [chat message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) on behalf of a user.
- Add the following types of members to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true):
  - [Anonymous guest](/graph/api/resources/anonymousGuestConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Microsoft account user](/graph/api/resources/microsoftAccountUserConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Skype for Business user](/graph/api/resources/skypeForBusinessUserConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Skype user](/graph/api/resources/skypeUserConversationMember?view=graph-rest-beta&preserve-view=true)
- Use the delegated permission `TeamworkTag.Read` to read [tags](/graph/api/resources/teamworktag?view=graph-rest-beta&preserve-view=true) and [tag members](/graph/api/resources/teamworktagmember?view=graph-rest-beta&preserve-view=true) in Teams, on behalf of the signed-in user.

## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
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
