---
title: "Using the Access Reviews API for your security groups"
description: "Use the Access Reviews API to review access to your groups"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
---

# Tutorial: Use the Access Reviews API to review access to your groups

In this tutorial, you will use Microsoft Graph Explorer to create and read access reviews and understand its main building blocks: definitions, instances, and decisions.

You can use Microsoft Graph Explorer or Postman to try out and test your Access Reviews API calls before you automate them into a script or an app. This saves you time by helping you properly define and validate your queries without repeatedly recompiling your application.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Log in to [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) as a user in a global administrator role.
  + [Optional] Start a new incognito session, logged in as one of the members you will add to the security group.
+ Permissions:
  + To call the Access Reviews APIs, consent to the *AccessReview.ReadWrite.All* permission.
  + To create the security group, and delete it later after completing the tutorial, consent to the *Group.ReadWrite.All* permission.

To consent to the required permissions in Microsoft Graph Explorer:
1. Click **Sign in to Graph Explorer** and sign in using the account that has a global administrator role.
2. Select the settings gear icon to the right of the user account details, and then select **Select permissions**.
   
   ![Select the Microsoft Graph permissions](../images/../concepts/images/tutorial-accessreviews-api/settings.png)

3. Scroll through the list of permissions to find the *AccessReview.ReadWrite.All* and *Group.ReadWrite.All* permissions. To consent to the permission, select it first, then select **Consent**.
   
   ![Consent to the Microsoft Graph permissions](../images/../concepts/images/tutorial-accessreviews-api/consentpermissions.png)

4. While consenting to the *AccessReview.ReadWrite.All* permission, in the pop window, choose to **Consent on behalf of your organization** and then select **Accept** to accept the consent of the permissions. You do not need to consent to the *Group.ReadWrite.All* permission on behalf of your organization because the permission is not needed by other users.

## Step 1: Create a security group, assign owners, and add members

Create a security group named **Building security group** that is the target of the access reviews in this tutorial. Assign to this group two group owners and two members—one of the group owners is yourself. These members will be the subject of review by the group owners.

### Request
In this call, replace:
+ `010b2de0-0ed4-4ece-bfa2-22fff71d0497` and `b828cc0e-4240-46ed-bb25-888744487e2d` with the `id`'s of your two group owners—one of which is yourself.
+ `43b12b0c-ee2c-4257-96fe-505d823e06ab` and `859924d0-7115-422a-9ee8-ea8c0c014707` with the `id`'s of the two members to add to your group.

```http
POST https://graph.microsoft.com/beta/groups
Content-Type: application/json

{
    "description": "Building security group",
    "displayName": "Building security group",
    "groupTypes": [],
    "mailEnabled": false,
    "mailNickname": "buildingsecurity",
    "securityEnabled": true,
    "owners@odata.bind": [
        "https://graph.microsoft.com/beta/users/010b2de0-0ed4-4ece-bfa2-22fff71d0497",
        "https://graph.microsoft.com/beta/users/b828cc0e-4240-46ed-bb25-888744487e2d"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/beta/users/43b12b0c-ee2c-4257-96fe-505d823e06ab",
        "https://graph.microsoft.com/beta/users/859924d0-7115-422a-9ee8-ea8c0c014707"
    ]
}
```

### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "825f1b5e-6fb2-4d9a-b393-d491101acc0c",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2021-02-10T15:00:05Z",
    "createdByAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
    "description": "Building security group",
    "displayName": "Building security group",
    "expirationDateTime": null,
    "groupTypes": [],
    "infoCatalogs": [],
    "isAssignableToRole": null,
    "isManagementRestricted": null,
    "mail": null,
    "mailEnabled": false,
    "mailNickname": "buildingsecurity",
    "membershipRule": null,
    "membershipRuleProcessingState": null,
    "onPremisesDomainName": null,
    "onPremisesLastSyncDateTime": null,
    "onPremisesNetBiosName": null,
    "onPremisesSamAccountName": null,
    "onPremisesSecurityIdentifier": null,
    "onPremisesSyncEnabled": null,
    "preferredDataLocation": null,
    "preferredLanguage": null,
    "proxyAddresses": [],
    "renewedDateTime": "2021-02-10T15:00:05Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-2187271006-1301966770-2446627763-214702608",
    "theme": null,
    "visibility": null,
    "writebackConfiguration": {
        "isEnabled": null,
        "onPremisesGroupType": null
    },
    "onPremisesProvisioningErrors": []
}
```

## Step 2: Create an access review

Create an access review for members of the security group, with the following settings:
+ It is a self-reviewing access review. In this case, users under review will self-attest to their need for access to the group.
+ This is a one-time access review. In this case, once access is granted, the user does not need to self-attest again within the access review period.
+ The review scope is limited to members of **Building security group**.

### Request
In this call, replace the following:
+ Values of **displayName**, **descriptionForAdmins**, and **descriptionForReviewers** with your preferred values.
+ `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the `id` of your **Building security group**.
+ Value of **startDate** with today's date and value of **endDate** with a date one year from the start date.

