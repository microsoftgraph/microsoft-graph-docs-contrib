---
title: "Access reviews overview"
description: "Overview of the Access Reviews API for groups"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
---

# Overview of the Access Reviews API for groups

The [Access Reviews Graph API](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta) allows you to programmatically review access to your resources. This includes:
+ Creating, reading, updating, and deleting access reviews, their settings, and schedules.
+ Investigating past access reviews and the decisions taken by reviewers, including the steps Azure AD took automatically.

These APIs support reviews for groups, such as Microsoft 365 groups and security groups, only.

## Scope of use

The Access Reviews APIs support both delegated and application contexts.
+ In a user (delegated) context: an application calls the Access Reviews API on behalf of a user. Typical scenarios include:
  + An administrator using a script to create, read, or update an access review.
  + A resource owner using an app or a script to create an access review for a resource they own.
  + An administrator automatically collecting all decisions for one or more access reviews.
  
    To authorize your app in this context, see [get access on behalf of a user](/graph/auth-v2-user).

+ In an application context: an application calls the Access Reviews API without a signed-in user present. A typical scenario is a scheduled background script regularly collecting decisions for all access reviews. To authorize your app in this context, see [get access without a user](/graph/auth-v2-service).

## Building blocks of the Access Reviews API

The Access Reviews API structures information logically and comprises three major building blocks:
+ Access reviews schedule *definitions*: is the logical blueprint that contains the settings of an access review and its instances.
+ An access review *instance*: represents a review activity that has a scope, reviewers, and a status. An access review definition may have multiple instances as is the case in monthly recurring reviews. One-off reviews have exactly one instance.
+ *Decision items* recorded for a review: represent a decision a reviewer made on an instance, including the time stamp and justification for the decision. Each review instance has as many decisions as the number of users under review. If there are no decisions taken, that is, reviewers haven’t responded to the review, there will be no decision objects for the instance.

## Next steps

- [Use the Access Reviews API for groups to create access and read definitions, instances, and decisions.](tutorial-accessreviews-securitygroup.md)
- [Use the Access Reviews API for groups to review access for all your M365 groups with external identities.](tutorial-accessreviews-M365group.md)

## See also

- [Planning Azure Active Directory Access Reviews deployment.](/azure/active-directory/governance/deploy-access-reviews)
- [Get access on behalf of a user.](/graph/auth-v2-user)
- [Get access without a user.](/graph/auth-v2-service)