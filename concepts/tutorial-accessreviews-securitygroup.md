---
title: "Review access to security groups using access reviews APIs"
description: "Learn how to use the access reviews API to review access to a security group in your Microsoft Entra tenant."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.date: 03/25/2024
#Customer intent: As a developer, I want to use the access reviews APIs to review and attest to the access that principals have to resources in my organization, so that I can ensure proper security and compliance in my organization.
---

# Review access to security groups using access reviews APIs

The access reviews API in Microsoft Graph enables organizations to audit and attest to the access that identities (also called *principals*) are assigned to resources in the organization. You can use security groups to efficiently manage access to resources in your organization. For example, access to a SharePoint site that contains marketing playbooks. And by using the access reviews API, organizations can periodically attest to principals that have access to such groups and by extension, resources in the organization.

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Create a recurring access review of memberships to security groups.
> * Self-attest to the need to maintain access to a group.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Microsoft Entra tenant with a Microsoft Entra ID P2 or Microsoft Entra ID Governance license enabled. 
+ Two test guests and a test security group in your tenant. The guests should be members of the group and the group should have at least one owner.
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with an account that has at least the *Identity Governance Administrator* role.
    + [Optional] Open a new **incognito**, **anonymous**, or **InPrivate browser** window. You sign in later in this tutorial.
+ Grant yourself the following delegated permissions: `AccessReview.ReadWrite.All`.
   
>[!NOTE]
>
> Review of groups that are governed by PIM only assign active owners as the reviewers. Eligible owners are not included. At least one fallback reviewer is required for access review of groups governed by PIM. If there are no active owners when the review begins, the fallback reviewers are assigned the review.
   
## Step 1: Create an access review for the security group

### Request

In this call, replace the following values:
+ `eb75ccd2-59ef-48b7-8f76-cc3f33f899f4` with the ID of the security group.
+ Value of **startDate** with today's date and value of **endDate** with a date five days from the start date.

The access review has the following settings:

+ It's a self-attesting review as inferred when you don't specify a value for the **reviewers** property. Therefore, each group member self-attests to their need to maintain access to the group.
+ The scope of the review is both direct and transitive members of the group.
+ The reviewer must provide justification for why they need to maintain access to the group.
+ The default decision is `Deny` when the reviewers don't respond to the access review request before the instance expires. The `Deny` decision removes the group members from the group.
+ It's a one-time access review that ends after five days. Therefore, once access is granted, the user doesn't need to self-attest again within the access review period.
+ The principals who are defined in the scope of the review receive email notifications and reminders prompting them to self-attest to their need to maintain access.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-create_accessReviewScheduleDefinition"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions
Content-type: application/json

{
    "displayName": "One-time self-review for members of Building security",
    "descriptionForAdmins": "One-time self-review for members of Building security",
    "descriptionForReviewers": "One-time self-review for members of Building security",
    "scope": {
        "query": "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
        "queryType": "MicrosoftGraph"
    },
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": true,
        "defaultDecision": "Deny",
        "instanceDurationInDays": 5,
        "autoApplyDecisionsEnabled": true,
        "recommendationsEnabled": true,
        "recurrence": {
            "pattern": null,
            "range": {
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2024-03-21",
                "endDate": "2024-03-30"
            }
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The status of the access review is **NotStarted**. You can retrieve the access review (GET `https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b`) to monitor the status and when its status is **InProgress**, then instances have been created for the access review and decisions can be posted. You can also retrieve the access review to see its full settings.

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
    "id": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
    "displayName": "One-time self-review for members of Building security",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "One-time self-review for members of Building security",
    "descriptionForReviewers": "One-time self-review for members of Building security",
    "scope": {},
    "instanceEnumerationScope": {},
    "reviewers": [],
    "fallbackReviewers": [],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": true,
        "defaultDecision": "Deny",
        "instanceDurationInDays": 5,
        "autoApplyDecisionsEnabled": true,
        "recommendationsEnabled": true,
        "recommendationLookBackDuration": null,
        "decisionHistoriesForReviewersEnabled": false,
        "recurrence": {
            "pattern": null,
            "range": {
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2024-03-21",
                "endDate": "2024-03-30"
            }
        },
        "applyActions": [],
        "recommendationInsightSettings": []
    },
    "stageSettings": [],
    "additionalNotificationRecipients": []
}
```

## Step 2: List instances of the access review

Once the **status** of the access review is marked as `InProgress`, run the following query to list all instances of the access review definition. Because you created a one-time access review in the previous step, the request returns only one instance with an ID like the schedule definition's ID.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_accessReviewInstance"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstance-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

In this response, the **status** of the instance is `InProgress` because **startDateTime** is past and **endDateTime** is in the future. If **startDateTime** is in the future, the status is `NotStarted`. On the other hand, if **endDateTime** is in the past, the status is `Completed`.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstance",
  "isCollection": "true"
} -->

> **Note:** The response object shown here might be shortened for readability.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('2d56c364-0695-4ec6-8b92-4c1db7c80f1b')/instances",
    "value": [
        {
            "id": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
            "startDateTime": "2024-03-21T17:35:25.24Z",
            "endDateTime": "2024-03-30T08:00:00Z",
            "status": "InProgress",
            "scope": {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/v1.0/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers/microsoft.graph.user",
                "queryType": "MicrosoftGraph",
                "queryRoot": null
            },
            "reviewers": [],
            "fallbackReviewers": []
        }
    ]
}
```

## Step 3: Verify who was contacted for the review

You can confirm that all members of the security group were contacted to post their review decisions for this instance of the access review.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_contactedReviewers"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/contactedReviewers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-securitygroup-list-contactedreviewers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response shows that the two members of the security group were notified of their pending review.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewReviewer",
  "isCollection": "true"
} -->

> **Note:** The response object shown here might be shortened for readability.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('2d56c364-0695-4ec6-8b92-4c1db7c80f1b')/instances('2d56c364-0695-4ec6-8b92-4c1db7c80f1b')/contactedReviewers",
    "@odata.count": 2,
    "value": [
        {
            "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
            "displayName": "Adele Vance",
            "userPrincipalName": "AdeleV@Contoso.com",
            "createdDateTime": "2024-03-21T17:35:34.4092545Z"
        },
        {
            "id": "bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
            "displayName": "Alex Wilber",
            "userPrincipalName": "AlexW@Contoso.com",
            "createdDateTime": "2024-03-21T17:35:34.4092545Z"
        }
    ]
}
```

## Step 4: Get decisions

You're interested in the decisions taken for the instance of the access review.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_accessReviewInstanceDecisionItem"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response shows the decisions taken on the instance of the review. Because the security group has two members, two decision items are expected.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "isCollection": "true"
} -->

> **Note:** The response object shown here might be shortened for readability.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('2d56c364-0695-4ec6-8b92-4c1db7c80f1b')/instances('2d56c364-0695-4ec6-8b92-4c1db7c80f1b')/decisions",
    "@odata.count": 2,
    "value": [
        {
            "id": "4db68765-472d-4aa2-847a-433ea94bcfaf",
            "accessReviewId": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
            "resourceLink": "https://graph.microsoft.com/v1.0/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
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
                "id": "eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
                "displayName": "Building security",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
                "displayName": "Alex Wilber",
                "type": "user",
                "userPrincipalName": "AlexW@Contoso.com",
                "lastUserSignInDateTime": "2/11/2022 5:31:37 PM +00:00"
            }
        },
        {
            "id": "c7de8fba-4d6a-4fab-a659-62ff0c02643d",
            "accessReviewId": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
            "resourceLink": "https://graph.microsoft.com/v1.0/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
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
                "id": "eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
                "displayName": "Building security",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
                "displayName": "Adele Vance",
                "type": "user",
                "userPrincipalName": "AdeleV@Contoso.com",
                "lastUserSignInDateTime": "2/11/2022 4:58:13 PM +00:00"
            }
        }
    ]
}
```

From the call, the **decision** property has the value of `NotReviewed` because the group members haven't completed their self-attestation. The next step shows how each member can self-attest to their need for access review.

## Step 5: Self-attest to a pending access decision

You configured the access review as self-attesting. This configuration requires that both members of the group self-attest to their need to maintain their access to the group.

>[!NOTE]
>Complete this step as one of the two members of the security group.

