---
title: "Configure access review scope using Microsoft Graph APIs"
description: "Learn how to configure the scope of Microsoft Entra access reviews using Microsoft Graph APIs to automate access reviews."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.topic: how-to
ms.date: 08/19/2025
#customer intent: As a developer, I want to understand how to configure the scope of Microsoft Entra access reviews through Microsoft Graph, so that I can automate the process of reviewing and managing access to Microsoft Entra resources.
---

# Configure access review scope by using Microsoft Graph APIs

The Microsoft Entra [access reviews APIs](/graph/api/resources/accessreviewsv2-overview) enable you to programmatically review the access that users, service principals, or groups have to Microsoft Entra resources in your tenant.

Set the Microsoft Entra resources to review in the **scope** property of the [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition) resource. The following resources show the settings to configure the scope of the access review:

|Resource|Description|Example access review scenarios|
|:---    |:---       |:---             |
|[accessReviewQueryScope](/graph/api/resources/accessreviewqueryscope)|Best applicable when reviewing the full set or subset of principals who have access to a resource or group of related resources.|<ul><li>Membership of users assigned to a group, either direct members or direct and transitive members.</li><li>Guest user access to one group.</li><li>Guest user access to all Microsoft 365 groups.</li><li>Service principals assigned to privileged roles.</li><li>User and service principal access to Entitlement Management access packages.</li></ul>|
|[accessReviewInactiveUsersQueryScope](/graph/api/resources/accessreviewinactiveusersqueryscope)|Inherits from **accessReviewQueryScope**. Used when only inactive users are reviewed. Their inactive status is specified by the **inactiveDuration** property. |<ul><li>Group membership for inactive users only</li><ul>|
|[principalResourceMembershipsScope](/graph/api/resources/principalresourcemembershipsscope)|Inherits from **accessReviewScope**. Best applicable to review principals' access to resources where you configure unique pools of principals *and* resources.|<ul><li>Access for three specific principals to one Microsoft 365 group *and* one privileged Microsoft Entra role.</li><ul>|

This article explains how to scope your access review by configuring the three derived resource types.

## Configure scope by using accessReviewQueryScope and accessReviewInactiveUsersQueryScope

To configure the scope by using the [accessReviewQueryScope resource type](/graph/api/resources/accessreviewqueryscope), set the values for its **query**, **queryRoot**, and **queryType** properties.

**accessReviewInactiveUsersQueryScope** requires all the properties of **accessReviewQueryScope** and includes an **inactiveDuration** property.

## Examples

> [!NOTE]
> The examples in this section show the only valid combinations of *principalScopes* and *resourceScopes* that Microsoft Graph API supports.

### Example 1: Review all users with direct and transitive assignment to a group

**Example scenario:** Suppose group A has three direct members - users AU1 and AU2 and group G1. Group G1 on the other hand has two members - users GU1 and GU2. Users GU1 and GU2 are therefore transitive members of the nested group G1. Four objects are included in the review: users AU1, AU2, GU1, and GU2.

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/{groupId}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
```


### Example 2: Review all inactive users with direct and transitive assignment to a group

Because this review applies to inactive users, use the **accessReviewInactiveUsersQueryScope** resource and specify the **@odata.type** type property with the value `#microsoft.graph.accessReviewInactiveUsersQueryScope`. 

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
    "inactiveDuration": "P30D",
    "query": "/groups/{groupId}/transitiveMembers",
    "queryType": "MicrosoftGraph"
}
```

### Example 3: Review all guest users with direct and transitive assignment to a group

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/groups/{groupId}/transitiveMembers/?$filter=(userType eq 'Guest')",    
    "queryType": "MicrosoftGraph"
}
```

### Example 4: Review all users and groups with direct assignment to a group

The following example scopes the review to direct members of the group who are either users or other groups. In this scope:
- The direct users are included in the review.
- The direct groups are included in the review.
- The transitive members of the groups, that is, members of nested groups, aren't included in the review.

**Example scenario:** Suppose group A has three direct members - users AU1 and AU2 and group G1. Group G1 on the other hand has two members - users GU1 and GU2. Users GU1 and GU2 are transitive members of the nested group G1. Only three objects are targeted in this review, users AU1 and AU2, and group G1.

```http
"scope": {
    "query": "/groups/{groupId}/members",
    "queryType": "MicrosoftGraph"
}
```