By failing to specify the value of the **reviewers** property, this access review is configured as self-reviewing with the members as the reviewers.

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions
Content-type: application/json

{
    "displayName": "One-time self-review for members of Building security group",
    "descriptionForAdmins": "One-time self-review for members of Building security group",
    "descriptionForReviewers": "One-time self-review for members of Building security group",
    "scope": {
        "query": "/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c/transitiveMembers",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c",
        "queryType": "MicrosoftGraph"
    },
    "reviewers": [],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": false,
        "defaultDecision": "Deny",
        "instanceDurationInDays": 0,
        "autoApplyDecisionsEnabled": true,
        "recommendationsEnabled": true,
        "recurrence": {
            "pattern": null,
            "range": {
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2021-02-09",
                "endDate": "2022-12-31"
            }
        },
        "applyActions": [
            {
                "@odata.type": "#microsoft.graph.removeAccessApplyAction"
            }
        ]
    }
}
```

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions/$entity",
    "id": "d7286a17-3a01-406a-b872-986b6b40317c",
    "displayName": "One-time self-review for members of Building security group",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "One-time self-review for members of Building security group",
    "descriptionForReviewers": "One-time self-review for members of Building security group",
    "createdBy": {
        "id": "b828cc0e-4240-46ed-bb25-888744487e2d",
        "displayName": "MOD Administrator",
        "userPrincipalName": "admin@contoso.com"
    },
    "scope": {
        "query": "/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c/transitiveMembers",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c",
        "queryType": "MicrosoftGraph"
    },
    "reviewers": [],
    "backupReviewers": [],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": false,
        "defaultDecision": "Deny",
        "instanceDurationInDays": 0,
        "autoApplyDecisionsEnabled": true,
        "recommendationsEnabled": true,
        "recurrence": {
            "pattern": null,
            "range": {
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2021-02-09",
                "endDate": "2022-12-31"
            }
        },
        "applyActions": [
            {
                "@odata.type": "#microsoft.graph.removeAccessApplyAction"
            }
        ]
    }
}
```
This is an access review definition. You can list and read this and any other existing definitions defined in your tenant by running `GET` on `https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions`.

## Step 3: List instances of the access review

The following query lists all instances of the access review definition. Because you created a one-time access review in Step 2, the request returns only one instance whose `id` is the same as the access definition’s `id`.

### Request
In this call, replace `d7286a17-3a01-406a-b872-986b6b40317c` with the `id` of your access review definition returned in Step 2.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/d7286a17-3a01-406a-b872-986b6b40317c/instances
```

### Response

In this response, the **status** of the access review instance is `InProgress` because **startDateTime** is past and **endDateTime** is in the future. If **startDateTime** is in the future, the status will be `NotStarted`. On the other hand, if **endDateTime** is in the past, the status will be `Completed`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('d7286a17-3a01-406a-b872-986b6b40317c')/instances",
    "value": [
        {
            "id": "d7286a17-3a01-406a-b872-986b6b40317c",
            "startDateTime": "2021-02-10T15:09:40.153Z",
            "endDateTime": "2022-12-31T08:00:00Z",
            "status": "InProgress",
            "scope": {
                "query": "/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c/transitiveMembers",
                "queryType": "MicrosoftGraph"
            }
        }
    ]
}
```

## Step 4: Get decisions

You are interested in the decisions taken for the instances of an access review.

