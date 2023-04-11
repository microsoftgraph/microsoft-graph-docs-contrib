---
title: "Configure the scope of your access review using the Microsoft Graph API"
description: "Learn how to programmatically review the access that users, service principals, or groups have to your Azure AD resources by using the Microsoft Graph API."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
ms.date: 06/30/2022
---

# Configure the scope of your access review using the Microsoft Graph API

The Azure AD [access reviews API](/graph/api/resources/accessreviewsv2-overview) allows you to programmatically review the access that users, service principals, or groups have to your Azure AD resources. The API can help you to automate proactive review and keep control over access to resources in your organization.  

The resources to review are configured in the **scope** property of the [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition) resource. This property is of the type [accessReviewScope](/graph/api/resources/accessreviewscope), an abstract type that the following API resources that can be used to configure the access review scope inherit from.

|Resource|Description|Example scenarios|
|:---    |:---       |:---             |
|[accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope)|Inherits from **accessReviewScope**. Best applicable when reviewing the full set or subset of principals who have access to a resource or group of related resources.|<ul><li>Membership of users assigned to a group, either direct members or direct and transitive members.</li><li>Guest user access to one group.</li><li>Guest user access to all Microsoft 365 groups in a tenant.</li><li>Service principals assigned to privileged roles.</li><li>User and service principal access to Entitlement Management access packages.</li></ul>|
|[accessReviewInactiveUsersQueryScope](/graph/api/resources/accessreviewinactiveusersqueryscope)|Inherits from **accessReviewQueryScope**. Used when only inactive users are reviewed. Their inactive status is specified by the **inactiveDuration** property. |<ul><li>Group membership of only inactive users.</li><ul>|
|[principalResourceMembershipsScope](/graph/api/resources/principalResourceMembershipsScope)|Inherits from **accessReviewScope**. Best applicable to review principals' access to resources where you configure unique pools of principals and resources.|<ul><li>Reviewing access of three specific principals across one Microsoft 365 group *and* one privileged Azure AD role.</li><ul>|

In this article, you'll learn how to scope your access review using these three derived resource types.

## Use accessReviewQueryScope and accessReviewInactiveUsersQueryScope to configure scope

To configure the scope by using the **accessReviewQueryScope** type, set the values of its **query**, **queryRoot**, and **queryType** properties. For descriptions of these properties, see [accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope) resource type.

**accessReviewInactiveUsersQueryScope** requires all the properties of **accessReviewQueryScope** and includes an **inactiveDuration** property.

### Example 1: Review all users assigned to a group

The following example scopes the review to both direct and transitive members of the group who are users. The transitive members are members of the nested groups.

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/{groupId}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
```

**Example scenario:** Suppose group A has three direct members - users AU1 and AU2 and group G1. Group G1 on the other hand has two members - users GU1 and GU2. Users GU1 and GU2 are therefore transitive members of the nested group G1. Four objects will be included in the review: users AU1, AU2, GU1, and GU2.

To review *only inactive users* assigned to the group:

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "inactiveDuration": "P30D",
    "query": "/groups/{groupId}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
```

This example also scopes the review to both direct and transitive members of the group who are inactive users.

### Example 2: Review all guest users assigned to a group

The following example scopes the review to both direct and transitive members of the group who are guest users. The transitive members are members of the nested groups.

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/{groupId}/transitiveMembers/?$filter=(userType eq 'Guest')",    
    "queryType": "MicrosoftGraph"
}
```

### Example 3: Review all users and groups assigned to a group

The following example scopes the review to only direct members of the group who are either users or other groups. In this scope:
+ The direct users are included in the review.
+ The direct groups are included in the review.
+ The transitive members of the groups, that is, members of nested groups, aren't included in the review.

```http
"scope": {
        "query": "/groups/{groupId}/members",
        "queryType": "MicrosoftGraph"
}
```

**Example scenario:** Suppose group A has three direct members - users AU1 and AU2 and group G1. Group G1 on the other hand has two members - users GU1 and GU2. Users GU1 and GU2 are therefore transitive members of the nested group G1. Only three objects are targeted in the above review, users AU1 and AU2, and group G1.

### Example 4: Review all users assigned to all Microsoft 365 groups

The following example creates a review of all Microsoft 365 groups in the tenant. The review is scoped to only direct members of the group.

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c eq 'Unified'))",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "./members/microsoft.graph.user",
    "queryType": "MicrosoftGraph"
}
```

Additionally, because this review is applied on all Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Microsoft 365 groups to review. Dynamic groups and role-assignable groups aren't included in this review.

### Example 5: Review all guest users assigned to all Microsoft 365 groups

The following example scopes the review to direct members of all Microsoft 365 groups who are guest users.

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c eq 'Unified'))",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph"
}
```

Additionally, because this review is applied on all Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Microsoft 365 groups to review. Dynamic groups and role-assignable groups aren't included in this review.

#### Review all inactive guest users assigned to all Microsoft 365 groups

The following example scopes the review to direct members of all Microsoft 365 who are inactive guest users.

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c eq 'Unified'))",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "query": "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph",
    "inactiveDuration": "P30D"
}
```

