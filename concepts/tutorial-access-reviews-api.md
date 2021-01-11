---
title: "Using the Access Reviews API in Graoh Explorer"
description: "Access reviews definitons, instances, and decisions"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Tutorial: Using the Access Reviews API in Graph Explorer

In this tutorial, we will use Graph Explorer to create and read access reviews and to understand its main building blocks: definitions, instances, and decisions.

Using Graph Explorer to try and test your Access Reviews API calls before you automate them into a script or an app saves you time by helping you properly define and validate your queries without recompiling your application.

## Prerequisites

+ A security group. We will use this group to apply access reviews.
  
+ **License requirements:** Using this feature requires an Azure AD Premium P2 or trial license enabled.

+ **Permissions:**
  + To call the Access Reviews APIs in this tutorial, consent to one or all the following permissions (from least to most privileged):
    + AccessReview.Read.All
    + AccessReview.ReadWrite.All
    + AccessReview.ReadWrite.Membership
  + To create the test group in Step 1, first consent to the *Group.ReadWrite.All* permission.

## Step 1: Create a security group

Create a security group named **Test security group** that is the target of the access reviews in this tutorial. You will assign two group owners to this group.

### Request

```http
POST https://graph.microsoft.com/beta/groups
Content-Type: application/json

{
  "description": "A security group with two owners",
  "displayName": "Test security group",
  "groupTypes": [
  ],
  "mailEnabled": false,
  "mailNickname": "security2020",
  "securityEnabled": true,
  "owners@odata.bind": [
    "https://graph.microsoft.com/beta/users/c42981f1-213b-4856-9eff-9f9ab400363b",
    "https://graph.microsoft.com/beta/users/30eec5e3-65cc-4b06-bf8b-6137dd79ae96"
  ]
}
```

### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "9fbd2c38-bccb-4d07-84e3-bdeb0f42473b",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2021-01-08T16:57:47Z",
    "createdByAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
    "description": "A security group with two owners",
    "displayName": "Test security group",
    "expirationDateTime": null,
    "groupTypes": [],
    "infoCatalogs": [],
    "isAssignableToRole": null,
    "isManagementRestricted": null,
    "mail": null,
    "mailEnabled": false,
    "mailNickname": "security2020",
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
    "renewedDateTime": "2021-01-08T16:57:47Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-2679974968-1292352715-3955090308-994525711",
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

*Tip:* You require the *AccessReview.ReadWrite.All* permission to create (POST) an access review.

Create an access review for external identities for the security group, with the following settings:
+ It is a self-reviewing access review.
+ This is a one-time access review.
+ The review scope applies to **Guest users** only.
+ Apply disable and delete action to denied guest users. 

For more information about the parameters required in the request body of these examples, see the [Access Reviews API Reference]().

### Request

In the following call, replace `9fbd2c38-bccb-4d07-84e3-bdeb0f42473b` with the group id of your **Test security group**.

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions
Content-type: application/json

{
    "displayName": "One-time self-review for external identities for a security group, with disable and delete",
    "descriptionForAdmins": "One-time self-review for external identities for a security group, with disable and delete",
    "descriptionForReviewers": "One-time self-review for external identities for a security group, with disable and delete",
    "scope": {
        "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b",
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
                "startDate": "2020-12-28",
                "endDate": "2021-12-28"
            }
        },
        "applyActions": [
            {
                "@odata.type": "#microsoft.graph.disableAndDeleteUserApplyAction"
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
    "id": "46ed9917-be7b-4ce4-b8b0-a6a488cc48ab",
    "displayName": "One-time self-review for external identities for a security group, with disable and delete",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "One-time self-review for external identities for a security group, with disable and delete",
    "descriptionForReviewers": "One-time self-review for external identities for a security group, with disable and delete",
    "createdBy": {
        "id": "70c9c3f5-a550-42be-ba11-d11c3dc36324",
        "displayName": "MOD Administrator",
        "userPrincipalName": "admin@contoso.onmicrosoft.com"
    },
    "scope": {
        "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b",
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
                "startDate": "2020-12-28",
                "endDate": "2021-12-28"
            }
        },
        "applyActions": [
            {
                "@odata.type": "#microsoft.graph.disableAndDeleteUserApplyAction"
            }
        ]
    }
}
```

## Step 3: List and read definitions

Now that you have created the access review, you can list all access review definitions.

### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions",
    "@odata.count": 1,
    "value": [
        {
            "id": "46ed9917-be7b-4ce4-b8b0-a6a488cc48ab",
            "displayName": "One-time self-review for external identities for a security group, with disable and delete",
            "createdDateTime": "2021-01-11T16:05:14.9857597Z",
            "lastModifiedDateTime": "2021-01-11T16:05:32.034544Z",
            "status": "InProgress",
            "descriptionForAdmins": "One-time self-review for external identities for a security group, with disable and delete",
            "descriptionForReviewers": "One-time self-review for external identities for a security group, with disable and delete",
            "createdBy": {
                "id": "70c9c3f5-a550-42be-ba11-d11c3dc36324",
                "displayName": "MOD Administrator",
                "userPrincipalName": "admin@contoso.onmicrosoft.com"
            },
            "scope": {
                "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
                "queryType": "MicrosoftGraph"
            },
            "instanceEnumerationScope": {
                "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b",
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
                        "startDate": "2021-01-12",
                        "endDate": "2021-12-28"
                    }
                },
                "applyActions": [
                    {
                        "@odata.type": "#microsoft.graph.disableAndDeleteUserApplyAction"
                    }
                ]
            }
        }
    ]
}
```

## Step 3: List instances

The following query lists all instances of the access review definition. Because you created a one-time access review in Step 1, the request returns only one instance whose `id` property is the same as the access definition’s `id` property.

### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab/instances
```

### Response

In this response, the **status** of the access review is marked as `InProgress`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('46ed9917-be7b-4ce4-b8b0-a6a488cc48ab')/instances",
    "value": [
        {
            "id": "46ed9917-be7b-4ce4-b8b0-a6a488cc48ab",
            "startDateTime": "2021-01-11T16:05:14.987Z",
            "endDateTime": "2021-12-28T08:00:00Z",
            "status": "InProgress",
            "scope": {
                "query": "/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
                "queryType": "MicrosoftGraph"
            }
        }
    ]
}
```

## Step 5: Get decisions

You are interested in the decisions taken for the instance of an access review. Decisions are available only when the **status** of the access review is marked as `Completed`.

### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab/instances/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab/decisions
```

### Response

The following response shows two decisions were taken for the instance of the review.

```http
HTTP/1.1 200 OK
Content-type: application/json

{

}
```

## Step 6: Inspect a decision

In the previous example response, two decisions were taken for the access review instance. In this example, we will inspect one of the decisions.

### Request

```http

```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
}
```

## Get pending access reviews as a reviewer

You can list pending access review instances for which you are the reviewer. 

### Request

```http
GET /me/pendingAccessReviewInstances
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('70c9c3f5-a550-42be-ba11-d11c3dc36324')/pendingAccessReviewInstances",
    "@odata.count": 0,
    "value": []
}
```

You can use an id from the pending access reviews to read the access review definition. Using the call `/me/pendingAccessReviewInstances` in user context has a number of advantages:
+ It runs in user context, so there is no service principal required. A user can call and read their pending Access Reviews actions.
+ This pattern could be used easily for widgets or plugins on the Intranet page, or a bot in runs in a user context and could notify the user if a new Access Review is coming in – or just give an update on the open requests. 

## Step 7: Clean up resources

You will now delete the two resources that you created for this tutorial-**Test security group** and the access review schedule definition.

Since the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions associated with the access review.

### Delete the security group

#### Request

```http
```

### Response

```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

### Delete the acess review definition

#### Request
```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab
```

#### Response
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

## See also:

+ [Access Reviews License requirements.](https://docs.microsoft.com/azure/active-directory/governance/access-reviews-overview#license-requirements)
+ [Access Reviews License scenarios.](https://docs.microsoft.com/azure/active-directory/governance/access-reviews-overview#example-license-scenarios)
+ [Create an access review of groups & applications](https://docs.microsoft.com/azure/active-directory/governance/create-access-review)
+ [Access review API reference – Create an access review schedule definition.](https://docs.microsoft.com/graph/api/accessreviewscheduledefinition-create?view=graph-rest-beta&tabs=http#request-body&preserve-view=true)

