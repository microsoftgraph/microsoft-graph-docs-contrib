---
title: "Access reviews overview"
description: "Introduction to the Access Reviews API"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Overview of Access Reviews API for groups

The [Access Reviews](https://docs.microsoft.com/azure/active-directory/governance/access-reviews-overview) Graph API allows management of access reviews programmatically. The API allows for creating, reading, updating, and deleting access reviews, their settings, and schedules; and investigating past access reviews and the decisions taken by reviewers, including the steps Azure AD took automatically.

The Access Reviews APIs support reviews for groups, such as Microsoft 365 Groups or security groups, only.

## Scope of use

The Access Reviews APIs support both delegated and application contexts.
+ In a user (delegated) context: a user leverages an app that calls the Access Reviews API. Typical scenarios would include:
  + An administrator using a script to create, read, or update an access review.
  + A resource owner using an app or a script to create an access review for a resource they own.
  + An administrator automatically collecting all decisions for one or more access reviews.
  
    In this scenario, the app leverages the user’s permissions to interact with the API. To authorize your app in this context, see [get access on behalf of a user](https://docs.microsoft.com/graph/auth-v2-user).

+ In an application context: a “headless” application such as a script, a daemon, or a bot, with no logged in user, calls the Access Reviews API to retrieve data. A typical scenario is a scheduled script regularly collecting decisions for all access reviews. To authorize your app in this context, see [get access without a user](https://docs.microsoft.com/graph/auth-v2-service).

## Building blocks of the Access Reviews API

The Access Reviews API structures information logically and comprises three major building blocks:
+ Access reviews schedule *definitions*: is the logical blueprint that contains the settings of an access review and its instances. An access review can have multiple definitions.
+ An access review *instance*: represents a review activity that has a scope, reviewers, and a status. An access review definition may have multiple instances as is the case in monthly recurring reviews. One-off reviews have exactly one instance.
+ *Decision items* recorded for a review: represent a decision a reviewer made on an instance, including the time stamp and justification for the decision. Each review instance has as many decisions as the number of users under review. If there are no decisions taken, that is, reviewers haven’t responded to the review, there will be no decision objects for the instance.

## Next steps

- [Use the Access Reviews API to create access and read definitions, instances, and decisions.](tutorial-access-reviews-api.md)

## See also

- [Planning Azure Active Directory Access Reviews deployment.](https://docs.microsoft.com/azure/active-directory/governance/deploy-access-reviews)
- [Get access on behalf of a user.](https://docs.microsoft.com/graph/auth-v2-user)
- [Get access without a user.](https://docs.microsoft.com/auth-v2-service)