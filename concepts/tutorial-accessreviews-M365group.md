---
title: "Using the Access Reviews API in Graph Explorer"
description: "Use the Access Reviews API to review access for your M365 group"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Tutorial: Use the Access Reviews API to review access for all your M365 groups with external identities

In this tutorial, you will use Graph Explorer to create and read access reviews that targets all M365 Groups with external identities in the tenant. To achieve this, you'll first use Azure AD B2B to invite and create an external identity in your tenant. Then, you'll add this external identity to your M365 group prior to creating and reading the access review.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
  
+ An account in a different Azure AD tenant or social identity that you can invite as an external identity (B2B user). 

+ Permissions:
  + To call the Access Reviews APIs in this tutorial, consent to the *AccessReview.ReadWrite.All* permission.
  + To create a test group, and delete it later after completing the tutorial, consent to the *Group.ReadWrite.All* permission.
  + To call the invitation APIs to invite a user, consent to *User.Invite.All*  permission.

You will use Graph Explorer to run this tutorial.

## Step 1: Invite a new person (an external identity) into your tenant as a B2B guest

### Request
In Graph Explorer, send the following request to invite an external user with the email address **john.doe@outlook.com** to your tenant.

```http
POST https://graph.microsoft.com/beta/invitations
Content-Type: application/json

{
    "invitedUserDisplayName": "John Doe (Contoso)",
    "invitedUserEmailAddress": "john.doe@outlook.com",
    "sendInvitationMessage": false,
    "inviteRedirectUrl": "https://myapps.microsoft.com"
}
```

### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#invitations/$entity",
    "id": "ca2eb396-9aad-4d79-b160-1592d89c41e8",
    "inviteRedeemUrl": "https://login.microsoftonline.com/redeem?rd=https%3a%2f%2finvitations.microsoft.com%2fredeem%2f%3ftenant%3d7cf6c81d-f460-4880-a89a-415873fac442%26user%3dca2eb396-9aad-4d79-b160-1592d89c41e8%26ticket%3dbVVXuJT%252bRXf0hmpxTmbHfuzS7gwP4piRSCXY2cUIB2s%253d%26ver%3d2.0",
    "invitedUserDisplayName": "John Doe (Contoso)",
    "invitedUserType": "Guest",
    "invitedUserEmailAddress": "john.doe@outlook.com",
    "sendInvitationMessage": false,
    "resetRedemption": false,
    "inviteRedirectUrl": "https://myapps.microsoft.com/",
    "status": "PendingAcceptance",
    "invitedUserMessageInfo": {
        "messageLanguage": null,
        "customizedMessageBody": null,
        "ccRecipients": [
            {
                "emailAddress": {
                    "name": null,
                    "address": null
                }
            }
        ]
    },
    "invitedUser": {
        "id": "7fc6d020-ca10-4a2f-adce-024755b1e012"
    }
}
```
Take note of the invited user's id from the response. In this case, john.doe@outlook.com has been assigned user `id` `7fc6d020-ca10-4a2f-adce-024755b1e012` in your tenant.

## Step 2: Create a new M365 group and add the external guest

Next:
1. Create a new M365 Group named **Feelgood marketing campaign** and add the newly invited user, `john.doe@outlook.com`, assigned `id` `7fc6d020-ca10-4a2f-adce-024755b1e012` to the group.
2. Assign yourself as the group owner. You will be the reviewer of the group.
3. Add the new (external identity) user, john.doe@outlook.com, as a member. Their access to the group will be the subject of review by the group owners, in this case you.

### Request
In this call, replace:
+ `2334f4d7-e1a9-4955-a121-eeb7bce7b8f2` with your `id`.
+ `7fc6d020-ca10-4a2f-adce-024755b1e012` with the `id` john.doe@outlook.com has been assigned in your tenant.

```http
POST https://graph.microsoft.com/beta/groups
Content-Type: application/json

{
    "description": "Feelgood Marketing Campaign with external partners and vendors.",
    "displayName": "Feelgood Marketing Campaign",
    "groupTypes": [
        "Unified"
    ],
    "mailEnabled": true,
    "mailNickname": "FeelGoodCampaign",
    "securityEnabled": true,
    "owners@odata.bind": [
        "https://graph.microsoft.com/beta/users/2334f4d7-e1a9-4955-a121-eeb7bce7b8f2"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/beta/users/7fc6d020-ca10-4a2f-adce-024755b1e012"
    ]
}
```

### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "64800d38-077a-4a29-b39a-ade9b327138a",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2021-02-10T07:41:12Z",
    "createdByAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
    "description": "Feelgood Marketing Campaign with external partners and vendors.",
    "displayName": "Feelgood Marketing Campaign",
    "expirationDateTime": null,
    "groupTypes": [
        "Unified"
    ],
    "infoCatalogs": [],
    "isAssignableToRole": null,
    "isManagementRestricted": null,
    "mail": "FeelGoodCampaign@M365x606510.onmicrosoft.com",
    "mailEnabled": true,
    "mailNickname": "FeelGoodCampaign",
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
    "proxyAddresses": [
        "SMTP:FeelGoodCampaign@M365x606510.onmicrosoft.com"
    ],
    "renewedDateTime": "2021-02-10T07:41:12Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-1686113592-1244202874-3920468659-2316511155",
    "theme": null,
    "visibility": "Public",
    "writebackConfiguration": {
        "isEnabled": null,
        "onPremisesGroupType": null
    },
    "onPremisesProvisioningErrors": []
}
```

## Step 3: Create an access review for all M365 groups with external identities

You have an M365 group and it has an external identity. Now, create a recurring access review series for all M365 Groups with external guests.

This access review automatically finds and reviews any and all M365 Groups with external guests in your tenant—including the **Feelgood marketing campaign** group you just created. 

The access review series will have the following settings:
+ The group owners review the external identity's access.
+ Its a recurring access review, reviewed quarterly.
+ The review scope is limited to M365 groups with **Guest users** (external identities) only.
+ A backup reviewer. This can be a fallback user or a group that can review the access in case the subject group has its group owners as reviewers, but the group does not have any owners assigned.
+ **autoApplyDecisionsEnabled** is set to `true`. In this case, once the reviewer completes the access review, their decisions are applied automatically. If not enabled, a user must, after the review completes, apply the decisions manually.
+ Apply **removeAccessApplyAction** action to denied guest users. This removes the denied guest user's membership to the group, though they'll still be able to sign in to your tenant.[Learn more about the implications of this action](https://docs.microsoft.com/azure/active-directory/governance/create-access-review#create-one-or-more-access-reviews).

For more information about the parameters required in the request body of these examples, see the [Access Reviews API Reference](https://docs.microsoft.com/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta).

### Request
In this call, replace the following:

The backup reviewer is a user.
+ values of **displayName**, **descriptionForAdmins**, and **descriptionForReviewers** with your preferred values.
+ `6052f5ba-d607-4e2f-bd5e-b69e40a71a0d` with the `id` of the user you are designating as a backup reviewer.
+ value of **startDate** with today's date and value of **endDate** with a date one year from the start date. 

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions
Content-type: application/json

{
    "displayName": "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)",
    "descriptionForAdmins": "",
    "descriptionForReviewers": "",
    "scope": {
        "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true",
        "queryType": "MicrosoftGraph"
    },
    "reviewers": [
        {
            "query": "./owners",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "backupReviewers": [
        {
            "query": "/users/6052f5ba-d607-4e2f-bd5e-b69e40a71a0d",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": true,
        "defaultDecision": "Approve",
        "instanceDurationInDays": 0,
        "autoApplyDecisionsEnabled": true,
        "recommendationsEnabled": true,
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
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2021-02-10",
                "endDate": "2022-12-21"
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
    "id": "841613f1-84c9-4254-86a3-0c7ae7854ba0",
    "displayName": "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "",
    "descriptionForReviewers": "",
    "createdBy": {
        "id": "2334f4d7-e1a9-4955-a121-eeb7bce7b8f2",
        "displayName": "MOD Administrator",
        "userPrincipalName": "admin@M365x606510.onmicrosoft.com"
    },
    "scope": {
        "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
        "queryType": "MicrosoftGraph"
    },
    "instanceEnumerationScope": {
        "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true",
        "queryType": "MicrosoftGraph"
    },
    "reviewers": [
        {
            "query": "./owners",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "backupReviewers": [
        {
            "query": "/users/6052f5ba-d607-4e2f-bd5e-b69e40a71a0d",
            "queryType": "MicrosoftGraph",
            "queryRoot": null
        }
    ],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "defaultDecisionEnabled": true,
        "defaultDecision": "Approve",
        "instanceDurationInDays": 0,
        "autoApplyDecisionsEnabled": true,
        "recommendationsEnabled": true,
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
                "type": "numbered",
                "numberOfOccurrences": 0,
                "recurrenceTimeZone": null,
                "startDate": "2021-02-10",
                "endDate": "2022-12-21"
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

## Step 4: List and read definitions

Now that you have created the access review for all M365 groups, you can list all access review definitions. You can do this to verify the settings you applied in Step 3.

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
            "id": "841613f1-84c9-4254-86a3-0c7ae7854ba0",
            "displayName": "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)",
            "createdDateTime": "2021-02-10T08:26:12.4964761Z",
            "lastModifiedDateTime": "2021-02-10T08:26:32.6089381Z",
            "status": "Completed",
            "descriptionForAdmins": "",
            "descriptionForReviewers": "",
            "createdBy": {
                "id": "2334f4d7-e1a9-4955-a121-eeb7bce7b8f2",
                "displayName": "MOD Administrator",
                "userPrincipalName": "admin@M365x606510.onmicrosoft.com"
            },
            "scope": {
                "query": "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
                "queryType": "MicrosoftGraph"
            },
            "instanceEnumerationScope": {
                "query": "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true",
                "queryType": "MicrosoftGraph"
            },
            "reviewers": [
                {
                    "query": "./owners",
                    "queryType": "MicrosoftGraph",
                    "queryRoot": null
                }
            ],
            "backupReviewers": [
                {
                    "query": "/users/6052f5ba-d607-4e2f-bd5e-b69e40a71a0d",
                    "queryType": "MicrosoftGraph",
                    "queryRoot": null
                }
            ],
            "settings": {
                "mailNotificationsEnabled": true,
                "reminderNotificationsEnabled": true,
                "justificationRequiredOnApproval": true,
                "defaultDecisionEnabled": true,
                "defaultDecision": "Approve",
                "instanceDurationInDays": 0,
                "autoApplyDecisionsEnabled": true,
                "recommendationsEnabled": true,
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
                        "type": "numbered",
                        "numberOfOccurrences": 0,
                        "recurrenceTimeZone": null,
                        "startDate": "2021-02-10",
                        "endDate": "2021-02-10"
                    }
                },
                "applyActions": [
                    {
                        "@odata.type": "#microsoft.graph.removeAccessApplyAction"
                    }
                ]
            }
        }
    ]
}
```

## Step 5: List instances

The following query lists all instances of the access review definition. Because you created a one-time access review in Step 2, the request returns only one instance whose `id` property is the same as the access definition’s `id` property.

### Request
In this call, replace `841613f1-84c9-4254-86a3-0c7ae7854ba0` with the `id` of a definition returned in Step 4.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/b4145b43-b0f9-48f8-95f1-b7ffb975b8e9/instances
```

### Response

In this response, the **status** of the access review instance is marked as `InProgress`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('b4145b43-b0f9-48f8-95f1-b7ffb975b8e9')/instances",
    "value": [
        {
            "id": "b4145b43-b0f9-48f8-95f1-b7ffb975b8e9",
            "startDateTime": "2021-02-09T20:52:25.307Z",
            "endDateTime": "2021-12-28T08:00:00Z",
            "status": "InProgress",
            "scope": {
                "query": "/groups/8f9b93a5-33cc-46a5-befe-a2f3ed40639b/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
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
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/b4145b43-b0f9-48f8-95f1-b7ffb975b8e9/instances/b4145b43-b0f9-48f8-95f1-b7ffb975b8e9/decisions
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

