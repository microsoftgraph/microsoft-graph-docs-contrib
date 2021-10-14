---
title: "Tutorial: Use the access reviews API to review access to privileged roles"
description: "Use the access reviews API to review access to privileged roles"
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "governance"
---

# Tutorial: Use the access reviews API to review access to privileged roles

Contoso Limited is a growing service provider that has delegated various Azure AD administrator privileges to users, groups, and service principals in the organization. The company needs to ensure only the right assignees have access to privileged roles. The system auditors should also audit the access review history to report on the effectiveness of Contoso's internal controls.

In this tutorial, you as the Global Administrator of Contoso will use the access reviews API to create a recurring access review of users and groups with access (both active and eligible) to privileged roles. You'll then create a review history report that will be shared with the company’s auditors.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) as a user in an Identity Governance Administrator role.
+ Principals assigned to a privileged role that is the scope of your access review. To assign privileged roles, see [Tutorial: Use the Privileged Identity Management (PIM) API to assign Azure AD roles](/graph/tutorial-assign-azureadroles).
+ The following delegated permissions: `AccessReview.ReadWrite.All`.

To consent to the required permissions in Graph Explorer:
1. Select the horizontal ellipses icon to the right of the user account details, and then choose **Select permissions**.

      :::image type="content" source="/graph/images/GE-Permissions/selectpermissions.png" alt-text="Select Microsoft Graph permissions." border="true":::

2. Scroll through the list of permissions to **AccessReview (3)**, expand and then select `AccessReview.ReadWrite.All`. Select **Consent**, and then select **Accept** to accept the consent of the permissions.

      :::image type="content" source="/graph/images/GE-Permissions/User.ReadWrite.All-consent.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

>[!NOTE]
>The response objects shown in this tutorial might be shortened for readability.

## Step 1: Create an access review of privileged role assignments

In this tutorial, we create a recurring access review of both *active* and *eligible* assignments to the User Administrator role. An **accessReviewScheduleDefinition** can be used to define the access review of multiple principle types (users and groups, or service principals) to only one privileged role. To review access to multiple privileged roles, create separate accessReviewScheduleDefinition objects.

The following access review schedule definition has the following settings:

+ The principals (**principalScopes**) whose access will be reviewed are groups and users, and the resource (**resourceScopes**) is the User Administrator role.
+ The scope (**resourceScopes**) of the review is on both active and eligible User Administrator assignments.
+ You as the user in an Identity Governance Administrator role will be the reviewer.
+ The user in the Global Administrator role is the fallback reviewer. This ensures that if decisions aren't applied within the schedule, the fallback reviewer is notified of the pending access review for action.
+ The approver must provide justification before they approve access to the privileged role.
+ The default decision is `Deny` when neither the main nor the fallback reviewers respond to the access review request, or when an instance of the access review expires before a reviewer records the decision.
+ **autoApplyDecisionsEnabled** isn't set and defaults to `false`. In this case, after the review completes, a user whose access was a subject of the review must apply the decisions manually.
+ The review recurs monthly over a period of three days and doesn't end.

### Request

In the following request, replace the following values:

+ `4562bcc8-c436-4f95-b7c0-4f8ce89dca5e` with the value of your user identifier.
+ `77f8b7b6-1119-4a86-b4c3-e7d68e990424` with the value of the global administrator's user identifier.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviewsroleassignments-create"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions
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
            "query": "/users/77f8b7b6-1119-4a86-b4c3-e7d68e990424",
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
                "type": "absoluteMonthly",
                "interval": 3
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
    "id": "a13c348b-dc1c-47b5-8c58-b0d12b35a18b",
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
            "query": "/users/77f8b7b6-1119-4a86-b4c3-e7d68e990424",
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
                "interval": 3,
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

## Step 2: Retrieve instances of the access review

Each access review instance represents each unique resource that is under review. In Step 1, only one access review was created to review access to the User Administrator resource that is identified by the role definition **id** `e930be7-5e62-47db-91af-98c3a49a38b1`.

### Request

In the following request, replace `a13c348b-dc1c-47b5-8c58-b0d12b35a18b` with the value of the access review that you created in Step 1.

