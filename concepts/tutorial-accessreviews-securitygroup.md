---
title: "Review access to your security groups using the access reviews API in Microsoft Graph"
description: "Learn how to use the access reviews API to review access to a security group in your Azure AD tenant and test API calls before you automate them into scripts or apps."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jgangadhar
ms.localizationpriority: medium
ms.prod: "governance"
ms.date: 11/01/2022
---

# Review access to your security groups using the access reviews API in Microsoft Graph

The access reviews API in Microsoft Graph enables organizations to audit and attest to the access that identities (also called *principals*) are assigned to resources in the organization. One of the most efficient and effective methods to manage access privileges for principals to other resources is through Azure AD security groups. For example, hundreds of users can be assigned to a security group and the security group assigned access to a folder. Using the access reviews API, organizations can periodically attest to principals that have access to such groups and by extension, other resources in the organization.

Suppose you use Azure AD security groups to assign identities (also called *principals*) access to resources in your organization. Periodically, you need to attest that all members of the security group need their membership and by extension, their access to the resources assigned to the security group.

This tutorial guides you to use the access reviews API to review access to a security group in your Azure AD tenant. You can use Graph Explorer or Postman to try out and test your access reviews API calls before you automate them into a script or an app. This test environment saves you time by helping you properly define and validate your queries without repeatedly recompiling your application.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. To call Microsoft Graph APIs in this tutorial, you need to use an account with the Global Administrator or Identity Governance Administrator role.
  + [Optional] Open a new **incognito**, **anonymous**, or **InPrivate browser** window. You'll sign in later in this tutorial.
+ Grant yourself the following delegated permissions: `AccessReview.ReadWrite.All`, `Group.ReadWrite.All`.
   
>[!NOTE]
>The response objects shown in this tutorial might be shortened for readability.
>
> Review of Privileged Access Groups will only assign active owners as the reviewers. Eligible owners are not included. At least one fallback reviewer is required for a Privileged Access Groups review. If there are no active owners when the review begins, the fallback reviewers will be assigned to the review.
   
## Step 1: Create test users in your tenant

Create three new test users by running the request below three times, changing the values of the **displayName**, **mailNickname**, and **userPrincipalName** properties each time. Record the IDs of the three new test users.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-createUser"
}-->
```http
POST https://graph.microsoft.com/v1.0/users
Content-Type: application/json

{
    "accountEnabled": true,
    "displayName": "Adele Vance",
    "mailNickname": "AdeleV",
    "userPrincipalName": "AdeleV@Contoso.com",
    "passwordProfile": {
        "forceChangePasswordNextSignIn": true,
        "password": "xWwvJ]6NMw+bWH-d"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-createuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-createuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-createuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-createuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-createuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-createuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
    "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
    "displayName": "Adele Vance",
    "userPrincipalName": "AdeleV@Contoso.com"
}
```

## Step 2: Create a security group, assign owners, and add members

Create a security group named **Building security** that is the target of the access reviews in this tutorial. Assign to this group one group owner and two members.

### Request

From the previous step, you created three test users. One of the users will be the group owner while the other two will be group members.

In this call, replace:
+ `d3bcdff4-4f80-4418-a65e-7bf3778c5dca` with the ID of your group owner.
+ `3b8ceebc-49e6-4e0c-9e14-c906374a7ef6` and `bf59c5ba-5304-4c9b-9192-e5a4cb8444e7` with the IDs of the two group members.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-creategroup"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-Type: application/json