### Request
In this call, replace `d7286a17-3a01-406a-b872-986b6b40317c` with the `id` of your access review definition returned in Step 2.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/d7286a17-3a01-406a-b872-986b6b40317c/instances/d7286a17-3a01-406a-b872-986b6b40317c/decisions
```

### Response

The following response shows the decision taken for the instance of the review.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('d7286a17-3a01-406a-b872-986b6b40317c')/instances('d7286a17-3a01-406a-b872-986b6b40317c')/decisions",
    "@odata.count": 2,
    "value": [
        {
            "id": "1c74f500-9082-4dfe-80ac-784a6edb71d7",
            "accessReviewId": "d7286a17-3a01-406a-b872-986b6b40317c",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "43b12b0c-ee2c-4257-96fe-505d823e06ab",
                "userDisplayName": "Alex Wilber",
                "userPrincipalName": "AlexW@contoso.com"
            }
        },
        {
            "id": "7744be81-7d17-40c9-8fd3-c9072b1ccace",
            "accessReviewId": "d7286a17-3a01-406a-b872-986b6b40317c",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "859924d0-7115-422a-9ee8-ea8c0c014707",
                "userDisplayName": "Allan Deyoung",
                "userPrincipalName": "AllanD@contoso.com"
            }
        }
    ]
}
```

From the call, the **decision** property has the value of `NotReviewed`. This is because none of the two members has completed their self-attestation. Follow step 5 to learn how each member can self-attest to their need for access review.

## Step 5: Self-review your pending access

In Step 2, you configured the access review as a self-reviewing. This means that both members of **Building security group** must self-attest to their need to maintain access to the group. You will complete this step as one of the two members of Building security group.

In this step, you will:
1. List your pending access review instances.
2. Complete the access review self-attestation process.

Start a new browser session in **Incognito** mode, or via an anonymous browser, and log in as one of the two members of **Building security group**. By doing so, you will not interrupt your current session as a user in the global administrator role. Alternatively, you can interrupt your current session by logging out and logging in to the portal as one of the two group members.

To list your pending access review instances, run the following query:

#### Request

```http
GET /me/pendingAccessReviewInstances
```

#### Response
From the response below, user Alex Wilber of `id` `43b12b0c-ee2c-4257-96fe-505d823e06ab` has 1 pending access review to self-attest to.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('43b12b0c-ee2c-4257-96fe-505d823e06ab')/pendingAccessReviewInstances",
    "@odata.count": 1,
    "value": [
        {
            "id": "d7286a17-3a01-406a-b872-986b6b40317c",
            "startDateTime": "2021-02-10T15:09:40.153Z",
            "endDateTime": "2022-12-31T08:00:00Z",
            "status": "InProgress",
            "scope": {
                "query": "/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c/transitiveMembers",
                "queryType": "MicrosoftGraph"
            }
        }
    ]
}
```
Using the call `/me/pendingAccessReviewInstances` in a user context has a number of advantages:
+ No service principal is required. A user can call and read their pending access review actions.
+ Can be used by widgets or plugins on an Intranet page, or a bot or daemon that run as a background service. These can notify you of new access reviews or of updates to access reviews. 

In the same incognito browser session, log in to https://myaccess.microsoft.com/ to complete the self-attestation. From the right navigation bar, select **Access reviews** and choose your access review. Select **Yes**, that you still need access to **Building security group**, enter a reason, then click **Submit**.

   ![Self-attest to access review](../images/../concepts/images/tutorial-accessreviews-api/selfattest.png)

Back in the main browser session with you logged in as the global administrator user, repeat Step 4 to see that the **decision** property for the member who completed step 5 is now `Approve`.

Congratulations! You have created an access review and self-attested to the need for access. You only do this once, and maintain access until when the access review definition expires.

## Step 6: Clean up resources

Delete the two resources that you created for this tutorial—**Building security group** and the access review schedule definition.

### Delete the security group

#### Request
In this call, replace `825f1b5e-6fb2-4d9a-b393-d491101acc0c` with the `id` of your **Building security group**.

```http
DELETE https://graph.microsoft.com/beta/groups/825f1b5e-6fb2-4d9a-b393-d491101acc0c
```

#### Response

```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

### Delete the access review definition

In this call, replace `d7286a17-3a01-406a-b872-986b6b40317c` with the `id` of your access review definition. Since the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions associated with the access review.

#### Request
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/d7286a17-3a01-406a-b872-986b6b40317c
```

#### Response
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

## See also

+ [Access Reviews overview and license requirements.](/azure/active-directory/governance/access-reviews-overview)
+ [Access Reviews license scenarios.](/azure/active-directory/governance/access-reviews-overview#example-license-scenarios)
+ [Create an access review of groups & applications](/azure/active-directory/governance/create-access-review)
+ [Access Reviews API Reference](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true)

