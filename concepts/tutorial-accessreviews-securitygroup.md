---
title: "Tutorial: Use the access reviews API to review access to your security groups"
description: "Azure AD security groups can be used to control access to resources. Use the access reviews API to attest that all members of the security group need their membership and by extension, their access to the resources assigned to the security group."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "governance"
---

# Tutorial: Use the access reviews API to review access to your security groups

Azure AD security groups can be used to control access to resources. With the access reviews API, you can attest that all members of the security group need their membership and by extension, their access to the resources assigned to the security group.

In this tutorial, you will review access to a security group in your tenant. You can use Graph Explorer or Postman to try out and test your access reviews API calls before you automate them into a script or an app. This saves you time by helping you properly define and validate your queries without repeatedly recompiling your application.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Log in to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) as a user in a global administrator role.
  + [Optional] Start a new **incognito** or **InPrivate browser** session or start a session in an anonymous browser. You will log in later in this tutorial.
+ The following delegated permissions: `AccessReview.ReadWrite.All`, `Group.ReadWrite.All`.

To consent to the required permissions in Graph Explorer:
1. Select the settings gear icon to the right of the user account details, and then select **Select permissions**.
   
   <!--![Select the Microsoft Graph permissions](../images/../concepts/images/tutorial-accessreviews-api/settings.png)-->
    :::image type="content" source="../images/../concepts/images/tutorial-accessreviews-api/settings.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

2. Scroll through the list of permissions to these permissions:
   + AccessReview (3), expand and then select **AccessReview.ReadWrite.All**.
   + Group (2), expand and then select **Group.ReadWrite.All**.
  
    Select **Consent**, and in the pop window, choose to **Consent on behalf of your organization** and then select **Accept** to accept the consent of the permissions.
   
   <!--![Consent to the Microsoft Graph permissions](../images/../concepts/images/tutorial-accessreviews-api/consentpermissions.png)-->
   :::image type="content" source="../images/../concepts/images/tutorial-accessreviews-api/consentpermissions.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

## Step 1: Create test users in your tenant

Create three new test users by running the request below three times, changing the **displayName**, **mailNickname**, and **userPrincipalName** properties each time. Record their IDs.

### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-createUser"
}-->
```http
POST https://graph.microsoft.com/v1.0/users
Content-Type: application/json

{
    "accountEnabled": true,
    "displayName": "Aline Dupuy",
    "mailNickname": "AlineD",
    "userPrincipalName": "AlineD@m365x557205.onmicrosoft.com",
    "passwordProfile": {
        "forceChangePasswordNextSignIn": true,
        "password": "xWwvJ]6NMw+bWH-d"
    }
}
```

### Response

>**Note:** The response object shown here might be shortened for readability.
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
    "displayName": "Aline Dupuy",
    "userPrincipalName": "AlineD@m365x557205.onmicrosoft.com"
}
```

## Step 2: Create a security group, assign owners, and add members

Create a security group named **Building security group** that is the target of the access reviews in this tutorial. Assign to this group one group owner and two members. These members will be the subject of review by the group owners.

### Request

From the previous step, you created three test users. One of the users will be the group owner while the other two will be group members.

In this call, replace:
+ `d3bcdff4-4f80-4418-a65e-7bf3778c5dca` with the ID of your group owner.
+ `3b8ceebc-49e6-4e0c-9e14-c906374a7ef6` and `bf59c5ba-5304-4c9b-9192-e5a4cb8444e7` with the IDs of the two group members. These are the other two members you created in Step 1.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-creategroup"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-Type: application/json

{
    "description": "Building security group",
    "displayName": "Building security group",
    "groupTypes": [],
    "mailEnabled": false,
    "mailNickname": "buildingsecurity",
    "securityEnabled": true,
    "owners@odata.bind": [
        "https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca",
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
        "https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7"
    ]
}
```

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
    "description": "Building security group",
    "displayName": "Building security group",
    "mailNickname": "buildingsecurity",
    "securityEnabled": true
}
```
From the response, record the  ID of the new group to use it later in this tutorial.

## Step 3: Create an access review for the security group

Create an access review for members of the security group, using the following settings:

+ It is a self-reviewing access review. In this case, each group member will self-attest to their need for continued access to the group.
+ This is a one-time access review. In this case, once access is granted, the user does not need to self-attest again within the access review period.
+ The review scope is limited to all members (direct and transitive) of **Building security group**.

### Request

In this call, replace the following:
+ `eb75ccd2-59ef-48b7-8f76-cc3f33f899f4` with the ID of **Building security group**.
+ The scope specifies that the review is applied to all group members of the the **Building security group**. For more options for configuring the scope, see the [See also](#see-also) section.
+ Value of **startDate** with today's date and value of **endDate** with a date five days from the start date.

The access review has the following settings:

+ It is self-review. This is inferred when you don't specify a value for the **reviewers** property.
+ It is scoped to the members of **Building security group**.
+ The reviewer must provide justification for why they need to maintain access to the group.
+ The default decision is `Deny` when the reviewers don't respond to the access review request before the instance expires. This removes the group members from the group.
+ It is a one-off review that ends after five days.
+ The principals who are defined in the scope of the review, members of **Building security group**, will receive email notifications and reminders prompting them to self-attest to their need for continued access.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-create_accessReviewScheduleDefinition"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions
Content-type: application/json

{
    "displayName": "One-time self-review for members of Building security group",
    "descriptionForAdmins": "One-time self-review for members of Building security group",
    "descriptionForReviewers": "One-time self-review for members of Building security group",
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
    "displayName": "One-time self-review for members of Building security group",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "One-time self-review for members of Building security group",
    "descriptionForReviewers": "One-time self-review for members of Building security group",
    "createdBy": {
        "id": "bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
        "displayName": "MOD Administrator",
        "type": null,
        "userPrincipalName": "admin@M365x557205.onmicrosoft.com"
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

The status of the above access review is marked as **NotStarted**. You may retrieve the access reviews (GET `https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions`) to monitor the status and when it is marked as **InProgress**, then instances have been created for the access review and decisions can be posted.

## Step 4: List instances of the access review

Once the **status** of the access review is marked as `InProgress`, run the following query to list all instances of the access review definition. Because you created a one-time access review in Step 3, the request returns only one instance whose ID is the same as the access review schedule definition's ID.

### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review definition returned in Step 3.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_accessReviewInstance"
}-->
```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances
```

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

## Step 5: Get decisions

You are interested in the decisions taken for the instance of the access review.

### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review schedule definition returned in Step 3, and `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of the instance returned in Step 4.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-list_accessReviewInstanceDecisionItem"
}-->
```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions
```