### Example 5: Review all users with direct assignment to any Microsoft 365 group

Because this review applies to all Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Microsoft 365 groups to review. This review doesn't include groups that are of dynamic membership or role-assignable.

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

### Example 6: Review all guest users with direct assignment to any Microsoft 365 group

Because this review applies to all Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Microsoft 365 groups to review. This review doesn't include groups that are of dynamic membership or role-assignable.

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

### Example 7: Review all inactive guest users with direct assignment to any Microsoft 365 group

Because this review applies to inactive users, use the **accessReviewInactiveUsersQueryScope** resource and specify the **@odata.type** type property with the value `#microsoft.graph.accessReviewInactiveUsersQueryScope`. Also, because this review applies to all Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Microsoft 365 groups to review. This review doesn't include groups that are of dynamic membership or role-assignable.

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

### Example 8: Review all guest users with direct assignment to teams, except teams with shared channels

Because this review applies to all Teams-associated Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Teams-associated Microsoft 365 groups to review. This review doesn't include groups that are of dynamic membership or role-assignable.

This review excludes B2B direct connect users in teams with shared channels. To include B2B direct connect users in teams with shared channels, see [Example 14: Review all users assigned to a team, including B2B direct connect users in a team with shared channels](#example-13-review-all-users-assigned-to-a-team-including-b2b-direct-connect-users-in-a-team-with-shared-channels).

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

### Example 9: Review all inactive guest users with direct assignment to teams

Because this review applies to all Teams-associated Microsoft 365 groups, configure the **instanceEnumerationScope** to specify the Teams-associated Microsoft 365 groups to review. This review doesn't include groups that are of dynamic membership or role-assignable.

This review excludes B2B direct connect users in teams with shared channels. To include B2B direct connect users in teams with shared channels, see [Example 14: Review all users assigned to a team, including B2B direct connect users in a team with shared channels](#example-13-review-all-users-assigned-to-a-team-including-b2b-direct-connect-users-in-a-team-with-shared-channels).

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

---

### Example 10: Review all assignment to Entitlement Management access packages

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}' and catalogId eq 'id')",
    "queryType": "MicrosoftGraph"
}
```

---

### Example 11: Review all service principals assigned to a privileged role

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleAssignmentScheduleInstances?$expand=principal&$filter=(isof(principal,'microsoft.graph.servicePrincipal') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```
    
### Example 12: Review users assigned to a Microsoft Entra admin role 

#### Example 12.1: Review all users with active or eligible assignments to a directory role

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleDefinitions/{role ID}",
    "queryType": "MicrosoftGraph"
}
```
    
#### Example 12.2: Review all users with eligible assignments to a directory role

```http
"scope": {
    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
    "query": "/roleManagement/directory/roleEligibilityScheduleInstances?$expand=principal&$filter=(isof(principal,'microsoft.graph.user') and roleDefinitionId eq '{role ID}')",
    "queryType": "MicrosoftGraph"
}
```
    
#### Example 12.2: Review all users with active assignments to a directory role

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

### Example 13: Review all users assigned to a team, including B2B direct connect users in a team with shared channels

In this example, the access review scope includes all users who are members of a team or assigned to a shared channel within the team. These members include internal users, direct and transitive users, B2B collaboration users, and B2B direct connect users.

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

To review B2B direct connect users and teams within shared channels, specify the `/teams/{groupId}/channels?$filter=(membershipType eq 'shared')` **query** pattern in the **resourceScopes** object. An *all teams* review, such as examples 8 and 9, doesn't include B2B direct connect users and teams within shared channels.

> [!NOTE]
> Access review of B2B direct connect users and teams is only supported for single-stage access reviews, not for multi-stage access reviews.

### Example 14: Review all guest users assigned to a directory role

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


### Example 15: Review all users with direct or transitive assignment to an application

```http
"scope": {
    "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/v1.0/users",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        },
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "./members/microsoft.graph.user",
            "queryType": "MicrosoftGraph",
            "queryRoot": "/v1.0/groups"
        }
    ],
    "resourceScopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/v1.0/servicePrincipals/{servicePrincipalId}",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ]
}
```

## Related content

+ [Assign reviewers to your access review definition](/graph/accessreviews-reviewers-concept)
+ [Try out tutorials](/graph/tutorial-accessreviews-securitygroup) to learn how to use the access reviews API to review access to Microsoft Entra resources
