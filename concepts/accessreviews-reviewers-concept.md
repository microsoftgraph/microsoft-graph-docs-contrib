---
title: "Assign reviewers to your access review definition"
description: "Learn how to use the access reviews API in Microsoft Graph to assign access reviewers."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# Assign reviewers to your access review definition using the Microsoft Graph API

The Azure AD [access reviews API](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) allow you to programmatically review access—of all users, a set of users (for example, guest users only), as well as service principals and groups—to your Azure AD resources.

> [!NOTE]
> The [access reviews API](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) are currently available in only the Microsoft Graph beta endpoint. Do not use them in production apps, as they are subject to change without notice.

The primary reviewers are configured in the **reviewers** property of the access reviews [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true) resource.  In addition, you can specify fallback reviewers using **fallbackReviewers** property. These properties are not required when you create a self-review (where users review their own access).

## Configure reviewers

To configure the reviewers and fallback reviewers, set the values of **query**, **queryRoot**, and **queryType** properties of **accessReviewReviewerScope**. [See the accessReviewReviewerScope](/graph/api/resources/accessreviewreviewerscope?view=graph-rest-beta&preserve-view=true) resource for descriptions of these properties.

### Example 1: A specific user as the reviewer

```http
"reviewers": [
    {
        "query": "/users/{user id}",
        "queryType": "MicrosoftGraph"
    }
]
```

### Example 2: Members of a group as reviewers

```http
"reviewers": [
    {
        "query": "/groups/{group id}}/transitiveMembers",
        "queryType": "MicrosoftGraph"
    }
]
```

### Example 3: Group owners as reviewers
```http
"reviewers": [
    {
        "query": "./owners",
        "queryType": "MicrosoftGraph"
    }
]
```

To specify only a specific non-guest groups owners from a specific country as the reviewers, specify as follows:

```http
"reviewers": [
    {
        "query": "/groups/{group id}/owners?$filter=microsoft.graph.user/userType eq 'Member' and microsoft.graph.user/country eq 'USA'",
        "type": "MicrosoftGraph”
    }
]
```

### Example 4: People managers as reviewers

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

## See also

+ [Configure the scope of your access review definition](/graph/accessreviews-scope-concept)