### Response

The following response shows the decisions taken on the instance of the review. Because **Building security group** had two members, two decision items are expected.

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
                "displayName": "Building security group",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
                "displayName": "MOD Administrator",
                "type": "user",
                "userPrincipalName": "admin@M365x557205.onmicrosoft.com",
                "lastUserSignInDateTime": "2/11/2022 5:31:37 PM +00:00"
            }
        },
        {
            "id": "817e1852-3f8f-46e0-87ba-ef7dad616ba6",
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
                "displayName": "Building security group",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
                "displayName": "Aline Dupuy",
                "type": "user",
                "userPrincipalName": "AlineD@m365x557205.onmicrosoft.com",
                "lastUserSignInDateTime": "2/11/2022 4:58:13 PM +00:00"
            }
        }
    ]
}
```

From the call, the **decision** property has the value of `NotReviewed`. This is because none of the two members has completed their self-attestation. Follow step 6 to learn how each member can self-attest to their need for access review.

## Step 6: Self-review your pending access

In Step 3, you configured the access review as a self-reviewing. This means that both members of **Building security group** must self-attest to their need to maintain access to the group. You will complete this step as one of the two members of Building security group.

In this step, you will:
1. List your access review instances.
2. Complete the access review self-attestation process.

Instead of the user calling the API to list your pending access review instances, you may retrieve the email notification that you received in your mail inbox. The email notification is similar to the following screenshot.

:::image type="content" source="../images/../concepts/images/tutorial-accessreviews-api/settings.png" alt-text="Consent to Microsoft Graph permissions." border="true":::

Start a new browser session in **incognito** or **InPrivate browsing** mode, or via an anonymous browser, and log in as one of the two members of **Building security group**. By doing so, you will not interrupt your current session as a user in the global administrator role. Alternatively, you can interrupt your current session by logging out of Graph Explorer and logging back in as one of the two group members.

### List your access review instances

In the incognito browser session and in Graph Explorer, run the following query to list your pending access review instances:

#### Request

In this call, replace `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of your access review schedule definition returned in Step 3, and `2d56c364-0695-4ec6-8b92-4c1db7c80f1b` with the ID of the instance returned in Step 4.

```http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions
```

Running the above request in a user context has a number of advantages:

+ No service principal is required. A user can call and read their pending access review actions.
+ Can be used by widgets or plugins on an Intranet page, or a bot or daemon that run as a background service. These can notify you of new access reviews or of updates to access reviews.