{
    "description": "Building security",
    "displayName": "Building security",
    "groupTypes": [],
    "mailEnabled": false,
    "mailNickname": "buildingsecurity",
    "securityEnabled": true,
    "owners@odata.bind": [
        "https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
        "https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-creategroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-creategroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-creategroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-creategroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-creategroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-creategroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
    "id": "eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
    "description": "Building security",
    "displayName": "Building security",
    "mailNickname": "buildingsecurity",
    "securityEnabled": true
}
```

From the response, record the ID of the new group to use it later in this tutorial.

## Step 3: Create an access review for the security group

### Request

In this call, replace the following values:
+ `eb75ccd2-59ef-48b7-8f76-cc3f33f899f4` with the ID of the **Building security** group. The scope specifies that the review is applied to all members of the **Building security** group. For more options for configuring the scope, see the [See also](#see-also) section.
+ Value of **startDate** with today's date and value of **endDate** with a date five days from the start date.

The access review has the following settings:

+ It's a self-review as inferred when you don't specify a value for the **reviewers** property. Therefore, each group member will self-attest to their need to maintain access to the group.
+ The scope of the review is members (direct and indirect) of the **Building security** group.
+ The reviewer must provide justification for why they need to maintain access to the group.
+ The default decision is `Deny` when the reviewers don't respond to the access review request before the instance expires. The `Deny` decision removes the group members from the group.
+ It's a one-time access review that ends after five days. Therefore, once access is granted, the user doesn't need to self-attest again within the access review period.
+ The principals who are defined in the scope of the review will receive email notifications and reminders prompting them to self-attest to their need to maintain access.


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
                "startDate": "2022-02-11",
                "endDate": "2022-02-16"
            }
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-create-accessreviewscheduledefinition-powershell-snippets.md)]
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
    "id": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
    "displayName": "One-time self-review for members of Building security",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "One-time self-review for members of Building security",
    "descriptionForReviewers": "One-time self-review for members of Building security",
    "createdBy": {
        "id": "bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
        "displayName": "MOD Administrator",
        "type": null,
        "userPrincipalName": "admin@Contoso.com"
    },
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
        "recurrence": {
            "pattern": null,
            "range": {
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2022-02-11",
                "endDate": "2022-02-16"
            }
        },
        "applyActions": []
    },
    "additionalNotificationRecipients": []
}
```

The status of the above access review is marked as **NotStarted**. You may retrieve the access review (GET `https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b`) to monitor the status and when it's marked as **InProgress**, then instances have been created for the access review and decisions can be posted. You can also retrieve the access review to see the full settings of the access review.

## Step 4: List instances of the access review

Once the **status** of the access review is marked as `InProgress`, run the following query to list all instances of the access review definition. Because you created a one-time access review in Step 3, the request returns only one instance with an ID like the schedule definition's ID.

### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review definition returned in Step 3.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_accessReviewInstance"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-list-accessreviewinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-list-accessreviewinstance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-list-accessreviewinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-list-accessreviewinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-list-accessreviewinstance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-list-accessreviewinstance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

In this response, the **status** of the instance is `InProgress` because **startDateTime** is past and **endDateTime** is in the future. If **startDateTime** is in the future, the status will be `NotStarted`. On the other hand, if **endDateTime** is in the past, the status will be `Completed`.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstance",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('2d56c364-0695-4ec6-8b92-4c1db7c80f1b')/instances",
    "value": [
        {
            "id": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
            "startDateTime": "2022-02-11T17:35:25.24Z",
            "endDateTime": "2022-02-16T08:00:00Z",
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

## Step 5: Who was contacted for the review?

You can confirm that all members of the **Building security** group were contacted to post their review decisions for this instance of the access review.

### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review schedule definition.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_contactedReviewers"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/contactedReviewers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-list-contactedreviewers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-list-contactedreviewers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-list-contactedreviewers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-list-contactedreviewers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-list-contactedreviewers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-list-contactedreviewers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response shows that the two members of the **Building security** group were notified of their pending review.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewReviewer",
  "isCollection": "true"
} -->
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
            "createdDateTime": "2022-02-11T17:35:34.4092545Z"
        },
        {
            "id": "bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
            "displayName": "Alex Wilber",
            "userPrincipalName": "AlexW@Contoso.com",
            "createdDateTime": "2022-02-11T17:35:34.4092545Z"
        }
    ]
}
```

## Step 6: Get decisions

You're interested in the decisions taken for the instance of the access review.

### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review schedule definition and the instance.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_accessReviewInstanceDecisionItem"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-list-accessreviewinstancedecisionitem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response shows the decisions taken on the instance of the review. Because **Building security** has two members, two decision items are expected.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "isCollection": "true"
} -->
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

From the call, the **decision** property has the value of `NotReviewed` because the group members haven't completed their self-attestation. Follow Step 7 to learn how each member can self-attest to their need for access review.

## Step 7: Self-review a pending access decision

In Step 3, you configured the access review as self-reviewing. This configuration requires that both members of the **Building security** group self-attest to their need to maintain their access to the group.

>[!NOTE]
>Complete this step as one of the two members of the **Building security** group.

In this step, you'll list your pending access reviews then complete the self-attestation process. You can complete this step in one of two ways, using the API or using the [My Access portal](https://myaccess.microsoft.com/). The other reviewer won't complete this process and instead, you'll let the default decisions be applied to their access review.

Start a new **incognito**, **anonymous**, or **InPrivate browsing** browser session, and sign in as one of the two members of the **Building security** group. By doing so, you won't interrupt your current administrator session. We'll sign in as Adele Vance. Alternatively, you can interrupt your current administrator session by logging out of Graph Explorer and logging back in as one of the two group members.

### Method 1: Use the access reviews API to self-review pending access

#### List your access reviews decision items

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review schedule definition.

##### Request

```http
GET https://graph.microsoft.com/v1.0/identitygovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions/filterByCurrentUser(on='reviewer')
```

##### Response
From the response below, you (Adele Vance) have one pending access review (**decision** is `NotReviewed`) to self-attest to. The **principal** and **resource** properties indicate the principal that the decision applies to and the resource to which access is under review. In this case, Adele Vance and the **Building security** group respectively.

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

To complete the access review, Adele Vance will confirm the need to maintain access to the **Building security** group.

##### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review schedule definition and `c7de8fba-4d6a-4fab-a659-62ff0c02643d` with the ID of the pending decision item returned in the previous step.

```http
PATCH https://graph.microsoft.com/v1.0/identitygovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions/c7de8fba-4d6a-4fab-a659-62ff0c02643d

