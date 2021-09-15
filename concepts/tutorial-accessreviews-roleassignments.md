---
title: "Tutorial: Use the access reviews API to review access to privileged roles"
description: "Use the access reviews API to review access to privileged roles"
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "governance"
---

# Tutorial: Use the access reviews API to review access to privileged roles

Contoso Limited is a growing service provider that has delegated various Azure AD administrator privileges to users, groups, and service principals in the organization. The company needs to ensure that only the right assignees have active or eligible assignments to the privileged roles. The system auditors should also audit the access review history to report on the effectiveness of Contoso's internal controls.

In this tutorial, you as the Global Administrator of Contoso will use the access reviews API to create a recurring access review of users and groups to privileged roles. You'll then create a review history report that will be shared with the company’s auditors.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) as a user in an Identity Governance Administrator or Global Administrator role.
+ Principals assigned to the privileged role that is the scope of your access review. To assign privileged roles, see [Tutorial: Use the Microsoft Graph Privileged Identity Management (PIM) API to assign privileged roles]().
+ The following delegated permissions: `AccessReview.ReadWrite.All`.

To consent to the required permissions in Graph Explorer:
1. Select the horizontal ellipses icon to the right of the user account details, and then choose **Select permissions**.

      :::image type="content" source="/graph/images/GE-Permissions/selectpermissions.png" alt-text="Select Microsoft Graph permissions." border="true":::

2. Scroll through the list of permissions to **AccessReview (3)**, expand and then select `AccessReview.ReadWrite.All`. Select **Consent**, and then select **Accept** to accept the consent of the permissions.

      :::image type="content" source="/graph/images/GE-Permissions/User.ReadWrite.All-consent.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

>[!NOTE]
>The response objects shown in this tutorial might be shortened for readability.

## Step 1: Create an access review of privileged role assignments

In this tutorial, we create a recurring access review of both *active* and *eligible* assignments to the User Administrator role.

An **accessReviewScheduleDefinition** can be used to define the access review of multiple principle types (users and groups, or service principals) to only one privileged role. To review access to multiple privileged roles, create separate accessReviewScheduleDefinition objects.

The following access review schedule definition has the following settings:

+ The principals (**principalScopes**) whose access will be reviewed are groups and users, and the resource (**resourceScopes**) is the User Administrator privileged role.
+ The scope (**resourceScopes**) of the review is on both active and eligible User Administrator assignments.
+ You as the user in an Identity Governance Administrator role will be the reviewer.
+ Assign the user in the Global Administrator role as the fallback reviewer. This ensures that if decisions aren't applied within the schedule, the fallback reviewer is notified of the pending access review for action.
+ **autoApplyDecisionsEnabled** isn't set and defaults to `false`. In this case, a user must, after the review completes, apply the decisions manually.
+ The review recurs monthly over a period of three days and has no end.

### Request

In the following request, replace the following values:

+ `4562bcc8-c436-4f95-b7c0-4f8ce89dca5e` with the value of your user ID.
+ `4562bcc8-c436-4f95-b7c0-4f8ce89dca5e`** with the value of the global administrator's user ID.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviewsroleassignments-create"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions
Content-type: application/json

{
    "displayName": "Review access of users and groups to privileged roles",
    "descriptionForAdmins": "Review access of users and groups to privileged roles",
    "scope": {
        "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
        "principalScopes": [
            {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/users",
                "queryType": "MicrosoftGraph"
            },
            {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/groups",
                "queryType": "MicrosoftGraph"
            }
        ],
        "resourceScopes": [
            {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/roleManagement/directory/roleDefinitions/beta/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
                "queryType": "MicrosoftGraph"
            }
        ]
    },
    "reviewers": [
        {
            "query": "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
            "queryType": "MicrosoftGraph"
        }
    ],
    "fallbackReviewers": [
        {
            "query": "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
            "queryType": "MicrosoftGraph"
        }
    ],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": false,
        "defaultDecision": "None",
        "instanceDurationInDays": 3,
        "recommendationsEnabled": false,
        "recurrence": {
            "pattern": {
                "type": "weekly",
                "interval": 1
            },
            "range": {
                "type": "noEnd",
                "startDate": "2021-09-15"
            }
        }
    }
}
```

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions/$entity",
    "id": "4376d821-3e05-4f95-81e0-5cc51f207310",
    "displayName": "Review access of users and groups to privileged roles",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "Review access of users and groups to privileged roles",
    "descriptionForReviewers": null,
    "instanceEnumerationScope": null,
    "createdBy": {
        "id": "4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
        "displayName": "MOD Administrator",
        "type": null,
        "userPrincipalName": "admin@M365x010717.onmicrosoft.com"
    },
    "scope": {
        "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
        "principalScopes": [
            {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/users",
                "queryType": "MicrosoftGraph",
                "queryRoot": null
            },
            {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/groups",
                "queryType": "MicrosoftGraph",
                "queryRoot": null
            }
        ],
        "resourceScopes": [
            {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/roleManagement/directory/roleDefinitions/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
                "queryType": "MicrosoftGraph",
                "queryRoot": null
            }
        ]
    },
    "reviewers": [
        {
            "query": "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "fallbackReviewers": [
        {
            "query": "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": false,
        "defaultDecision": "None",
        "instanceDurationInDays": 3,
        "autoApplyDecisionsEnabled": false,
        "recommendationsEnabled": false,
        "recurrence": {
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 1,
                "month": 0,
                "dayOfMonth": 0,
                "daysOfWeek": [],
                "firstDayOfWeek": "sunday",
                "index": "first"
            },
            "range": {
                "type": "noEnd",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2021-09-15",
                "endDate": null
            }
        },
        "applyActions": []
    }
}
```

## Step 6: Clean up resources

Delete the following resources that you created for this tutorial: the access review schedule definition.



## See also

+ [Access reviews API Reference](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true)
+ [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept)