---
title: "Review access to privileged roles using the access reviews API in Microsoft Graph"
description: "Learn how to use the access reviews API to periodically review users and groups with access to privileged roles, including both active and eligible roles."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium
ms.prod: "governance"
ms.date: 11/01/2022
---

# Review access to privileged roles using the access reviews API in Microsoft Graph

The access reviews API in Microsoft Graph enables organizations to audit and attest to the access that identities (also called *principals*) are assigned to resources in the organization. One of the most sensitive resources in an organization is privileged roles. With a privileged role, a principal can perform administrative operations. Depending on the privileged role, some operations might have a greater effect on the security posture of the organization. Using the access reviews API, organizations can periodically attest to principals that have access to privileged roles as per the organization policy.

Contoso Limited is a growing service provider that has delegated various Azure AD administrator privileges to users, groups, and service principals in the organization. The company needs to ensure only the right assignees have access to privileged roles. The system auditors should also audit the access review history to report on the effectiveness of Contoso's internal controls.

In this tutorial, you'll use the access reviews API to periodically review users and groups with access to privileged roles in Contoso. This access includes both active and eligible roles.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. To call Microsoft Graph APIs in this tutorial, you need to use an account with the Privileged Role Administrator role.
+ Principals with active or eligible assignments to a privileged role. These assignments will be the scope of your access review. To assign privileged roles, see [Tutorial: Use the Privileged Identity Management (PIM) API to assign Azure AD roles](/graph/tutorial-assign-azureadroles).
    + In this tutorial, the User Administrator role is the resource in review. A security group and an individual user have been assigned the role.
+ Grant yourself the following delegated permission: `AccessReview.ReadWrite.All`.

>[!NOTE]
>The response objects shown in this tutorial might be shortened for readability.

## Step 1: Create an access review of privileged role assignments

In this tutorial, we create a recurring access review of both *active* and *eligible* assignments to the User Administrator role. An **accessReviewScheduleDefinition** can be used to define the access review of multiple principal types (users and groups, or service principals) to only one privileged role. To review access to multiple privileged roles, create separate **accessReviewScheduleDefinition** objects.

The following access review schedule definition has the following settings:

+ The scope of the review is principals (**principalScopes** property) with access to the resource specified in the **resourceScopes** property. In this case, the principals are both groups and users while the resource is the User Administrator role.
+ Both active and eligible assignments to the User Administrator role resource are in review.
+ An individual user is selected as a reviewer. In this example, you'll be the reviewer.
+ The approver must provide justification before they approve access to the privileged role.
+ The default decision is `None` when the reviewers don't respond to the access review request before the instance expires.
+ **autoApplyDecisionsEnabled** isn't set and defaults to `false`. In this case, after the review completes, the decisions aren't automatically applied so you must manually apply them.
+ The review recurs every three months over a period of three days and doesn't end.

### Request

In the following request, replace the `f674a1c9-4a40-439c-bfa3-4b61a9f29d85` with the value of your user ID. The roleDefinitionId `fe930be7-5e62-47db-91af-98c3a49a38b1` is the global template identifier for the User Administrator role in Azure AD.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviledroles-create"
}-->
```msgraph-interactive
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
            "query": "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85",
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
                "startDate": "2022-03-02"
            }
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviledroles-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviledroles-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-priviledroles-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviledroles-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-priviledroles-create-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions/$entity",
    "id": "57457d7c-af59-470c-ae71-aa72c657fe0f",
    "displayName": "Review access of users and groups to privileged roles",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "Review access of users and groups to privileged roles",
    "descriptionForReviewers": null,
    "instanceEnumerationScope": null,
    "createdBy": {
        "id": "f674a1c9-4a40-439c-bfa3-4b61a9f29d85",
        "displayName": "Alex Wilber",
        "type": null,
        "userPrincipalName": "AlexW@Contoso.com"
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
            "query": "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "fallbackReviewers": [],
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
                "startDate": "2022-03-02",
                "endDate": null
            }
        },
        "applyActions": []
    },
    "additionalNotificationRecipients": []
}
```

## Step 2: Retrieve instances of the access review

Each access review instance represents *each recurrence with each unique resource* that is under review. In Step 1, only the User Administrator role resource was defined in the scope. Because you defined a recurring access review, the ID of the instance is different from the ID of the schedule definition in Step 1.

### Request

In the following request, replace `57457d7c-af59-470c-ae71-aa72c657fe0f` with the value of the access review that you created in Step 1.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-getinstances"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviegedroles-getinstances-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviegedroles-getinstances-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-priviegedroles-getinstances-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviegedroles-getinstances-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-priviegedroles-getinstances-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-priviegedroles-getinstances-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

In this response, the instance object shows the end date as three days after the start date; this period was defined in Step 1 in the **instanceDurationInDays** property of the **accessReviewScheduleDefinition** object. *Only one instance is returned representing the first recurrence of only one resource under review.*

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstance"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('57457d7c-af59-470c-ae71-aa72c657fe0f')/instances",
    "@odata.count": 1,
    "value": [
        {
            "id": "ad0dd148-5d16-4cfd-86e9-ab502f819aaf",
            "startDateTime": "2022-03-02T15:31:14.607Z",
            "endDateTime": "2022-03-05T15:31:14.607Z",
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
                    "query": "/v1.0/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85",
                    "queryType": "MicrosoftGraph",
                    "queryRoot": null
                }
            ],
            "fallbackReviewers": []
        }
    ]
}
```

The status of this access review instance is `InProgress`. An `InProgress` status means that the review instance is open for reviewers to submit decisions, and the period for this access review instance hasn't expired. You've also received an email notification from Microsoft Azure requesting you to perform the access review.

## Step 3: Retrieve access review decisions before recording any decisions

Before you can post decisions, let us first inspect the items waiting for your decision.

### Request

In the following request, replace the following values:

+ `57457d7c-af59-470c-ae71-aa72c657fe0f` with the value of the access review that you created in Step 1.
+ `ad0dd148-5d16-4cfd-86e9-ab502f819aaf` with the value of the access review instance you'd like to retrieve decisions for.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-getnodecisions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/decisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviegedroles-getnodecisions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviegedroles-getnodecisions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-priviegedroles-getnodecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviegedroles-getnodecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-priviegedroles-getnodecisions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-priviegedroles-getnodecisions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response shows two decision items each corresponding to a decision per a principal's access to the resource.

+ The principal property shows that two principals have access to the User Administrator role—a group named **IT Helpdesk (User)** and a user named **Aline Dupuy**.
+ The `NotReviewed` value of the **decision** property indicates that the reviewers haven't reviewed and posted their decisions.
+ No recommendations are available because recommendations weren't enabled in the **accessReviewScheduleDefinition** in Step 1.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "collection(microsoft.graph.accessReviewInstanceDecisionItem)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('57457d7c-af59-470c-ae71-aa72c657fe0f')/instances('ad0dd148-5d16-4cfd-86e9-ab502f819aaf')/decisions",
    "@odata.count": 2,
    "value": [
        {
            "id": "4d79fbf6-36e6-430b-ba0a-2a727a480303",
            "accessReviewId": "ad0dd148-5d16-4cfd-86e9-ab502f819aaf",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/users/339143ab-541e-484f-b017-e1707e962d34",
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
                "id": "339143ab-541e-484f-b017-e1707e962d34",
                "displayName": "Aline Dupuy",
                "type": "user",
                "userPrincipalName": "AlineD@Contoso.com",
                "lastUserSignInDateTime": ""
            }
        },
        {
            "id": "62fd1c5b-04b8-4703-9fd7-dce6232c3775",
            "accessReviewId": "ad0dd148-5d16-4cfd-86e9-ab502f819aaf",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "NoInfoAvailable",
            "principalLink": "https://graph.microsoft.com/v1.0/groups/b5260fca-6d64-4d5a-92df-0c482d40bc4d",
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
                "id": "b5260fca-6d64-4d5a-92df-0c482d40bc4d",
                "displayName": "IT Helpdesk (User)",
                "type": "group"
            }
        }
    ]
}
```

As the reviewer, you can now submit your decisions for the access review instance.

## Step 4: Record decisions

You'll now record decisions for the access review.

The company policy requires that access to privileged roles be granted to only groups and not individual users. In compliance with the company policy, you'll deny Aline Dupuy access while approving access for the group.

In the following requests, replace the following values:

+ `57457d7c-af59-470c-ae71-aa72c657fe0f` with the value of the access review that you created in Step 1
+ `ad0dd148-5d16-4cfd-86e9-ab502f819aaf` with the value of the access review instance you'd like to retrieve decisions for
+ `4d79fbf6-36e6-430b-ba0a-2a727a480303` with the value of the access review instance scoped to Aline's access
+ `62fd1c5b-04b8-4703-9fd7-dce6232c3775` with the value of the access review instance scoped to the IT Helpdesk group's access

### Approve the security group's role assignment

#### Request

In the following request, you approve access for the IT Helpdesk group.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-decisionsforgroup"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/decisions/62fd1c5b-04b8-4703-9fd7-dce6232c3775
Content-type: application/json

{
    "decision": "Approve",
    "justification": "The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviegedroles-decisionsforgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviegedroles-decisionsforgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviegedroles-decisionsforgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-priviegedroles-decisionsforgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```
HTTP/1.1 204 No Content
```

### Deny the individual user their role assignment

#### Request

In the following request, you deny access for Aline Dupuy.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-decisionsforuser"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/decisions/4d79fbf6-36e6-430b-ba0a-2a727a480303
Content-type: application/json

{
    "decision": "Deny",
    "justification": "Aline Dupuy should join an allowed group to maintain access to the User Administrator role. For more details, refer to the company policy '#132487: Privileged roles'"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviegedroles-decisionsforuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviegedroles-decisionsforuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviegedroles-decisionsforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-priviegedroles-decisionsforuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```
HTTP/1.1 204 No Content
```

When you retrieve the access review decisions (repeat Step 3), they have the following settings:
+ The access review decision for the IT Helpdesk group is `Approve` while for Aline is `Deny`.
+ The reviewedBy object contains your details as the reviewer.
+ The applyResult is `New` meaning the decisions haven't been applied.

While you've recorded all the pending decisions for this instance, the decisions haven't been applied to the resource and principal objects. For example, Aline still has access to the privileged role. You can verify this assignment by running the following query `https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=roleDefinitionId eq 'fe930be7-5e62-47db-91af-98c3a49a38b1'`. This behavior is because the **autoApplyDecisionsEnabled** was set to `false`, you haven't stopped the review, and the instance period hasn't ended.

In this tutorial, you won't stop the instance manually, but you'll let it end automatically and then apply the decisions.

> [!TIP]
>
> 1. Until the **status** of the access review instance is marked as `Completed`, you can still change the decisions. Rerun step 4 to apply different decisions for the principals.
> 2. You can also manually stop the access review instance so that you can expedite your progress to Step 5.

## Step 5: Apply access review decisions

As an admin, after the **status** of the access review instance is set to `Completed`, you can apply the decisions.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-applydecisions"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/applyDecisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviegedroles-applydecisions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviegedroles-applydecisions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-priviegedroles-applydecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviegedroles-applydecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-priviegedroles-applydecisions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-priviegedroles-applydecisions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```
HTTP/1.1 204 No Content
```

Aline has now lost access to the User Administrator role while the IT Helpdesk group has maintained its access. You can verify this state of role assignment by running the following query ` GET https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?$filter=roleDefinitionId eq 'fe930be7-5e62-47db-91af-98c3a49a38b1'`.

Access reviews will apply the decisions automatically when the instance expires, or you can apply the decisions manually by running the following query: `POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/ad0dd148-5d16-4cfd-86e9-ab502f819aaf/applydecisions`.

After the decisions have been applied, the **status** of the access review instance will be `Applied`. Also, because we created a recurring access review in Step 1, a new instance will be started. Its start date will be three months from when the current review period is marked as having ended.

## Step 6: Retrieve access review history definitions

Contoso's auditors also want to review the access review history for the last quarter. In this example, you'll generate an access review history report for all **accessReviewScheduleDefinition** objects scoped to directory role assignments (roleAssignmentScheduleInstances). In this query, the **decisions** property is empty and therefore defaults to include all decisions in the history report.

First, you'll define the scope of the history report. Then, you generate a download URI that the auditors will use to download the report. The download URI is active for only 24 hours. So, after expiry, you can regenerate another download URI from the previously defined history report.

### Define the scope of the access review history data

In the following request, an empty **decisions** object means all decisions related to the scope of the access review will be included in the history report.

#### Request

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions

{
    "displayName": "Last quarter's access reviews for privileged roles - User Administrator",
    "decisions": [],
    "reviewHistoryPeriodStartDateTime": "2022-03-01T00:00:00Z",
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
    "id": "17ecffa9-e60d-4b6d-9313-78b50860bbcd",
    "displayName": "Last quarter's access reviews for privileged roles - User Administrator",
    "reviewHistoryPeriodStartDateTime": "2022-03-01T00:00:00Z",
    "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
    "decisions": [
        "approve",
        "deny",
        "dontKnow",
        "notReviewed",
        "notNotified"
    ],
    "status": "requested",
    "createdDateTime": "2022-09-29T12:22:57.9953455Z",
    "createdBy": {
        "id": "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6",
        "displayName": "MOD Administrator",
        "type": null,
        "userPrincipalName": "admin@M365x43961174.onmicrosoft.com"
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

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions/983db508-b77b-427d-ab90-a4041efa658d/instances
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/historyDefinitions('17ecffa9-e60d-4b6d-9313-78b50860bbcd')/instances",
    "value": [
        {
            "id": "17ecffa9-e60d-4b6d-9313-78b50860bbcd",
            "reviewHistoryPeriodStartDateTime": "2022-03-01T00:00:00Z",
            "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
            "status": "inprogress",
            "runDateTime": "2022-09-29T12:22:57.9953455Z",
            "fulfilledDateTime": null,
            "downloadUri": null
        }
    ]
}
```

### Generate a link to download the history report from the instance of the access review history

#### Request

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions/57457d7c-af59-470c-ae71-aa72c657fe0f/instances/983db508-b77b-427d-ab90-a4041efa658d/generateDownloadUri()
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#accessReviewHistoryInstance",
    "@odata.type": "#microsoft.graph.accessReviewHistoryInstance",
    "id": "17ecffa9-e60d-4b6d-9313-78b50860bbcd",
    "reviewHistoryPeriodStartDateTime": "2022-03-01T00:00:00Z",
    "reviewHistoryPeriodEndDateTime": "9999-12-31T00:00:00Z",
    "status": "done",
    "runDateTime": "2022-09-29T12:22:57.9953455Z",
    "fulfilledDateTime": "2022-09-29T12:24:08.1146032Z",
    "downloadUri": "https://ermconsolreportweu.blob.core.windows.net/erm-reports/Last quarter's access reviews for privileged roles - User Administrator-17ecffa9-e60d-4b6d-9313-78b50860bbcd.csv?skoid=4ad0868b-7b78-4869-abb7-8f29151d8428&sktid=33e01921-4d64-4f8c-a055-5bdaffd5e33d&skt=2022-09-29T12:24:56Z&ske=2022-09-29T12:26:56Z&sks=b&skv=2020-04-08&sv=2020-04-08&st=2022-09-29T12:24:56Z&se=2022-09-30T12:24:56Z&sr=b&sp=r&sig=ivZ9B%2BQragSwvOd8J2g8ny9n4sqdzww9uVkl96uo1k4%3D"
}
```

The downloadUri property contains a link to download the history report in an Excel file format. This link is active for only 24 hours.

## Step 7: Clean up resources

Delete the **accessReviewScheduleDefinition** object that you created for this tutorial. Because the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, decisions.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-priviegedroles-deleteaccessreview"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/57457d7c-af59-470c-ae71-aa72c657fe0f
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-priviegedroles-deleteaccessreview-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-priviegedroles-deleteaccessreview-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-priviegedroles-deleteaccessreview-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-priviegedroles-deleteaccessreview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-priviegedroles-deleteaccessreview-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-priviegedroles-deleteaccessreview-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

## Conclusion

You've learned how to review access to privileged roles in Azure AD and generate an auditable access review history report for compliance reporting. Your organization can use the access reviews API to continually govern privileged access to its resources including both Azure AD roles and Azure resource roles. In addition to users and groups, you can also review access by applications and service principals to privileged roles.

## See also

+ [Access reviews API Reference](/graph/api/resources/accessreviewsv2-root)
+ [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept)
+ [Learn about privileged access management](/microsoft-365/compliance/privileged-access-management)
