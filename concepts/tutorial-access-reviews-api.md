---
title: "Using the Access Reviews API in Graph Explorer"
description: "Access reviews definitons, instances, and decisions"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Tutorial: Use the Access Reviews API to review access for your groups

In this tutorial, you will use Graph Explorer to create and read access reviews and understand its main building blocks: definitions, instances, and decisions.

Using Graph Explorer to try and test your Access Reviews API calls before you automate them into a script or an app saves you time by helping you properly define and validate your queries without recompiling your application.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.

+ Permissions:
  + To call the Access Reviews APIs in this tutorial, consent to the *AccessReview.Read.All* permission.
  + To create a test group, and delete it later after completing the tutorial, consent to the *Group.ReadWrite.All* permission.

## Step 1: Create a security group and assign owners

Create a security group named **Test security group** that is the target of the access reviews in this tutorial. You will assign two group owners to this group.

### Request
In this call, replace `c42981f1-213b-4856-9eff-9f9ab400363b` and `30eec5e3-65cc-4b06-bf8b-6137dd79ae96` with the id's of your two group owners.

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

*Tip:* You require the *AccessReview.ReadWrite.All* permission to create an access review.

Create an access review for external identities for the security group, with the following settings:
+ It is a self-reviewing access review. In this case, users under review will self-attest to their need for access.
+ This is a one-time access review.
+ The review scope applies to **Guest users** only. This limits the access review to just the Azure AD B2B guest users in your directory.
+ Apply disable and delete action to denied guest users. In this case, the denied guest user's sign in is blocked for 30 days prior to being deleted from the tenant. [Learn more about the implications of this action](https://docs.microsoft.com/azure/active-directory/governance/create-access-review#create-one-or-more-access-reviews).

For more information about the parameters required in the request body of these examples, see the [Access Reviews API Reference](https://docs.microsoft.com/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta).

### Request
In this call, replace the following:
+ values of **displayName**, **descriptionForAdmins**, and **descriptionForReviewers** with your preferred values.
+ `9fbd2c38-bccb-4d07-84e3-bdeb0f42473b` with the group id of your **Test security group**.
+ value of **startDate** with today's date and value of **endDate** with a date one year from the start date. 

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

## Step 4: List instances

The following query lists all instances of the access review definition. Because you created a one-time access review in Step 1, the request returns only one instance whose `id` property is the same as the access definition’s `id` property.

### Request
In this call, replace `46ed9917-be7b-4ce4-b8b0-a6a488cc48ab` with the `id` of a definition returned in Step 3.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab/instances
```

### Response

In this response, the **status** of the access review instance is marked as `InProgress`.

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

### Get pending access reviews as a reviewer

You can also list pending access review instances for which you, the signed-in user, are the reviewer.

#### Request

```http
GET /me/pendingAccessReviewInstances
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('70c9c3f5-a550-42be-ba11-d11c3dc36324')/pendingAccessReviewInstances",
    "@odata.count": 0,
    "value": []
}
```

You can use an `id` from the pending access reviews to read the access review definition. Using the call `/me/pendingAccessReviewInstances` in user context has a number of advantages:
+ No service principal is required. A user can call and read their pending access review actions.
+ Can be used by widgets or plugins on an Intranet page, or a bot or daemon that run as a background service. These can notify the user of new access reviews or of updates to access reviews. 

## Step 5: Get decisions

You are interested in the decisions taken for the instance of an access review..

### Request
In this call, replace `46ed9917-be7b-4ce4-b8b0-a6a488cc48ab` with the `id` of your access review definition returned in Step 3.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab/instances/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab/decisions
```

### Response

The following response shows the decision taken for the instance of the review.

```http
HTTP/1.1 200 OK
Content-type: application/json

{

}
```

## Step 6: Clean up resources

You will now delete the two resources that you created for this tutorial-**Test security group** and the access review schedule definition.

Since the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions associated with the access review.

### Delete the security group

#### Request
In this call, replace `9fbd2c38-bccb-4d07-84e3-bdeb0f42473b` with the `id` of your **Test security group**.

```http
DELETE https://graph.microsoft.com/beta/groups/9fbd2c38-bccb-4d07-84e3-bdeb0f42473b
```

#### Response

```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

### Delete the acess review definition

In this call, replace `46ed9917-be7b-4ce4-b8b0-a6a488cc48ab` with the `id` of your access review definition.

#### Request
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/46ed9917-be7b-4ce4-b8b0-a6a488cc48ab
```

#### Response
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

## See also

+ [Access Reviews License requirements.](https://docs.microsoft.com/azure/active-directory/governance/access-reviews-overview#license-requirements)
+ [Access Reviews License scenarios.](https://docs.microsoft.com/azure/active-directory/governance/access-reviews-overview#example-license-scenarios)
+ [Create an access review of groups & applications](https://docs.microsoft.com/azure/active-directory/governance/create-access-review)
+ [Access review API reference – Create an access review schedule definition.](https://docs.microsoft.com/graph/api/accessreviewscheduledefinition-create?view=graph-rest-beta&tabs=http#request-body&preserve-view=true)

