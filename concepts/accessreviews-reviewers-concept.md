---
title: "Assign reviewers to your access review using the Microsoft Graph API"
description: "Use the access reviews API in Microsoft Graph to assign access reviewers such as specific users, members or owners of a group, people managers, or app owners."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
---

# Assign reviewers to your access review using the Microsoft Graph API

The Azure AD [access reviews API](/graph/api/resources/accessreviewsv2-overview) allows you to programmatically review the access that users, service principals, or groups have to your Azure AD resources.

The primary reviewers are configured in the **reviewers** property of the access reviews [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition) resource.  In addition, you can specify fallback reviewers by using the **fallbackReviewers** property. These properties are not required when you create a self-review (where users review their own access).

To configure the reviewers and fallback reviewers, set the values of **query**, **queryRoot**, and **queryType** properties of **accessReviewReviewerScope**. For descriptions of these properties, see the [accessReviewReviewerScope](/graph/api/resources/accessreviewreviewerscope) resource type.

## Example 1: A self-review

```http
"reviewers": []
```

To configure a self-review, do not specify the **reviewers** property, or supply an empty object to the property.

If the corresponding access review **scope** targets B2B direct connect users and teams with shared channels, the team owner will be assigned to review access for the B2B direct connect users.

## Example 2: A specific user as the reviewer

```http
"reviewers": [
    {
        "query": "/users/{user id}",
        "queryType": "MicrosoftGraph"
    }
]
```

## Example 3: Members of a group as reviewers

```http
"reviewers": [
    {
        "query": "/groups/{group id}/transitiveMembers",
        "queryType": "MicrosoftGraph"
    }
]
```

## Example 4: Group owners as reviewers
```http
"reviewers": [
    {
        "query": "./owners",
        "queryType": "MicrosoftGraph"
    }
]
```

To assign only the group owners from a specific country as reviewers:

```http
"reviewers": [
    {
        "query": "/groups/{group id}/owners?$filter=microsoft.graph.user/userType eq 'Member' and microsoft.graph.user/country eq 'USA'",
        "type": "MicrosoftGraph”
    }
]
```

## Example 5: People managers as reviewers

```http
"reviewers": [
    {
        "query": "./manager",
        "queryType": "MicrosoftGraph",
        "queryRoot": "decisions"
    }
]
```

Because `./manager` is a relative query, specify the **queryRoot** property with the value `decisions`.

If the corresponding access review **scope** targets B2B direct connect users and teams with shared channels, the team owner will be assigned to review access for the B2B direct connect users.

## Example 6: Application owners as reviewers

```http
"reviewers": [
    {
        "query": "/servicePrincipals/{id}/owners",
        "queryType": "MicrosoftGraph"
    }
]
```

## Next steps

+ [Configure the scope of your access review definition](/graph/accessreviews-scope-concept)
+ [Try out tutorials](/graph/accessreviews-overview) to learn how to use the access reviews API to review access to Azure AD resources
+ [Create an access review](/azure/active-directory/governance/create-access-review)
