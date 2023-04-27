--- 
title: "Overview of the access reviews API" 
description: "Use the access reviews API to programmatically review access to your Azure AD resources to ensure that the right identities have the right access to the right resources." 
author: "FaithOmbongi" 
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium 
ms.prod: "governance" 
doc_type: conceptualPageType 
ms.date: 08/24/2022
--- 

# Overview of the access reviews API

Azure Active Directory (Azure AD) access reviews is a feature of Azure AD Identity Governance that helps to ensure that the right identities (or principals) have the right access to the right resources in the organization. This review can be implemented programmatically using the [access reviews API](/graph/api/resources/accessreviewsv2-overview) in Microsoft Graph.

## Participants in an access review

Access reviews are about attesting or recertifying a principal's continued access to a resource. Principals can be individual users, groups, or applications.  

Resources for which access can be reviewed include groups, privileged roles (including Azure AD roles and Azure resource roles), access packages, and applications.

The reviewers, or attesters, in the access review may include the following users or groups of users:

+ A user (guest user or a member) reviewing their own access and attesting to their need for continued access.
+ Another user, for example, an admin in a Security Administrator role, reviewing access for other principals.
+ A user's manager attesting to their direct reports' need for continued access.
+ Members of a group.
+ Group owners, including owners who might meet specific criteria.
+ Application owners.

## Building blocks of the access review API

The access reviews API is structured logically and is composed of the following building blocks.  

### 1. Access reviews schedule definition

This is the logical blueprint that contains the settings of an access review and its instances. These settings include:

+ The resources being accessed.
+ The principals that access the resource.
+ The reviewers who attest to the need for the principals to maintain access to resources.
+ The frequency of the access review.
+ The stages of the access review (for a multi-stage access review) and the whether decisions from preceding stage can be provided to reviewers in subsequent stages.
+ Default decisions to apply if decisions aren't recorded.
+ Whether to apply recommendations for decisions that are based on various insights (preview).

### 2. Access review instance

Represents a single review activity, or occurrence, against which reviewers make decisions. An access review definition may have multiple instances as is the case in recurring reviews. One-off reviews have exactly one instance. For a multi-stage access review, each instance contains up to three stages.

### 3. Decision item recorded for a review

Represents a decision that a reviewer made on an instance, including the time stamp and justification for the decision. Each review instance has as many decisions as the number of principals under review. If there are no decisions taken, that is, reviewers haven't responded to the review, there will be no decision objects for the instance.

System-generated recommended decisions can be provided for each decision item. These are based on the last sign in date of the principal whose access is under review. This feature gives reviewers visibility into dormant accounts in the organization, and recommends the decisions to apply about the principal's continued access.

Access reviews also support auditing the decisions that were made on each access review instance, with the decisions also downloadable for offline auditing.

## Scope of calling the access reviews API

The access reviews API supports both [delegated](/graph/auth-v2-user) and [application](/graph/auth-v2-service) contexts.

In a delegated (user) context, an application calls the access reviews API on behalf of a user. Typical scenarios include:

+ An administrator uses a script to create, read, or update an access review.
+ A resource owner uses an app or a script to create an access review for a resource they own.
+ An administrator automatically collects all decisions for one or more access reviews.

In an application context, an application calls the access reviews API without a signed-in user present. A typical scenario is a scheduled background script regularly collecting decisions for all access reviews.

## Next steps 

+ [Use the access reviews API](/graph/api/resources/accessreviewsv2-overview)
+ [Read more about Azure AD access reviews](/azure/active-directory/governance/access-reviews-overview)
+ Try out the following tutorials to manage access reviews:
    + [Use the access reviews API to review access to your security groups](tutorial-accessreviews-securitygroup.md)
    + [Use the access reviews API to review guest access to your Microsoft 365 groups](tutorial-accessreviews-M365group.md)