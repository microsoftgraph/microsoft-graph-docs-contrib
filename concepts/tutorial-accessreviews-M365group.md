---
title: "Using the Access Reviews API for your M365 groups"
description: "Use the Access Reviews API to review access to your M365 groups"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
---

# Tutorial: Use the Access Reviews API to review access to all your M365 groups with external identities

In this tutorial, you will use Graph Explorer to create and read access reviews that targets all M365 Groups with external identities in the tenant. To achieve this, you'll first use Azure AD B2B to invite and create an external identity in your tenant. Then, you'll add this external identity to your M365 group prior to creating and reading the access review.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled. 
+ An account in a different Azure AD tenant or a social identity that you can invite as an external identity (B2B user).
+ Log in to [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)  as a user in a global administrator role. 
+ Permissions:
  + To call the invitation APIs to invite a user, consent to *User.Invite.All* permission.
  + To call the Access Reviews APIs, consent to the *AccessReview.ReadWrite.All* permission.
  + To create the M365 group, and delete it later after completing the tutorial, consent to the *Group.ReadWrite.All* permission.
  + To remove the guest user from the tenant after completing the tutorial, consent to the *Directory.AccessAsUser.All* permission.

To consent to the required permissions in Microsoft Graph Explorer:
1. Click **Sign in to Graph Explorer** and sign in using the account that has a global administrator role.
2. Select the settings gear icon to the right of the user account details, and then select **Select permissions**.
   
   ![Select the Microsoft Graph permissions](../images/../concepts/images/tutorial-accessreviews-api/settings.png)

3. Scroll through the list of permissions to find the *AccessReview.ReadWrite.All*, *Directory.AccessAsUser.All*, *Group.ReadWrite.All*, and *User.Invite.All* permissions. To consent to the permission, select it first, then select **Consent**.
   
   ![Consent to the Microsoft Graph permissions](../images/../concepts/images/tutorial-accessreviews-api/consentpermissions.png)

   >[!NOTE]
   While consenting to the permissions, in the pop window, do not consent on behalf of your organization because these permissions are not needed by other users. Select **Accept** to accept the consent of the permissions.

## Step 1: Invite a new person (an external identity) into your tenant as a B2B guest

### Request
Run the following request to invite an external user with the email address **john.doe@outlook.com** to your tenant.

```http
POST https://graph.microsoft.com/beta/invitations
Content-Type: application/json

{
    "invitedUserDisplayName": "John Doe (Tailspin Toys)",
    "invitedUserEmailAddress": "john.doe@outlook.com",
    "sendInvitationMessage": false,
    "inviteRedirectUrl": "https://myapps.microsoft.com"
}
```

### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#invitations/$entity",
    "id": "3043523a-7a7d-4aec-b9c7-141d9c277559",
    "inviteRedeemUrl": "https://login.microsoftonline.com/redeem?rd=https%3a%2f%2finvitations.microsoft.com%2fredeem%2f%3ftenant%3df9a44fab-6764-4166-aac0-c8aca790a100%26user%3d3043523a-7a7d-4aec-b9c7-141d9c277559%26ticket%3dc7qakt671UqG9jN4csqlXOvT9JipN2C8o4eGbh%252bvLWM%253d%26ver%3d2.0",
    "invitedUserDisplayName": "John Doe (Tailspin Toys)",
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
        "id": "baf1b0a0-1f9a-4a56-9884-6a30824f8d20"
    }
}
```
Take note of the invited user's id from the response. In this case, john.doe@outlook.com has been assigned user `id` `baf1b0a0-1f9a-4a56-9884-6a30824f8d20` in your tenant.

## Step 2: Create a new M365 group and add the external guest

In this step:
1. Create a new M365 group named **Feelgood marketing campaign** and add `john.doe@outlook.com` to the group.
2. Assign yourself as the group owner.
3. Add john.doe@outlook.com as a group member. Their access to the group will be the subject of review by you, the group owner.

### Request
In this call, replace:
+ `cdb555e3-b33e-4fd5-a427-17fadacbdfa7` with your `id`.
+ `baf1b0a0-1f9a-4a56-9884-6a30824f8d20` with the `id` john.doe@outlook.com has been assigned in your tenant.

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
        "https://graph.microsoft.com/beta/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/beta/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20"
    ]
}
```

### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "59ab642a-2776-4e32-9b68-9ff7a47b7f6a",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2021-02-10T16:55:34Z",
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
    "mail": "FeelGoodCampaign@contoso.com",
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
        "SMTP:FeelGoodCampaign@contoso.com"
    ],
    "renewedDateTime": "2021-02-10T16:55:34Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-1504404522-1311909750-4154419355-1786739620",
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

You have an M365 group and it has an external identity. Now, create a recurring access review series for all M365 groups with external guests. This means that for all M365 groups with external guests, you will schedule a periodic review of the guests' access to the M365 group.

The access review series will have the following settings:
+ Its a recurring access review, reviewed quarterly.
+ The group owners review the external identity's continued access.
+ The review scope is limited to M365 groups with **Guest users** (external identities) only.
+ A backup reviewer. This can be a fallback user or a group that can review the access in case the group doesn't have any owners assigned even though its group owners are the access review reviewers. 
+ **autoApplyDecisionsEnabled** is set to `true`. In this case, once the reviewer completes the access review, their decisions are applied automatically. If not enabled, a user must, after the review completes, apply the decisions manually.
+ Apply **removeAccessApplyAction** action to denied guest users. This removes the denied guest user's membership to the group, though they'll still be able to sign in to your tenant.[Learn more about the implications of this action](/azure/active-directory/governance/create-access-review#create-one-or-more-access-reviews).

For more information about the parameters in the request body of these examples, see the [Access Reviews API Reference](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true).

### Request
In this call, replace the following:

+ Value of **displayName** with your preferred value.
+ `c9a5aff7-9298-4d71-adab-0a222e0a05e4` with the `id` of the user you are designating as a backup reviewer.
+ Value of **startDate** with today's date and value of **endDate** with a date one year from the start date. 

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
            "query": "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4",
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
    "id": "c22ae540-b89a-4d24-bac0-4ef35e6591ea",
    "displayName": "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)",
    "createdDateTime": null,
    "lastModifiedDateTime": null,
    "status": "NotStarted",
    "descriptionForAdmins": "",
    "descriptionForReviewers": "",
    "createdBy": {
        "id": "cdb555e3-b33e-4fd5-a427-17fadacbdfa7",
        "displayName": "MOD Administrator",
        "userPrincipalName": "admin@contoso.com"
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
            "query": "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4",
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

This is an access review definition. You can list and read this and any other existing definitions by running `GET` on `https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions`.

## Step 4: List instances of the access review

The following query lists all instances of the access review definition. If your test tenant contains other M365 groups with external guests, this request will return more than 1 instance.

### Request
In this call, replace `c22ae540-b89a-4d24-bac0-4ef35e6591ea` with the `id` of a definition returned in Step 3.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/c22ae540-b89a-4d24-bac0-4ef35e6591ea/instances
```

### Response
In this response, te scope includes a group of `id` `59ab642a-2776-4e32-9b68-9ff7a47b7f6a`. This is the **Feelgood marketing campaign** group created in Step 2.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('c22ae540-b89a-4d24-bac0-4ef35e6591ea')/instances",
    "value": [
        {
            "id": "6392b1a7-9c25-4844-83e5-34e23c88e16a",
            "startDateTime": "2021-02-10T17:00:36.96Z",
            "endDateTime": "2021-02-10T17:00:36.96Z",
            "status": "Applied",
            "scope": {
                "query": "/groups/59ab642a-2776-4e32-9b68-9ff7a47b7f6a/members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
                "queryType": "MicrosoftGraph"
            }
        }
    ]
}
```
In this response, the **status** of the access review instance is marked as `Applied` because the current review cycle has ended. Because this is a quarterly review, every 3 months time, a new review instance is created and you—the reviewer—can apply new decisions.

## Step 5: Get decisions

You are interested in the decisions taken for the instance of an access review..

### Request
In this call:
+ Replace `c22ae540-b89a-4d24-bac0-4ef35e6591ea` with the `id` of your access review definition returned in Step 3.
+ Replace `6392b1a7-9c25-4844-83e5-34e23c88e16a` with the `id` of your access review instance returned in Step 4.

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/c22ae540-b89a-4d24-bac0-4ef35e6591ea/instances/6392b1a7-9c25-4844-83e5-34e23c88e16a/decisions
```

### Response

The following response shows the decision taken for the instance of the review.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('c22ae540-b89a-4d24-bac0-4ef35e6591ea')/instances('6392b1a7-9c25-4844-83e5-34e23c88e16a')/decisions",
    "@odata.count": 1,
    "value": [
        {
            "id": "0e76ee07-b4c6-469e-bc9d-e73fc9a8d660",
            "accessReviewId": "6392b1a7-9c25-4844-83e5-34e23c88e16a",
            "reviewedDateTime": "2021-02-10T17:06:26.147Z",
            "decision": "Approve",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Deny",
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "AAD Access Reviews",
                "userPrincipalName": "AAD Access Reviews"
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "baf1b0a0-1f9a-4a56-9884-6a30824f8d20",
                "userDisplayName": "John Doe (Tailspin Toys)",
                "userPrincipalName": "john.doe@outlook.com"
            }
        }
    ]
}
```

Because this is a quarterly review, and as long as the definition is still active, that is, the recurrence **endDate** is not a past date, every 3 months time when a new review instance is created, you as the reviewer can apply new decisions.

## Step 6: Clean up resources

Delete the three resources that you created for this tutorial—**Feelgood marketing campaign**, the access review schedule definition, and the guest user.

### Delete the M365 group

#### Request
In this call, replace `59ab642a-2776-4e32-9b68-9ff7a47b7f6a` with the `id` of your **Feelgood marketing campaign** M365 group.

```http
DELETE https://graph.microsoft.com/beta/groups/59ab642a-2776-4e32-9b68-9ff7a47b7f6a
```

#### Response

```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

### Delete the access review definition

In this call, replace `c22ae540-b89a-4d24-bac0-4ef35e6591ea` with the `id` of your access review definition. Since the access review schedule definition is the blueprint for the access review, deleting the definition will remove the settings, instances, and decisions associated with the access review.

#### Request
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/c22ae540-b89a-4d24-bac0-4ef35e6591ea
```

#### Response
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```
### Remove the guest user

In this call, replace `baf1b0a0-1f9a-4a56-9884-6a30824f8d20` with the `id` of the guest user, john.doe@outlook.com.

#### Request
```http
DELETE https://graph.microsoft.com/beta/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20
```

#### Response
```http
HTTP/1.1 204 No Content
Content-type: text/plain
```

Congratulations! You have created an access review for the M365 group and the group owners have approved access for the current review cycle. You have also triggered a scheduled quarterly re-evaluation and re-attestation of access for all guest users in M365 groups. The group owners will review access during these cycles, choosing either to approve or deny access.

## See also

+ [Access Reviews overview and license requirements.](/azure/active-directory/governance/access-reviews-overview)
+ [Access Reviews license scenarios.](/azure/active-directory/governance/access-reviews-overview#example-license-scenarios)
+ [Create an access review of groups & applications](/azure/active-directory/governance/create-access-review)
+ [Invite/add external users to your organization](/graph/api/resources/invitation?view=graph-rest-beta&preserve-view=true)
+ [Access Reviews API Reference](/graph/api/resources/accessreviewsv2-root?view=graph-rest-beta&preserve-view=true)