```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/a13c348b-dc1c-47b5-8c58-b0d12b35a18b/instances
```

### Response

In this response, the instance object shows the end date as three days after the start date; this period was defined in Step 1 in the **instanceDurationInDays** property of the accessReviewScheduleDefinition. Only one instance is returned, representing only one access review in the tenant.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('a13c348b-dc1c-47b5-8c58-b0d12b35a18b')/instances",
    "@odata.count": 1,
    "value": [
        {
            "id": "f282e54c-4eed-47a4-be9a-da00ab38aa8f",
            "startDateTime": "2021-10-14T09:27:04.633Z",
            "endDateTime": "2021-10-17T09:27:04.633Z",
            "status": "InProgress",
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
                        "query": "/v1.0/groups",
                        "queryType": "MicrosoftGraph",
                        "queryRoot": null
                    }
                ],
                "resourceScopes": [
                    {
                        "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                        "query": "/beta/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
                        "queryType": "MicrosoftGraph",
                        "queryRoot": null
                    }
                ]
            },
            "reviewers": [
                {
                    "query": "/v1.0/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
                    "queryType": "MicrosoftGraph",
                    "queryRoot": null
                }
            ],
            "fallbackReviewers": [
                {
                    "query": "/v1.0/users/77f8b7b6-1119-4a86-b4c3-e7d68e990424",
                    "queryType": "MicrosoftGraph",
                    "queryRoot": null
                }
            ]
        }
    ]
}
```

The status of this access review instance is `InProgress`. This means that the decisions haven't been made, nor has the period for this access review instance expired.

## Step 3: Retrieve access review decisions before recording any decisions

In this step, you'll retrieve the access review decision items before we complete the access review; that is, either before the reviewer submits a decision or before the access review instance expires.

### Request

In the following request, replace the following values:

+ `a13c348b-dc1c-47b5-8c58-b0d12b35a18b` with the value of the access review that you created in Step 1.
+ `f282e54c-4eed-47a4-be9a-da00ab38aa8f` with the value of the access review instance you'd like to retrieve decisions for.


```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/a13c348b-dc1c-47b5-8c58-b0d12b35a18b/instances/f282e54c-4eed-47a4-be9a-da00ab38aa8f/decisions
```

### Response

The following response shows two decision items each corresponding to a decision per a principal's access to the resource.

+ The principal property shows that two principals have access to the User Administrator role—a group named **Role assignable group** and a user named **Adele Vance**.
+ The reviewers haven't reviewed the instances as indicated by the `NotReviewed` value of the **decision** property.
+ No recommendations are available because recommendations weren't enabled in the accessReviewScheduleDefinition in Step 1.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('a13c348b-dc1c-47b5-8c58-b0d12b35a18b')/instances('f282e54c-4eed-47a4-be9a-da00ab38aa8f')/decisions",
    "@odata.count": 2,
    "value": [
        {
            "id": "09c27ef4-4709-47b7-b661-3eac0d6a8627",
            "accessReviewId": "f282e54c-4eed-47a4-be9a-da00ab38aa8f",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/groups/86da86bd-272e-4ae4-998e-3d803d63cf0d",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "principal": {
                "id": "86da86bd-272e-4ae4-998e-3d803d63cf0d",
                "displayName": "Role assignbale group",
                "type": "group"
            }
        },
        {
            "id": "115d96e2-a235-4cfa-8273-f8b66c4fc6ab",
            "accessReviewId": "f282e54c-4eed-47a4-be9a-da00ab38aa8f",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/users/99e44b05-c10b-4e95-a523-e2732bbaba1e",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "99e44b05-c10b-4e95-a523-e2732bbaba1e",
                "displayName": "Adele Vance",
                "type": "user",
                "userPrincipalName": "AdeleV@M365x010717.OnMicrosoft.com",
                "lastUserSignInDateTime": ""
            }
        }
    ]
}
```

You can now record or submit your decisions for the access review instances.

## Step 4: Record decisions

You'll now record decisions for the access review. The scope of your decision can be one of the options:
+ A decision that applies for a single principal only
+ A decision that applies for a single resource only
+ A decision that applies for a single principal to a single resource
+ **What does neither do?**