#### Response
From the response below, user Aline Dupuy has 1 pending access review to self-attest to.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(accessReviewInstanceDecisionItem)",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
            "id": "817e1852-3f8f-46e0-87ba-ef7dad616ba6",
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
                "displayName": "Building security group",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
                "displayName": "Aline Dupuy",
                "type": "user",
                "userPrincipalName": "AlineD@m365x557205.onmicrosoft.com",
                "lastUserSignInDateTime": "2/11/2022 4:58:13 PM +00:00"
            }
        }
    ]
}
```

### Complete the access review self-attestation

In the same incognito browser session, log in to the [My Access portal](https://myaccess.microsoft.com/) to complete the self-attestation. 
+ From the right navigation bar, select **Access reviews**
+ Select the **Groups and Apps** tab.
+ From the list of access reviews, select the access review for which you want to post the decision
+ Select **Yes** to post the decision that you still need access to **Building security group**. Enter a reason, then select **Submit**.

The user has now posted their decision for the access review.

   ![Self-attest to access review](../images/../concepts/images/tutorial-accessreviews-api/selfattest.png)
   <!--:::image type="content" source="../images/../concepts/images/tutorial-accessreviews-api/selfattest.png" alt-text="Self-attest to access review":::-->

You can now logout and exit the incognito browser session.

Via API:

#### Request

```http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/instances/2d56c364-0695-4ec6-8b92-4c1db7c80f1b/decisions/817e1852-3f8f-46e0-87ba-ef7dad616ba6/
```

#### Response

```http
HTTP/1.1 204 No Content
```

While still logged in as the user, list your access review instances. The response shows that you have posted the decision and the **decision** property is marked as **Approve**. In the response object, the principal and resource properties indicate the principal to whom the decision applies and the resource that was the scope of the access review. In this case, Aline Dupuy and the Building security group resepectively.

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(accessReviewInstanceDecisionItem)",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
            "id": "817e1852-3f8f-46e0-87ba-ef7dad616ba6",
            "accessReviewId": "2d56c364-0695-4ec6-8b92-4c1db7c80f1b",
            "reviewedDateTime": "2022-02-11T18:04:44.363Z",
            "decision": "Approve",
            "justification": "As the assistant manager, I still need access to the building security group.",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
            "resourceLink": "https://graph.microsoft.com/v1.0/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
            "reviewedBy": {
                "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
                "displayName": "Aline Dupuy",
                "type": null,
                "userPrincipalName": "AlineD@m365x557205.onmicrosoft.com"
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "type": null,
                "userPrincipalName": ""
            },
            "resource": {
                "id": "eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
                "displayName": "Building security group",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
                "displayName": "Aline Dupuy",
                "type": "user",
                "userPrincipalName": "AlineD@m365x557205.onmicrosoft.com",
                "lastUserSignInDateTime": "2/11/2022 4:58:13 PM +00:00"
            }
        }
    ]
}

Back in the main browser session where you are still logged in as the global administrator user, repeat Step 4 to see that the **decision** property for the member who completed step 5 is now `Approve`.

Congratulations! You have created an access review and self-attested to the need for access. You only do this once, and maintain access until when the access review definition expires.

## Step 7: Clean up resources

Delete the resources that you created for this tutorial—**Building security group**, the access review schedule definition, and the three test users..

### Delete the security group

#### Request

In this call, replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the **id** of **Building security group**.

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_group"
}-->
```http
DELETE https://graph.microsoft.com/beta/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

### Delete the access review definition

In this call, replace `d7286a17-3a01-406a-b872-986b6b40317c` with the **id** of your access review definition. Since the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions associated with the access review.

#### Request
<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_accessReviewScheduleDefinition"
}-->
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/d7286a17-3a01-406a-b872-986b6b40317c
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

### Delete the three test users
In this call, replace `43b12b0c-ee2c-4257-96fe-505d823e06ab` with the **id** of your test user. Repeat this twice with the **id**s of the other two users to delete them.

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial-accessreviews-Securitygroup-delete_user"
}-->
```http
DELETE https://graph.microsoft.com/beta/users/43b12b0c-ee2c-4257-96fe-505d823e06ab
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```


## See also

+ [Access reviews API Reference](/graph/api/resources/accessreviewsv2-overview?view=graph-rest-beta&preserve-view=true)
+ [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept)
+ [Access reviews overview and license requirements](/azure/active-directory/governance/access-reviews-overview)
+ [Create an access review of groups & applications](/azure/active-directory/governance/create-access-review)
+ [access reviews API Reference](/graph/api/resources/accessreviewsv2-overview?view=graph-rest-beta&preserve-view=true)
+ [Create accessReviewScheduleDefinition](/graph/api/accessreviewscheduledefinition-create?view=graph-rest-beta&preserve-view=true)
+ [List accessReviewInstance](/graph/api/accessreviewinstance-list?view=graph-rest-beta&preserve-view=true)
+ [List accessReviewInstanceDecisionItem](/graph/api/accessreviewinstancedecisionitem-list?view=graph-rest-beta&preserve-view=true)
