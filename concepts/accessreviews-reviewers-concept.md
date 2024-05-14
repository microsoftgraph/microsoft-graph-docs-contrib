---
title: "Assign reviewers to access reviews using access reviews APIs"
description: "Use the access reviews API in Microsoft Graph to assign access reviewers such as specific users, members or owners of a group, people managers, or app owners."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.topic: how-to
ms.date: 03/14/2024
#customer intent: As a developer, I want to understand how to configure all reviewer types in Microsoft Entra access reviews through Microsoft Graph, so that I can automate the process of reviewing and managing access to Microsoft Entra resources.
---

# Assign reviewers to access reviews using access reviews APIs

The Microsoft Entra [access reviews API](/graph/api/resources/accessreviewsv2-overview) allows you to programmatically review the access that users, service principals, or groups have to your Microsoft Entra resources.

The primary reviewers are configured in the **reviewers** property of the access reviews [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition) resource. In addition, you can specify fallback reviewers by using the **fallbackReviewers** property. These properties aren't required when you create a self-review (where users review their own access).

To configure the reviewers and fallback reviewers, set the values of **query**, **queryRoot**, and **queryType** properties of [accessReviewReviewerScope resource type](/graph/api/resources/accessreviewreviewerscope).

> [!NOTE]
> Review of groups whose membership is governed through PIM for groups only assigns active owners as the reviewers. Eligible owners are not included. At least one fallback reviewer is required to review these groups. If there are no active owners when the review begins, the fallback reviewers are assigned to the review.

## Example 1: A self-review

To configure a self-review, don't specify the **reviewers** property, or supply an empty object to the property.

If the corresponding access review **scope** targets B2B direct connect users and teams with shared channels, the team owner is assigned to review access for the B2B direct connect users.

```http
"reviewers": []
```

## Example 2: A specific user as the reviewer

```http
"reviewers": [
    {
        "query": "/users/{userId}",
        "queryType": "MicrosoftGraph"
    }
]
```

## Example 3: Members of a group as reviewers

```http
"reviewers": [
    {
        "query": "/groups/{groupId}/transitiveMembers",
        "queryType": "MicrosoftGraph"
    }
]
```

## Example 4: Group owners as reviewers

When the access review is scoped to a group, for example, examples 1-4 for [configuring an access review scope](accessreviews-scope-concept.md).

```http
"reviewers": [
    {
        "query": "/groups/{groupId}/owners",
        "queryType": "MicrosoftGraph"
    }
]
```

When the access review is scoped to a group and to assign only the group owners from a specific country as reviewers:

```http
"reviewers": [
    {
        "query": "/groups/{groupId}/owners?$filter=microsoft.graph.user/userType eq 'Member' and microsoft.graph.user/country eq 'USA'",
        "type": "MicrosoftGraph"
    }
]
```

When the access review is scoped to *all* groups, for example, examples 5-9 for [configuring an access review scope](accessreviews-scope-concept.md).

```http
"reviewers": [
    {
        "query": "./owners",
        "queryType": "MicrosoftGraph"
    }
]
```

## Example 5: People managers as reviewers

Because `./manager` is a relative query, specify the **queryRoot** property with the value `decisions`.

If the corresponding access review **scope** targets B2B direct connect users and teams with shared channels, the team owner is assigned to review access for the B2B direct connect users.

```http
"reviewers": [
    {
        "query": "./manager",
        "queryType": "MicrosoftGraph",
        "queryRoot": "decisions"
    }
]
```

## Example 6: Application owners as reviewers

```http
"reviewers": [
    {
        "query": "/servicePrincipals/{servicePrincipalId}/owners",
        "queryType": "MicrosoftGraph"
    }
]
```

## Related content

+ [Configure the scope of your access review definition](/graph/accessreviews-scope-concept)
+ [Try out tutorials](/graph/tutorial-accessreviews-securitygroup) to learn how to use the access reviews API to review access to Microsoft Entra resources
