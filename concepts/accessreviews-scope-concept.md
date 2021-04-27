---
title: "Configure the scope of your access review definition"
description: "Use the scope property of accessReviewsScheduleDefinition to configure resources to review."
author: "isabelleatmsft"
localization_priority: Normal
---

# Configure the scope of your access review definition

Azure AD [access reviews APIs](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) allow you to programmatically review access to your Azure AD resources. This can be all users, a set of users (for example, guest users only), as well as service principals and groups with access to Azure AD resources.

> [!NOTE]
> The [access reviews APIs](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true) are currently available in only the Microsoft Graph beta endpoint. Do not use them in production apps, as they are subject to change without notice.

The resources to review are configured in the **scope** property of the access reviews [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition-create?view=graph-rest-beta&preserve-view=true) resource. This property is of the type [accessReviewScope](/graph/api/resources/accessreviewscope?view=graph-rest-beta&preserve-view=true), an abstract type inherited by the following resources that can be used to configure resources or groups of resources that access will be reviewed against.

|Resource|Description|Example scenarios|
|:---    |:---       |:---             |
|[accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope?view=graph-rest-beta&preserve-view=true)|Best applicable when reviewing the full set or subset of principals who have access to a resource or group of related resources.|<ul><li>Membership of users assigned to a group.</li><li>Guest user access to one group.</li><li>Guest user access to all Microsoft 365 groups in a tenant.</li><li>Service principals assigned to privileged roles.</li><li>User and service principal access to Entitlement Management access packages.</li></ul>|
|[accessReviewInactiveUsersQueryScope](/graph/api/resources/accessreviewinactiveusersqueryscope?view=graph-rest-beta&preserve-view=true)|Inherited from accessReviewQueryScope. Used when only inactive users are reviewed. Their inactive status is specified by the **inactiveDuration** property. |<ul><li>Group membership of only inactive users.</li><ul>|
|[principalResourceMembershipsScope](/graph/api/resources/principalResourceMembershipsScope?view=graph-rest-beta&preserve-view=true)|Best applicable to review principals' access to resources where you configure unique pools of principals and resources.|<ul><li>Reviewing access of 3 specific principals across 1 Microsoft 365 group *and* 1 privileged Azure AD role.</li><ul>|

In this article, you will use these types of accessReviewScope to configure a wide range of Azure AD resources as the scope of your access review. This can help you to automate proactive review and keep control over access to resources in your organization.  


## Use accessReviewQueryScope to configure scope

To configure the scope using the accessReviewQueryScope type, set the values of its **query**, **queryRoot**, and **queryType** properties. [See the accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope?view=graph-rest-beta&preserve-view=true) resource for descriptions of these properties.

Example configurations of the **scope** property using the accessReviewQueryScope include the following:

### Example 1: Review all users assigned to a group

```http
"scope": {
    "query": "/groups/{group id}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
```
To review *only inactive users* assigned to the group, specify as follows:

```http
"scope": {
    "inactiveDuration": "P30D",
    "query": "/groups/{group id}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
````

### Example 2: Review guest users assigned to a group

```http
"scope": {
    "query": "/groups/{group id}/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",    
    "queryType": "MicrosoftGraph"
}
```

### Example 3: Review guest users assigned to all groups

```http
"scope": {
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') ",
    "queryType": "MicrosoftGraph"
}
```

### Example 4: Review guest users assigned to all Microsoft 365 groups

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true ",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph"
}
```

Because this review is applied on all Microsoft 365 groups, configure the instanceEnumerationScope object to specify the Microsoft groups to review. If the instanceEnumerationScope object is not specified, this configuration is similar to [Example 3](/graph/accessreviews-scope-concept#example-3-review-guest-users-assigned-to-all-groups).

### Example 5: Review access of all inactive guest users to all groups

```http
"scope": {
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph",
    "inactiveDuration": "P30D"
}
```

Because this review is applied on inactive users, use the accessReviewInactiveUsersQueryScope resource, which inherits from the accessReviewQueryScope.

### Example 6: Review of all guest users assigned to all teams, excluding specific Microsoft 365 groups

```http
"scope": {
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph"
},
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team') and id ne '00407a09-76fc-4ac5-93db-2c457076d6b7' and id ne '0a24d601-c8b8-462e-b20e-19a1701a40d4' and id ne '0a5eb83f-f3f1-44db-a120-db0eb881130e')&$count=true",
    "queryType": "MicrosoftGraph"
}
```


```http
"scope": {
    "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph"
},
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and id ne '{group id}' and id ne '{group id}' and id ne '{group id}' and id ne '{group id}')&$count=true",
    "queryType": "MicrosoftGraph"
}
```

Because this review is applied on all Microsoft 365 groups, configure the instanceEnumerationScope object to specify the Microsoft groups to review. This example also excluded 4 Microsoft 365 groups.

### Example 7: Review of Entitlement Management access package assignment

```http
"scope": {
    "query": "/identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}')",
    "queryType": "MicrosoftGraph"
}
```

### Example 8: Review of service principals assigned to privileged roles 

```http
"scope": {
    "query": "/beta/roleManagement/directory/roleAssignmentScheduleInstances?$expand=principal&$filter=(isof(principal,'microsoft.graph.servicePrincipal') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```

## Use principalResourceMembershipsScope to configure scope

The **principalResourceMembershipsScope** exposes the **principalScopes** and **resourceScopes** properties to support more tailored configuration options for the scope of the accessReviewScheduleDefinition. This includes reviewing access for multiple principals or groups of principals to multiple resources.

Example configurations of the **scope** property using the principalResourceMembershipsScope include the following:

### Example 1: Review access of all users to a service principal

```http
"scope": {
    "principalScopes": [
        {
            "query": "/users",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "query": "/servicePrincipals/{serviceprincipal id}",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

### Example 2: Review access of all inactive guest users to a service principal

```http
"scope": {
    "principalScopes": [
        {
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ],
    "resourceScopes": [
        {
            "query": "/servicePrincipals/{serviceprincipal id}",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

In this example, the principals are all inactive guest users with the period of their inactivity calculated as 30 days from the start date of the accessReviewScheduleDefinition.

### Example 3: Review access of all guest users and a specific user, to all Microsoft 365 groups

```http
"scope": {
    "principalScopes": [
        {
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        },
        {
            "query": "/users/{user id}",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

### Example 4: Review access of all guest users to a directory role

```http
"scope": {
    "principalScopes": [
        {
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "query": "/roleManagement/directory/roleDefinitions/{role id}",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

### Example 5: Review access of all inactive users to all directory roles

```http
"scope": {
    "principalScopes": [
        {
            "query": "/users",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ],
    "resourceScopes": [
        {
            "query": "/roleManagement/directory/roleDefinitions",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

## See also

+ [Assign reviewers to your access review definition](/graph/accessreviews-reviewers-concept)