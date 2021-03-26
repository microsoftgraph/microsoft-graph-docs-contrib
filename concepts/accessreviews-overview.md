---
title: "Overview of the access reviews API for groups - Microsoft Graph"
description: "Overview of the access reviews API for groups"
author: "FaithOmbongi"
localization_priority: Normal
ms.prod: "governance"
---

# Overview of the access reviews API for groups

The [access reviews API for groups](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) in Microsoft Graph allows you to programmatically review access to your groups. This includes:
+ Creating, reading, updating, and deleting access reviews, access review settings, and schedules.
+ Investigating past access reviews and the decisions taken by reviewers, including the steps Azure AD took automatically.

## Scope of use

The access reviews APIs support both delegated and application contexts.
+ In a user (delegated) context, an application calls the access reviews API on behalf of a user. Typical scenarios include:
  + An administrator using a script to create, read, or update an access review.
  + A resource owner using an app or a script to create an access review for a resource they own.
  + An administrator automatically collecting all decisions for one or more access reviews.
  
    To authorize your app in this context, see [get access on behalf of a user](/graph/auth-v2-user).

+ In an application context, an application calls the access reviews API without a signed-in user present. A typical scenario is a scheduled background script regularly collecting decisions for all access reviews. To authorize your app in this context, see [get access without a user](/graph/auth-v2-service).

## Building blocks of an access review

Access reviews are structured logically and are comprised of these building blocks:
+ **Access reviews schedule definitions** -  The logical blueprint that contains the settings of an access review and its instances.
+ **Access review instance** - Represents a review activity that has a scope, reviewers, and a status. An access review definition may have multiple instances as is the case in recurring reviews. One-off reviews have exactly one instance.
+ **Decision items recorded for a review** - Represent a decision a reviewer made on an instance, including the time stamp and justification for the decision. Each review instance has as many decisions as the number of users under review. If there are no decisions taken, that is, reviewers haven’t responded to the review, there will be no decision objects for the instance.

## Next steps

+ [Use the access reviews API for groups to create access and read definitions, instances, and decisions.](tutorial-accessreviews-securitygroup.md)
+ [Use the access reviews API for groups to review access to all your Microsoft 365 groups with guest users.](tutorial-accessreviews-M365group.md)

## See also

+ [Planning Azure Active Directory Access Reviews deployment](/azure/active-directory/governance/deploy-access-reviews)
+ [Create an access review of groups & applications](/azure/active-directory/governance/create-access-review)
+ [Get access on behalf of a user](/graph/auth-v2-user)
+ [Get access without a user](/graph/auth-v2-service)