In this step, you list your pending access reviews then complete the self-attestation process. You can complete this step in one of two ways, using the API or using the [My Access portal](https://myaccess.microsoft.com/). The other reviewer doesn't self-attest and instead, the default decisions are applied to their access review.

Start a new **incognito**, **anonymous**, or **InPrivate browsing** browser session, and sign in as one of the two members of the security group. By doing so, you don't interrupt your current administrator session. Alternatively, you can interrupt your current administrator session by logging out of Graph Explorer and logging back in as one of the two group members.

### Method 1: Use the access reviews API to self-review pending access

#### List your access reviews decision items

##### Request

```http
GET https://graph.microsoft.com/v1.0/identitygovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions/filterByCurrentUser(on='reviewer')
```

##### Response
From the response, you (Adele Vance) have one pending access review (**decision** is `NotReviewed`) to self-attest to. The **principal** and **resource** properties indicate the principal that the decision applies to and the resource to which access is under review. In this case, Adele Vance and the security group respectively.

> **Note:** The response object shown here might be shortened for readability.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(accessReviewInstanceDecisionItem)",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
            "id": "c7de8fba-4d6a-4fab-a659-62ff0c02643d",
            "accessReviewId": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
            "resourceLink": "https://graph.microsoft.com/v1.0/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
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
                "id": "eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
                "displayName": "Building security",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
                "displayName": "Adele Vance",
                "type": "user",
                "userPrincipalName": "AdeleV@Contoso.com",
                "lastUserSignInDateTime": "2/15/2022 9:35:23 AM +00:00"
            }
        }
    ]
}
```

#### Record a decision

To complete the access review, Adele Vance confirms the need to maintain access to the security group.

The request returns a `204 No Content` response code.

```http
PATCH https://graph.microsoft.com/v1.0/identitygovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions/c7de8fba-4d6a-4fab-a659-62ff0c02643d

{
    "decision": "Approve",
    "justification": "As the assistant security manager, I still need access to the building security group."
}
```

#### Verify the decisions

To verify the decisions that you recorded for your access review, [list your access review decision items](#list-your-access-reviews-decision-items). While the access review period hasn't expired nor the decisions applied, the **applyResult** is marked as `New` and you're allowed to change the decision.

You can now sign out and exit the incognito browser session.

### Method 2: Use the My Access portal

Alternatively, you can check your pending access review instances through the [My Access portal](https://myaccess.microsoft.com/) portal.

+ List the pending access reviews. The user can follow one of two ways to get there:
  + Option 1: Select **Review access** button from the email notification that they received in their mail inbox. The email notification is similar to the following screenshot. This button is a direct link to the pending access review.

  :::image type="content" source="images/tutorials-identity/tutorial-access-reviews-emailnotification.png" alt-text="Email notification to review your access." border="true":::

  + Option 2: Go to the [My Access portal](https://myaccess.microsoft.com/) portal. Select the **Access reviews** menu and select the **Groups and Apps** tab.

+ From the list of access reviews, select the access review for which you want to post the decision. Select **Yes** to post the decision that you still need access to **Building security**. Enter a reason, then select **Submit**.

  :::image type="content" source="images/tutorials-identity/tutorial-access-reviews-selfattest.png" alt-text="Self-attest to the need to maintain access to a resource.":::

You can now sign out and exit the incognito browser session.

## Step 6: Confirm the decisions and the status of the access review

Back in the main browser session where you're still logged in with administrator privileges, repeat Step 4 to see that the **decision** property for Adele Vance is now `Approve`. When the access review ends or expires, the default decision of `Deny` is recorded for Alex Wilber. The decisions are then automatically applied because the **autoApplyDecisionsEnabled** was set to `true` and the period of the access review instance ended. Adele maintains access to the security group while Alex is automatically removed from the group.

Congratulations! You created an access review and self-attested to your need to maintain access. You only self-attested once, and will maintain your access until it's removed through either a `Deny` decision of another access review instance, or through another internal process.

## Step 7: Clean up resources

In this call, you delete the access review definition. Because the access review schedule definition is the blueprint for the access review, deleting the definition removes the related settings, instances, and decisions.

The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_accessReviewScheduleDefinition"
}-->
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Conclusion

You created an access review in which the principals self-attested to their need to maintain their access to a resource, in this case, the **Building security** group.

This tutorial has demonstrated one of the scenarios by the Microsoft Entra access reviews API. The access reviews API supports different scenarios through a combination of resources, principals, and reviewers to suit your access attestation needs. For more information, see the [access reviews API](/graph/api/resources/accessreviewsv2-overview).

## Related content

+ [What are Microsoft Entra access reviews?](/entra/id-governance/access-reviews-overview)
+ [Tutorial: Review access for yourself to groups or applications in access reviews using the Microsoft Entra admin center](/entra/id-governance/review-your-access)
+ [How-To: Configure the scope of your access review using access reviews APIs](/graph/accessreviews-scope-concept)
