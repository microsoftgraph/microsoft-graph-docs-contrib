---
title: "accessPackageAssignmentPolicy resource type"
description: "An access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageAssignmentPolicy resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment policy specifies the policy by which subjects can request or be assigned an access package via an access package assignment. An access package can have zero or more policies. When a request from a subject is received, the subject is matched against each policy to find the policy (if any) with requestorSettings that include that subject. The policy then determines whether the request requires approval, the duration of the access package assignment, and whether the assignment needs regularly review.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-post.md) which references the access package and access package assignment policy.


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageAssignmentPolicies](../api/accesspackageassignmentpolicy-list.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection | Retrieve a list of accessPackageAssignmentPolicy objects. |
| [Create accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-post.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Create a new accessPackageAssignmentPolicy object. |
| [Get accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Read properties and relationships of an accessPackageAssignmentPolicy object. |
| [Delete accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-delete.md) | | Delete an accessPackageAssignmentPolicy. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageId|String|ID of the access package.|
|accessReviewSettings|`assignmentReviewSettings`|Who must review, and how often, the assignments to the access package from this policy. This property is null if reviews are not required. See below for more information on this type.|
|canExtend|Boolean|Indicates whether a user can extend the access package assignment duration after approval.|
|createdBy|String|Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|String|The description of the policy.|
|displayName|String|The display name of the policy.|
|durationInDays|Int32|The number of days in which assignments from this policy last until they are expired.|
|expirationDateTime|DateTimeOffset|The expiration date for assignments created in this policy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|isDenyPolicy|Boolean|If true, the policy will not permit access. Read only.|
|modifiedBy|String|Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|requestApprovalSettings|`approvalSettings`|Who must approve requests for access package in this policy. See below for more information on this type.|
|requestorSettings|`requestorSettings`|Who can request this access package from this policy. See below for more information on this type.|



## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackage|[accessPackage](accesspackage.md)| The access package with this policy. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "id": "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
    "accessPackageId": "1b153a13-76da-4d07-9afa-c6c2b1f2e824",
    "displayName": "All Users",
    "description": "All users can request for access to the directory.",
    "isDenyPolicy": false,
    "canExtend": false,
    "durationInDays": 365,
    "requestorSettings" : {
      "scopeType": "AllExistingDirectorySubjects",
      "acceptRequests": true,
      "allowedRequestors": []
    },
    "requestApprovalSettings" : {
      "isApprovalRequired": false,
      "isApprovalRequiredForExtension": false,
      "isRequestorJustificationRequired": false,
      "approvalMode": "NoApproval",
      "approvalStages": []
    },
    "accessReviewSettings" : null
}
```

## The requestorSettings type

The `requestorSettings` type, used for the `requestorSettings` property of an access package assignment policy, provides additional settings to select who can create a request.  This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| scopeType |String |Who can request. One of `NoSubjects`, `SpecificDirectorySubjects`, `SpecificConnectedOrganizationSubjects`, `AllExistingConnectedOrganizationSubjects`, `AllExistingDirectoryMemberUsers` or `AllExistingDirectorySubjects`.  |
| acceptRequests | Boolean | Whether new requests are accepted on this policy. |
| allowedRequestors | collection of `singleUser`, `groupMembers`, or `connectedOrganizationMembers` | The users who are allowed to request on this policy. |

### JSON representation


The following is a JSON representation of the requestor settings property of a policy, which allows the members of a group to request.


```json
"requestorSettings": {
  "scopeType": "SpecificDirectorySubjects",
  "acceptRequests": true,
  "allowedRequestors": [
       {
         "@odata.type": "#microsoft.graph.groupMembers",
         "isBackup": false,
         "id": "string (identifier)",
         "description": "Authorized requestors"
       }
   ]
}
```

## The approvalSettings type

The `approvalSettings` type, used for the `requestApprovalSettings` property of an access package assignment policy, provides additional settings to select who must approve each request.  This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isApprovalRequired | Boolean | If false, then approval is not required for requests in this policy. |
| isApprovalRequiredForExtension | Boolean| If false, then approval is not required for a user who already has an assignment to extend their assignment. |
| isRequestorJustificationRequired | Boolean | Whether the requestor is required to supply a justification in their request. |
| approvalMode| String | One of `NoApproval`, `SingleStage` or `Serial`. The `NoApproval` is used when `isApprovalRequired` is false. |
| approvalStages | collection of 0, 1 or 2 `approvalStage`| If approval is required, these define each of the stages of approval. |

### JSON representation

The following is a JSON representation of the request approval settings property of a policy which has two stages of approval.

```json
"requestApprovalSettings": {
    "isApprovalRequired": true,
    "isApprovalRequiredForExtension": false,
    "isRequestorJustificationRequired": true,
    "approvalMode": "Serial",
    "approvalStages": [
        {
            "approvalStageTimeOutInDays": 14,
            "isApproverJustificationRequired": true,
            "isEscalationEnabled": true,
            "escalationTimeInMinutes": 11520,
            "primaryApprovers": [
                {
                    "@odata.type": "#microsoft.graph.groupMembers",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Fallback group of users in case the connected org of a requestor does not have an external sponsor"
                },
                {
                    "@odata.type": "#microsoft.graph.externalSponsors",
                    "isBackup": false
                }
            ],
            "escalationApprovers": [
                {
                    "@odata.type": "#microsoft.graph.singleUser",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Escalation approver in case the external sponsor does not respond"
                }
            ]
        },
        {
            "approvalStageTimeOutInDays": 14,
            "isApproverJustificationRequired": true,
            "isEscalationEnabled": true,
            "escalationTimeInMinutes": 11520,
            "primaryApprovers": [
                {
                    "@odata.type": "#microsoft.graph.groupMembers",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Fallback group of users in case the connected org of a requestor does not have an internal sponsor"
                },
                {
                    "@odata.type": "#microsoft.graph.internalSponsors",
                    "isBackup": false
                }
            ],
            "escalationApprovers": [
                {
                    "@odata.type": "#microsoft.graph.singleUser",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Escalation approver in case the internal sponsor does not respond"
                }
            ]
        }
    ]
}
```

## The approvalStage type

The `approvalStage` type, used for the `approvalStages` property of approval settings, specifies the primary, fallback and escalation approvers of each state. This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| approvalStageTimeOutInDays |Int32 | The number of days that a request can be pending a response before it is automatically denied. |
| isApproverJustificationRequired |Boolean | Is the approver required to provide a justification for approving a request. |
| isEscalationEnabled |Boolean | If true, then one or more escalation approvers are configured in this approval stage. |
| escalationTimeInMinutes |Int32 | If escalation is required, the time a request can be pending a response from a primary approver. |
| primaryApprovers |collection of `singleUser`, `groupMembers`, `manager`, `internalSponsor` and `externalSponsor` | The users who will be asked to approve requests. |
| escalationApprovers |collection of `singleUser`, `groupMembers`, `manager`, `internalSponsor` and `externalSponsor` | If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. |

## The assignmentReviewSettings type

The `assignmentReviewSettings` type, used for the `accessReviewSettings` property of an access package assignment policy, provides additional settings to select who must review access package assignments from this policy, and how often they must be reviewed.  This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isEnabled| Boolean | If true, access reviews are required for assignments from this policy. |
| recurrenceType | String | The interval for recurrence, such as `monthly` or `quarterly`. |
| reviewerType | String | Who should be asked to do the review, either `Self` or `Reviewers`. |
| startDateTime | DateTimeOffset | When the first review should start. |
| durationInDays | Int32 | The number of days to allow input from reviewers.|
| reviewers | collection of `singleUser` and `groupMembers`| If the reviewerType is `Reviewers`, this collection specifies the users who will be reviewers, either by id or as members of a group. |

## The singleUser type

The singleUser type is used to identify a specific user in the tenant who will be allowed as a requestor, approver or reviewer.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.singleUser`". |
| id |String | The id of the user in Azure AD. |
| description |String | The name of the user in Azure AD. Read only. |
| isBackup | Boolean | For a singleUser in an approval stage, this property indicates that the user is a backup fallback approver. |

## The groupMembers type

The groupMembers type is used to identify a collection of users in the tenant who will be allowed as requestor, approver or reviewer.  The users are members of a specific group.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.groupMembers`". |
| id |String | The id of the group in Azure AD. |
| description |String | The name of the group in Azure AD. Read only. |
| isBackup | Boolean | For a groupMembers in an approval stage, this property indicates that the group members are a backup fallback approver. |

## The connectedOrganizationMembers type

The connectedOrganizationMembers type is used to identify a collection of users in the tenant who will be allowed as requestor, approver or reviewer.  The users are those who are associated with a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
|`@odata.type` | String | The value "`#microsoft.graph.connectedOrganizationMembers`". |
| id |String | The id of the connected organization in entitlement management. |
| description |String | The name of the connected organization. Read only. |
| isBackup | Boolean | Not used at present. |

## The manager type

The groupMembers type is used in an approval stage to indicate that a requesting user's manager is to be the approver.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.manager`". |
| isBackup | Boolean | For a manager in an approval stage, this property indicates that the manager is a backup fallback approver. |

## The internalSponsors type

The internalSponsors type is used in an approval stage to indicate that a requesting user's connected organization internal sponsor is to be the approver.  This approver is only applicable to requests from users who are part of a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |

## The externalSponsors type

The externalSponsors type is used in an approval stage to indicate that a requesting user's connected organization external sponsor is to be the approver. This approver is only applicable to requests from users who are part of a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
