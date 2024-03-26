---
title: "Review access to administrative roles using the access reviews APIs"
description: "Learn how to use the access reviews API to periodically review users and groups with both active and eligible privileged roles."
author: FaithOmbongi
ms.author: ombongifaith
ms.topic: tutorial
ms.reviewer: jgangadhar, rianakarim
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
ms.date: 03/26/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to use the access reviews APIs to review and attest to the privileged admin roles that principals in my organization, so that I can ensure proper security and compliance in my organization.
---

# Review access to administrative roles using the access reviews APIs

The access reviews API in Microsoft Graph enables organizations to audit and attest to the access that identities (also called *principals*) are assigned to resources in the organization. One of the most sensitive resources in an organization is administrative roles. Using the access reviews API, organizations can periodically attest to principals that have access to administrative roles as per the organization policy.

Contoso needs to ensure only the right assignees are assigned th administrative roles. The system auditors should also audit the access review history to report on the effectiveness of Contoso's internal controls.

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Create a recurring access review of principals with active or eligible Microsoft Entra roles.
> * Investigate the decisions that are applied to access reviews.
> * Generate an access review history report 

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Microsoft Entra tenant with a Microsoft Entra ID P2 or Microsoft Entra ID Governance license enabled. 
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with an account that has at least the *Identity Governance Administrator* role.
+ Principals, such as a security group and an individual user, with active or eligible assignments to a Microsoft Entra role, such as the *User Administrator* role. Their assignments are the scope of your access review. To assign administrative roles, see [Tutorial: Use the Privileged Identity Management (PIM) API to assign Microsoft Entra roles](/graph/tutorial-assign-azureadroles).
+ Grant yourself the following delegated permissions: `AccessReview.ReadWrite.All`.

## Step 1: Create an access review of role assignments

The following access review schedule definition has the following settings:

+ The scope of the review is groups and users (**principalScopes** property) with access to the User Administrator role.
  + An access review can be scoped to multiple principal types (users and groups, or service principals) and *only one* resource. To review access to multiple Microsoft Entra roles, create separate access reviews.
  + roleDefinitionId `fe930be7-5e62-47db-91af-98c3a49a38b1` is the global template identifier for the Microsoft Entra *User Administrator* role.
+ Both active and eligible assignments to the User Administrator role are in review.
+ The reviewer is an individual user. You can assign yourself as the reviewer.
+ The approver must provide justification before they approve access to the Microsoft Entra role.
+ The default decision is `None` when the reviewers don't respond to the access review request before the instance expires.
+ **autoApplyDecisionsEnabled** isn't set and defaults to `false`. In this case, after the review completes, the decisions aren't automatically applied so you must manually apply them.
+ The review recurs every three months over a period of three days and doesn't end.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviledroles-create"
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
                "query": "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
                "queryType": "MicrosoftGraph"
            }
        ]
    },
    "reviewers": [
        {
            "query": "/users/2560f739-2e0e-4550-9fa0-1a1e67ae0ab8",
            "queryType": "MicrosoftGraph"
        }
    ],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": false,
        "defaultDecision": "None",
        "instanceDurationInDays": 1,
        "recommendationsEnabled": false,
        "recurrence": {
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 3
            },
            "range": {
                "type": "noEnd",
                "startDate": "2024-03-25"
            }
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-priviledroles-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-priviledroles-create-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-priviledroles-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-priviledroles-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviledroles-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-priviledroles-create-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-priviledroles-create-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-priviledroles-create-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition"
} -->

> **Note:** The response object shown here might be shortened for readability.
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions/$entity",
    "id": "02800b79-1a6f-40b7-8381-c0bebc3763bd",
    "displayName": "Review access of users and groups to privileged roles",
    "status": "NotStarted",
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
                "query": "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
                "queryType": "MicrosoftGraph"
            }
        ]
    },
    "reviewers": [
        {
            "query": "/users/2560f739-2e0e-4550-9fa0-1a1e67ae0ab8",
            "queryType": "MicrosoftGraph"
        }
    ],
    "fallbackReviewers": [],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": false,
        "defaultDecision": "None",
        "instanceDurationInDays": 1,
        "autoApplyDecisionsEnabled": false,
        "recommendationsEnabled": false,
        "recommendationLookBackDuration": null,
        "decisionHistoriesForReviewersEnabled": false,
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
                "startDate": "2024-03-25",
                "endDate": null
            }
        },
        "applyActions": [],
        "recommendationInsightSettings": []
    },
    "stageSettings": [],
    "additionalNotificationRecipients": []
}
```

## Step 2: Retrieve instances of the access review

Each access review instance represents *each recurrence with each unique resource* that is under review. Because you defined a recurring access review, the ID of the instance is different from the ID of the schedule definition in Step 1.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-getinstances"
}-->
```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-priviegedroles-getinstances-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-priviegedroles-getinstances-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-priviegedroles-getinstances-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-priviegedroles-getinstances-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviegedroles-getinstances-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-priviegedroles-getinstances-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-priviegedroles-getinstances-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-priviegedroles-getinstances-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The status of this access review instance is `InProgress`, meaning that the review instance is open for reviewers to submit decisions, and the period for this access review instance hasn't expired. You also received an email notification from Microsoft Azure requesting you to perform the access review.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstance"
} -->

> **Note:** The response object shown here might be shortened for readability.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('02800b79-1a6f-40b7-8381-c0bebc3763bd')/instances",
    "@odata.count": 1,
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/accessReviews/definitions('<guid>')/instances?$select=endDateTime,fallbackReviewers",
    "value": [
        {
            "id": "30f0cb53-da42-402e-8be5-9005f9c374f7",
            "startDateTime": "2024-03-25T09:38:15.177Z",
            "endDateTime": "2024-03-26T09:38:15.177Z",
            "status": "InProgress",
            "scope": {
                "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
                "principalScopes": [
                    {
                        "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                        "query": "/v1.0/users",
                        "queryType": "MicrosoftGraph"
                    },
                    {
                        "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                        "query": "/v1.0/groups",
                        "queryType": "MicrosoftGraph"
                    }
                ],
                "resourceScopes": [
                    {
                        "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                        "query": "/beta/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
                        "queryType": "MicrosoftGraph"
                    }
                ]
            },
            "reviewers": [
                {
                    "query": "/v1.0/users/2560f739-2e0e-4550-9fa0-1a1e67ae0ab8",
                    "queryType": "MicrosoftGraph"
                }
            ],
            "fallbackReviewers": []
        }
    ]
}
```

## Step 3: Retrieve access review decisions before recording any decisions

Before you can post decisions, let us first inspect the items waiting for your decision.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-getnodecisions"
}-->
```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances/30f0cb53-da42-402e-8be5-9005f9c374f7/decisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-priviegedroles-getnodecisions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-priviegedroles-getnodecisions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-priviegedroles-getnodecisions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-priviegedroles-getnodecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviegedroles-getnodecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-priviegedroles-getnodecisions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-priviegedroles-getnodecisions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-priviegedroles-getnodecisions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response shows two decision items each corresponding to a decision required for each principal's access to the resource. Because recommendations weren't enabled in Step 1, no recommendations are available. As the reviewer, you can now submit your decisions for the access review instance.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "collection(microsoft.graph.accessReviewInstanceDecisionItem)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('02800b79-1a6f-40b7-8381-c0bebc3763bd')/instances('30f0cb53-da42-402e-8be5-9005f9c374f7')/decisions",
    "@odata.count": 2,
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/accessReviews/definitions('<guid>')/instances('<guid>')/decisions?$select=accessReviewId,appliedBy",
    "value": [
        {
            "id": "25bf64c2-2396-4efc-9bb8-e9dc39ee0441",
            "accessReviewId": "30f0cb53-da42-402e-8be5-9005f9c374f7",
            "decision": "NotReviewed",
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/users/ad20a697-7be8-410a-bb08-207a21e6400d",
            "resourceLink": "https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
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
            "resource": {
                "id": "fe930be7-5e62-47db-91af-98c3a49a38b1",
                "displayName": "User Administrator",
                "type": "directoryRole"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "ad20a697-7be8-410a-bb08-207a21e6400d",
                "displayName": "Adele Vance",
                "type": "user",
                "userPrincipalName": "AdeleV@contoso.com",
                "lastUserSignInDateTime": ""
            }
        },
        {
            "id": "888007fa-1d32-4000-a359-fd1d5876a3ed",
            "accessReviewId": "30f0cb53-da42-402e-8be5-9005f9c374f7",
            "decision": "NotReviewed",
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/groups/df434df5-5b8e-4044-9fa3-ac9d6ea45156",
            "resourceLink": "https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
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
            "resource": {
                "id": "fe930be7-5e62-47db-91af-98c3a49a38b1",
                "displayName": "User Administrator",
                "type": "directoryRole"
            },
            "principal": {
                "id": "df434df5-5b8e-4044-9fa3-ac9d6ea45156",
                "displayName": "User Administrators",
                "type": "group"
            }
        }
    ]
}
```

## Step 4: Record decisions

Assume that the company policy requires that access to administrative roles be granted through security groups and not directly to individual principals. In compliance with the company policy, you post a decision to deny Adele Vance access while approving access for the group.

### Approve the security group's role assignment

In the following request, you approve access for the IT Helpdesk group. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-decisionsforgroup"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances/30f0cb53-da42-402e-8be5-9005f9c374f7/decisions/888007fa-1d32-4000-a359-fd1d5876a3ed
Content-type: application/json

{
    "decision": "Approve",
    "justification": "The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources"
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviegedroles-decisionsforgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Deny the individual user their role assignment

In the following request, you deny access for Adele Vance. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-decisionsforuser"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances/30f0cb53-da42-402e-8be5-9005f9c374f7/decisions/25bf64c2-2396-4efc-9bb8-e9dc39ee0441
Content-type: application/json

{
    "decision": "Deny",
    "justification": "Adele should join an allowed group to maintain access to the User Administrator role. For more details, refer to the company policy '#132487: Administrative roles'"
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviegedroles-decisionsforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

When you retrieve the access review decisions (repeat Step 3), they have the following settings:
+ The access review decision for the IT Helpdesk group is `Approve` while for Adele is `Deny`.
+ The reviewedBy object contains your details as the reviewer.
+ **applyResult** is `New` meaning the decisions haven't been applied.

While you recorded all the pending decisions for this instance, the decisions haven't been applied to the resource and principal objects. For example, Adele still has User Administrator privileges. You can verify this assignment by running the following query `https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=roleDefinitionId eq 'fe930be7-5e62-47db-91af-98c3a49a38b1'`. This behavior is because the **autoApplyDecisionsEnabled** was set to `false`, you haven't stopped the review, or the instance period hasn't ended.

In this tutorial, you won't stop the instance manually, but you let it end automatically and then apply the decisions.

> [!TIP]
>
> 1. Until the **status** of the access review instance is marked as `Completed`, you can still change the decisions. Rerun step 4 to apply different decisions for the principals.
> 2. You can also manually stop the access review instance so that you can expedite your progress to Step 5.

## Step 5: Apply access review decisions

As an admin, after the **status** of the access review instance is set to `Completed`, you can apply the decisions. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-applydecisions"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd/instances/30f0cb53-da42-402e-8be5-9005f9c374f7/applyDecisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-priviegedroles-applydecisions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-priviegedroles-applydecisions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-priviegedroles-applydecisions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-priviegedroles-applydecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviegedroles-applydecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-priviegedroles-applydecisions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-priviegedroles-applydecisions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-priviegedroles-applydecisions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

Adele has lost access to the User Administrator role while the IT Helpdesk group has maintained its access. You can verify this state of role assignment by running the following query ` GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=roleDefinitionId eq 'fe930be7-5e62-47db-91af-98c3a49a38b1'`.

The **status** of the access review instance is now `Applied`. Also, because the access review is recurring, a new instance is immediately created. Its start date is three months from the **endDateTime** of the current review instance.

## Step 6: Retrieve access review history definitions

Contoso's auditors also want to review the access review history for the last quarter. In this example, you generate an access review history report for all **accessReviewScheduleDefinition** objects scoped to directory role assignments (roleAssignmentScheduleInstances). In this query, access reviews with all decisions are included in the history report.

First, you define the scope of the history report. Then, you generate a download URI that the auditors use to download the report. The download URI is active for only 24 hours. So, after expiry, you can regenerate another download URI from the previously defined history report.

### Define the scope of the access review history data

#### Request

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions

{
    "displayName": "Last quarter's access reviews for administrative roles - User Administrator",
    "decisions": [],
    "reviewHistoryPeriodStartDateTime": "2024-03-24T00:00:00Z",
    "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
    "scopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "queryType": "MicrosoftGraph",
            "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'roleAssignmentScheduleInstances')"
        }
    ]
}
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/historyDefinitions/$entity",
    "id": "841fc5d5-b89e-42cd-9f76-3343689aaabf",
    "displayName": "Last quarter's access reviews for administrative roles - User Administrator",
    "reviewHistoryPeriodStartDateTime": "2024-03-24T00:00:00Z",
    "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
    "decisions": [
        "approve",
        "deny",
        "dontKnow",
        "notReviewed",
        "notNotified"
    ],
    "status": "requested",
    "createdDateTime": "2024-03-25T17:15:45.1940174Z",
    "createdBy": {
        "id": "2560f739-2e0e-4550-9fa0-1a1e67ae0ab8",
        "displayName": "MOD Administrator",
        "type": null,
        "userPrincipalName": "admin@contoso.com"
    },
    "scopes": [
        {
            "@odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'roleAssignmentScheduleInstances')",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ]
}
```

### Retrieve the instances of the access review history

#### Request

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions/841fc5d5-b89e-42cd-9f76-3343689aaabf/instances
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/historyDefinitions('841fc5d5-b89e-42cd-9f76-3343689aaabf')/instances",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/accessReviews/historyDefinitions('<guid>')/instances?$select=downloadUri,expirationDateTime",
    "value": [
        {
            "id": "841fc5d5-b89e-42cd-9f76-3343689aaabf",
            "reviewHistoryPeriodStartDateTime": "2024-03-24T00:00:00Z",
            "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
            "status": "done",
            "runDateTime": "2024-03-25T17:15:45.1940174Z",
            "fulfilledDateTime": "2024-03-25T17:16:06.5812358Z",
            "downloadUri": null
        }
    ]
}
```

### Generate a link to download the history report from the instance of the access review history

#### Request

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions/841fc5d5-b89e-42cd-9f76-3343689aaabf/instances/841fc5d5-b89e-42cd-9f76-3343689aaabf/microsoft.graph.generateDownloadUri
```

#### Response

The **downloadUri** property contains a link to download the history report in an Excel file format. This link is active for only 24 hours.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.accessReviewHistoryInstance",
    "id": "841fc5d5-b89e-42cd-9f76-3343689aaabf",
    "reviewHistoryPeriodStartDateTime": "2024-03-24T00:00:00Z",
    "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
    "status": "done",
    "runDateTime": "2024-03-25T17:15:45.1940174Z",
    "fulfilledDateTime": "2024-03-25T17:16:06.5812358Z",
    "downloadUri": "https://ermconsolreportusc.blob.core.windows.net/erm-reports/Last quarter's access reviews for administrative roles - User Administrator-841fc5d5-b89e-42cd-9f76-3343689aaabf.csv?skoid=4ad0868b-7b78-4869-abb7-8f29151d8428&sktid=33e01921-4d64-4f8c-a055-5bdaffd5e33d&skt=2024-03-25T17:17:40Z&ske=2024-03-25T17:19:40Z&sks=b&skv=2021-08-06&sv=2021-08-06&st=2024-03-25T17:17:40Z&se=2024-03-26T17:17:40Z&sr=b&sp=r&sig=g%2BlQj2PxFG1lAYDuUt5VWO8tvLPQebA7GLnqz%2FQb%2BbQ%3D"
}
```

## Step 7: Clean up resources

In this step, you delete the access review definition. Since the access review schedule definition is the blueprint for the access review, deleting the definition removes the related settings, instances, and decisions. The request returns a `204 No Content` response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-deleteaccessreview"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/02800b79-1a6f-40b7-8381-c0bebc3763bd
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-priviegedroles-deleteaccessreview-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Conclusion

You learned how to review access to administrative roles and generate an auditable access review history report for compliance reporting. Your organization can use the access reviews APIs to continually govern privileged access to its resources, including both Microsoft Entra roles and Azure resource roles. In addition to users and groups, you can also review access by applications and service principals to administrative roles.

## Related content

+ [Access reviews API Reference](/graph/api/resources/accessreviewsv2-root)
+ [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept)