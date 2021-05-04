---
title: "Assign reviewers to your access review definition"
description: "Use the reviewers property of accessReviewsScheduleDefinition to assign reviewers of your access review."
author: "isabelleatmsft"
localization_priority: Normal
---

# Assign reviewers to your access review definition

Azure AD [access reviews APIs](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) allow you to programmatically review access to your Azure AD resources. This can be all users, a set of users (for example, guest users only), as well as service principals and groups with access to Azure AD resources.

> [!NOTE]
> The [access reviews APIs](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) are currently available in only the Microsoft Graph beta endpoint. Do not use them in production apps, as they are subject to change without notice.

The primary reviewers are configured in the **reviewers** property of the access reviews [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true) resource, a property of the type [accessReviewReviewerScope](/graph/api/resources/accessreviewreviewerscope?view=graph-rest-beta&preserve-view=true).  In addition, you can specificy fallback reviewers using **backupReviewers**, another property of the type [accessReviewReviewerScope](/graph/api/resources/accessreviewreviewerscope?view=graph-rest-beta&preserve-view=true)

Note that this property is not required when creating a self-review (where users review their own access).

## Use accessReviewReviewerScope to configure reviewers

To configure the reviewers and/or fallback reviewers, set the values of **query**, **queryRoot**, and **queryType** properties of accessReviewReviewerScope. [See the accessReviewReviewerScope](/graph/api/resources/accessreviewreviewerscope?view=graph-rest-beta&preserve-view=true) resource for descriptions of these properties.

Example configurations of the **reviewers** or **backupReviewers** property using the accessReviewReviewerScope include the following:

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
        "queryType": "MicrosoftGraph",
        "queryRoot": "decisions"
    }
]
```

To specify only a specific non-guest group's owners from a specific country as the reviewers, specify as follows:

```http
"reviewers": [
    {
        "query": "/groups/{group id}/owners?$filter=microsoft.graph.user/userType eq 'Member' and microsoft.graph.user/country eq 
        'USA'",
        "type": "MicrosoftGraph”
    }
]
```

### Example 4: People managers as the reviewers

```http
"reviewers": [
    {
        "query": "./manager",
        "queryType": "MicrosoftGraph",
        "queryRoot": "decisions"
    }
]
```

## See also

+ [Configure the scope of your access review definition](/graph/accessreviews-scope-concept)