{
    "decision": "Approve",
    "justification": "As the assistant security manager, I still need access to the building security group."
}
```

##### Response

```http
HTTP/1.1 204 No Content
```


#### Verify the decisions

To verify the decisions you've recorded for your access review, [list your access review decision items](#list-your-access-reviews-decision-items). While the access review period hasn't expired nor the decisions applies, the **applyResult** will be marked as `New` and you're allowed to change the decision.

You can now sign out and exit the incognito browser session.

### Method 2: Use the My Access portal

Reviewers can also visit the [My Access portal](https://myaccess.microsoft.com/) portal to check their pending access review instances.

+ List the pending access reviews. The user can follow one of two ways to get there:
  + Option 1: Select **Review access** button from the email notification that they received in their mail inbox. The email notification is like the following screenshot. Selecting this button directs them to the pending access review.

  :::image type="content" source="images/tutorials-identity/tutorial-access-reviews-emailnotification.png" alt-text="Email notification to review your access." border="true":::

  + Option 2: Go to the [My Access portal](https://myaccess.microsoft.com/) portal. Select the **Access reviews** menu and select the **Groups and Apps** tab.

+ From the list of access reviews, select the access review for which you want to post the decision. Select **Yes** to post the decision that you still need access to **Building security**. Enter a reason, then select **Submit**.

  :::image type="content" source="images/tutorials-identity/tutorial-access-reviews-selfattest.png" alt-text="Self-attest to the need to maintain access to a resource.":::


You can now sign out and exit the incognito browser session.

## Step 8: Confirm the decisions and the status of the access review

Back in the main browser session where you're still logged in as a global administrator, repeat Step 4 to see that the **decision** property for Adele Vance is now `Approve`. When the access review ends or expires, the default decision of `Deny` will be recorded for Alex Wilber. The decisions will then be automatically applied because the **autoApplyDecisionsEnabled** was set to `true` and the period of the access review instance will have ended. Adele will then maintain access to the **Building security** group and Alex will automatically be removed from the group.

Congratulations! You've created an access review and self-attested to your need to maintain access. You only self-attested once, and will maintain access until it's removed through either a `Deny` decision of another access review instance, or through another internal process.

## Step 9: Clean up resources

Delete the resources that you created for this tutorial—the **Building security** group, the access review schedule definition, and the three test users.

### Delete the security group

#### Request

In this call, replace `eb75ccd2-59ef-48b7-8f76-cc3f33f899f4` with the **id** of **Building security**.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_group"
}-->
```http
DELETE https://graph.microsoft.com/beta/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-delete-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-delete-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-delete-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-delete-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-delete-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-delete-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

### Delete the access review definition

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review definition. Because the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_accessReviewScheduleDefinition"
}-->
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-delete-accessreviewscheduledefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

### Delete the three test users
In this call, replace `3b8ceebc-49e6-4e0c-9e14-c906374a7ef6` with the ID of one of your test users. Repeat this step twice with the IDs of the other two users to delete them.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_user"
}-->
```http
DELETE https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-accessreviews-securitygroup-delete-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-accessreviews-securitygroup-delete-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-accessreviews-securitygroup-delete-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-accessreviews-securitygroup-delete-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-accessreviews-securitygroup-delete-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-accessreviews-securitygroup-delete-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

## Conclusion

You've created an access review in which the principals have self-attested to their need to maintain their access to a resource, in this case, the **Building security** group.

This tutorial has demonstrated one of the scenarios by the Azure AD access reviews API. The access reviews API supports different scenarios through a combination of resources, principals, and reviewers to suit your access attestation needs. For more information, see the [access reviews API](/graph/api/resources/accessreviewsv2-overview).

## See also

+ [What are Azure AD access reviews?](/azure/active-directory/governance/access-reviews-overview)
+ [Review access for yourself to groups or applications in Azure AD access reviews](/azure/active-directory/governance/review-your-access)