Additionally, because this review is applied on inactive users, use the **accessReviewInactiveUsersQueryScope** resource and specify the **@odata.type** type property with the value `#microsoft.graph.accessReviewInactiveUsersQueryScope`. Dynamic groups and role-assignable groups aren't included in this review.

### Example 6: Review all guest users assigned to all teams

The following example scopes the review to direct members of all teams who are guest users.

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c eq 'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph"
}
```
    
Additionally, because this review is applied on all Teams-enabled Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Teams-enabled Microsoft 365 groups to review. Dynamic groups and role-assignable groups aren't included in this review.

This review won't include B2B direct connect users in teams with shared channels. To include B2B direct connect users in teams with shared channels, see [Example 11: Review all users assigned to a team, including B2B direct connect users in a team with shared channels](#example-11-review-all-users-assigned-to-a-team-including-b2b-direct-connect-users-in-a-team-with-shared-channels).

#### Review all inactive guest users assigned to all Teams

The following example scopes the review to direct members of all teams who are inactive guest users.

```http
"instanceEnumerationScope": {
    "query": "/groups?$filter=(groupTypes/any(c:c eq 'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')",
    "queryType": "MicrosoftGraph"
},
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "query": "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
    "queryType": "MicrosoftGraph",
    "inactiveDuration": "P30D"
}
```

Additionally, because this review is applied on all teams, configure the **instanceEnumerationScope** property to specify all teams. Dynamic groups and role-assignable groups aren't included in this review.

This review won't include B2B direct connect users in teams with shared channels. To include B2B direct connect users in teams with shared channels, see [Example 11: Review all users assigned to a team, including B2B direct connect users in a team with shared channels](#example-11-review-all-users-assigned-to-a-team-including-b2b-direct-connect-users-in-a-team-with-shared-channels).

---

### Example 7: Review all assignment to Entitlement Management access packages

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}' and catalogId eq 'id')",
    "queryType": "MicrosoftGraph"
}
```

---

### Example 8: Review all service principals assigned to a privileged role

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleAssignmentScheduleInstances?$expand=principal&$filter=(isof(principal,'microsoft.graph.servicePrincipal') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```
    
### Example 9: Review all users assigned to a privileged role 

#### Review all users assigned to a privileged role (all active and eligible assignments included)

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleDefinitions/{role ID}",
    "queryType": "MicrosoftGraph"
}
```
    
#### Review all users with eligible assignment to a privileged role

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleEligibilityScheduleInstances?$expand=principal&$filter=(isof(principal,'microsoft.graph.user') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```
    
#### Review all users with active assignment to a privileged role

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleAssignmentScheduleInstances?$expand=principal&$filter=(assignmentType eq 'Assigned' and isof(principal,'microsoft.graph.user') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```

---

## Use principalResourceMembershipsScope to configure scope

The **principalResourceMembershipsScope** exposes the **principalScopes** and **resourceScopes** properties to support more tailored configuration options for the scope of the **accessReviewScheduleDefinition** object. The capabilities include reviewing access for multiple principals or groups of principals to multiple resources.

### Example 10: Review all inactive guest users assigned to all groups

The following example scopes the review to direct members of all groups who are inactive guest users. The guest users are considered inactive users when the period of their inactivity is 30 days from the start date of the access review instance.

```http
"scope": {
    "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ],
    "resourceScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/groups",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

### Example 11: Review all users assigned to a team, including B2B direct connect users in a team with shared channels

In this example, the access review scope is all users who are members of a team, or assigned to a shared channel within the team. These members include internal users, direct and transitive users, B2B collaboration users, and B2B direct connect users.

```http
"scope": {
    "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "resourceScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/groups/{groupId}/transitiveMembers",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        },
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/teams/{groupId}/channels?$filter=(membershipType eq 'shared')",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ]
}
```

To review B2B direct connect users and teams within shared channels, you must specify the `/teams/{groupId}/channels?$filter=(membershipType eq 'shared')` **query** pattern in the **resourceScopes** object. An *all teams* review, such as [Example 6](#review-all-inactive-guest-users-assigned-to-all-teams), won't include B2B direct connect users and teams within shared channels.

> [!NOTE]
> Access review of B2B direct connect users and teams is only supported in single-stage access reviews and not in multi-stage access reviews.

### Example 12: Review all guest users assigned to a directory role

```http
"scope": {
    "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/roleManagement/directory/roleDefinitions/{role id}",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

## Next steps

+ [Assign reviewers to your access review definition](/graph/accessreviews-reviewers-concept)
+ [Try out tutorials](/graph/accessreviews-overview) to learn how to use the access reviews API to review access to Azure AD resources
+ [Create an access review](/azure/active-directory/governance/create-access-review)