In this step, you'll record a decision that applies for a single principal to a single resource. The company policy requires that access to privileged roles be granted to only groups and not individual users. In compliance with the company policy, you'll therefore deny Adele access while approving access for the IT Helpdesk group.

In the following requests, replace the following values:

+ `a13c348b-dc1c-47b5-8c58-b0d12b35a18b` with the value of the access review that you created in Step 1.
+ `f282e54c-4eed-47a4-be9a-da00ab38aa8f` with the value of the access review instance you'd like to retrieve decisions for.
+ `86da86bd-272e-4ae4-998e-3d803d63cf0d` with the value of IT Helpdesk group's id.
+ `99e44b05-c10b-4e95-a523-e2732bbaba1e` with the value of Adele's id

`fe930be7-5e62-47db-91af-98c3a49a38b1` is the Azure AD identifier of the User Administrator role that is the resource that's the subject of the review.

### Request

In the following request, you'll approve access for the IT Helpdesk group.

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/a13c348b-dc1c-47b5-8c58-b0d12b35a18b/instances/f282e54c-4eed-47a4-be9a-da00ab38aa8f/batchRecordDecisions
Content-type: application/json

{
    "decision": "Approve",
    "justification": "The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources",
    "resourceId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "principalId": "86da86bd-272e-4ae4-998e-3d803d63cf0d"
}
```

### Response

```
HTTP/1.1 204 No Content
```

### Request

In the following request, we'll deny access for Adele Vance.

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/a13c348b-dc1c-47b5-8c58-b0d12b35a18b/instances/f282e54c-4eed-47a4-be9a-da00ab38aa8f/batchRecordDecisions
Content-type: application/json

{
    "decision": "Approve",
    "justification": "Adele Vance should join an allowed group to have continued access to the User Administrator role. Refer to the company policy '#132487: Privileged roles' for more details.",
    "resourceId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
    "principalId": "99e44b05-c10b-4e95-a523-e2732bbaba1e"
}
```

### Response

```
HTTP/1.1 204 No Content
```

## Step 5: Retrieve access review decisions

Contoso's auditors are reviewing of all decisions to grant or deny access to privileged roles in the organization. You'll retrieve access review decision logs for all access reviews scoped to privileged roles. In this example, you'll retrieve decision logs for the accessReviewScheduleDefinition you created in Step 1.

### Request

```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/a13c348b-dc1c-47b5-8c58-b0d12b35a18b/instances/f282e54c-4eed-47a4-be9a-da00ab38aa8f/decisions
```

### Response

The following response object is different from the response object you received in Step 3 with the following settings:
+ 
+
+

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('a13c348b-dc1c-47b5-8c58-b0d12b35a18b')/instances('f282e54c-4eed-47a4-be9a-da00ab38aa8f')/decisions",
    "@odata.count": 2,
    "value": [
        {
            "id": "09c27ef4-4709-47b7-b661-3eac0d6a8627",
            "accessReviewId": "f282e54c-4eed-47a4-be9a-da00ab38aa8f",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/groups/86da86bd-272e-4ae4-998e-3d803d63cf0d",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "principal": {
                "id": "86da86bd-272e-4ae4-998e-3d803d63cf0d",
                "displayName": "Role assignbale group",
                "type": "group"
            }
        },
        {
            "id": "115d96e2-a235-4cfa-8273-f8b66c4fc6ab",
            "accessReviewId": "f282e54c-4eed-47a4-be9a-da00ab38aa8f",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/users/99e44b05-c10b-4e95-a523-e2732bbaba1e",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "99e44b05-c10b-4e95-a523-e2732bbaba1e",
                "displayName": "Adele Vance",
                "type": "user",
                "userPrincipalName": "AdeleV@M365x010717.OnMicrosoft.com",
                "lastUserSignInDateTime": ""
            }
        }
    ]
}
```

## Step 6: Clean up resources

Delete the accessReviewScheduleDefinition object that you created for this tutorial. Because the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions associated with the access review.

### Request

```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/c22ae540-b89a-4d24-bac0-4ef35e6591ea
```

### Response

```
HTTP/1.1 204 No Content
Content-type: text/plain
```

## See also

+ [Access reviews API Reference](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true)
+ [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept)