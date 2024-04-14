---
title: "Create accessPackageAssignmentRequest"
description: "Create a new accessPackageAssignmentRequest."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---
# Create accessPackageAssignmentRequest

Namespace: microsoft.graph

In [Microsoft Entra Entitlement Management](../resources/entitlementmanagement-overview.md), create a new [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object.  This operation is used to assign a user to an access package, update the assignment, or to remove an access package assignment.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_post_assignmentrequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-post-assignmentrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/assignmentRequests
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object.

For an administrator to request to create an assignment for a user, the value of the **requestType** property is `adminAdd`, and the **assignment** property contains the `targetId` of the user being assigned, the **assignmentPolicyId** property identifying the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md), and the **accessPackageId** property identifying the [accessPackage](../resources/accesspackage.md).

For an administrator to request to update an assignment (for example to extend the assignment or update answers to questions), the value of the **requestType** property is `adminUpdate`, and the **assignment** property contains the **id** property identifying the [accessPackageAssignment](../resources/accesspackageassignment.md) being updated.

For an administrator to request to remove an assignment, the value of the **requestType** property is `adminRemove`, and the **assignment** property contains the **id** property identifying the [accessPackageAssignment](../resources/accesspackageassignment.md) being removed.

For a non-administrator user to request to create their own assignment for either a first assignment or renew assignment, the value of the **requestType** property is `userAdd`. The **assignment** property contains an object with the `targetId` with the `id` of the user. The **assignmentPolicyId** property identifies the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). The **accessPackageId** property identifies the [accessPackage](../resources/accesspackage.md). The user making the request must already exist in the directory.

For a non-administrator user to request to update their own assignments, the value of the **requestType** property is `userUpdate`. The **assignment** property contains the `targetId` with the `id` of the users. The **assignmentPolicyId** property identifies the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). The **accessPackageId** property identifies the [accessPackage](../resources/accesspackage.md). The user making the request must already exist in the directory.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object in the response body.

If this is an `adminAdd` request, then subsequently an [accessPackageAssignment](../resources/accesspackageassignment.md) and, if needed, an [accessPackageSubject](../resources/accesspackagesubject.md) are also created. You can locate those using the query parameters when [listing accessPackageAssignments](entitlementmanagement-list-assignments.md).

## Examples

### Example 1: Admin requests a direct assignment for a user already in the directory

#### Request

The following example shows a request for a direct assignment, in which the administrator requests the creation of an assignment for a user. Because the [accessPackageSubject](../resources/accesspackagesubject.md) might not yet exist, the value of the **targetID** is the object ID of the user being assigned, the value of the **accessPackageId** is the desired access package for that user, and the value of **assignmentPolicyId** is a direct assignment policy in that access package.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_alreadyindir"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
  "requestType": "adminAdd",
  "assignment":{
     "targetId":"46184453-e63b-4f20-86c2-c557ed5d5df9",
     "assignmentPolicyId":"2264bf65-76ba-417b-a27d-54d291f0cbc8",
     "accessPackageId":"a914b616-e04e-476b-aa37-91038f0b165b"
  }
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{

  "id": "46184453-e63b-4f20-86c2-c557ed5d5df9",
  "requestType": "adminAdd",
  "requestState": "Submitted",
  "requestStatus": "Accepted"
}
```

### Example 2: Remove an assignment

To remove assignments, create a new **accessPackageAssignmentRequest** object with the following settings:

* The value of the **requestType** property set to `adminRemove`.
* In the assignment property, include an object with the identifier of the **accessPackageAssignment** object to delete.

#### Request

The following example shows how to remove an assignment.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_forID"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "requestType": "adminRemove",
    "assignment":{
     "id": "a6bb6942-3ae1-4259-9908-0133aaee9377"
    }
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#accessPackageAssignmentRequests/$entity",
    "id": "78eaee8c-e6cf-48c9-8f99-aae44c35e379",
    "requestType": "adminRemove",
    "requestState": "Submitted",
    "requestStatus": "Accepted"
}
```

### Example 3: Request an assignment by providing answers to questions

The following example shows how a user can request an access package assignment for themselves by answering questions required by the policy during the request process.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_requestor_answer_approver"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
    "requestType": "userAdd",
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "displayValue": "This is the answer to a multiple choice question",
            "value": "MultipleChoiceAnswerValue",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                "id": "8fe745e7-80b2-490d-bd22-4e708c77288c"
            }
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "This is my answer to a text input question.",
            "displayValue": "This is my answer.",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "id": "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
            }
        }
    ],
    "assignment": {
        "accessPackageId": "977c7ff4-ef8f-4910-9d31-49048ddf3120"
    }
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#accessPackageAssignmentRequests/$entity",
    "id": "7a6ab703-0780-4b37-8445-81f679b2d75c",
    "requestType": "userAdd",
    "state": "submitted",
    "status": "Accepted",
    "createdDateTime": null,
    "completedDateTime": null,
    "schedule": {
        "startDateTime": null,
        "recurrence": null,
        "expiration": {
            "endDateTime": null,
            "duration": null,
            "type": "notSpecified"
        }
    },
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "MultipleChoiceAnswerValue",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                "id": "8fe745e7-80b2-490d-bd22-4e708c77288c"   
            },
            "displayValue": "This is the answer to a multiple choice question"
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "This is my answer to a text input question.",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "id": "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
            },
            "displayValue": "This is my answer."
        }
    ]
}
```

### Example 4: Request a package and provide a justification

#### Request

The following example shows how to request an access package and provide justification to the approver.

<!-- {
  "blockType": "request",
  "name": "create_assignmentrequests_from_assignmentrequests_justification_provided"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "requestType": "UserAdd",
    "accessPackageAssignment": {
        "accessPackageId": "a914b616-e04e-476b-aa37-91038f0b165b"
    },
    "justification":"Need access to New Hire access package"
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/assignmentRequests/$entity",
    "id": "9c1e258d-7723-43b1-ae21-e6eeeb324fe5",
    "requestType": "UserAdd",
    "requestState": "Submitted",
    "requestStatus": "Accepted",
    "createdDateTime": null,
    "completedDate": null,
    "justification": "Need access to New Hire access package",
    "isValidationOnly": false,
    "schedule": {
        "startDateTime": null,
        "recurrence": null,
        "expiration": {
            "endDateTime": null,
            "duration": null,
            "type": "notSpecified"
        }
    },
    "answers": [],
    "verifiedCredentialsData": []
}
```

### Example 5: Admin requests a direct assignment for a user not yet in the directory

#### Request

The following example shows a request for a direct assignment, in which the administrator requests the creation of an assignment for a user who doesn't exist in the directory. The value of the **accessPackageId** is the desired access package for that user, and the value of **assignmentPolicyId** is a direct assignment policy in that access package.

<!-- {
  "blockType": "request",
  "name": "create_assignmentrequest_from_assignmentrequests_direct_assignment"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
  "requestType": "AdminAdd",
  "accessPackageAssignment":{
     "target": {
        "email": "user@contoso.com"
     },
     "assignmentPolicyId":"2264bf65-76ba-417b-a27d-54d291f0cbc8",
     "accessPackageId":"a914b616-e04e-476b-aa37-91038f0b165b"
  }
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/assignmentRequests/$entity",
    "id": "cb32aef9-2976-496d-9804-eb432fd894a7",
    "requestType": "AdminAdd",
    "requestState": "Submitted",
    "requestStatus": "Accepted",
    "createdDateTime": null,
    "completedDate": null,
    "justification": null,
    "isValidationOnly": false,
    "schedule": {
        "startDateTime": null,
        "recurrence": null,
        "expiration": {
            "endDateTime": null,
            "duration": null,
            "type": "notSpecified"
        }
    },
    "answers": [],
    "verifiedCredentialsData": [],
    "customExtensionHandlerInstances": [],
    "customExtensionCalloutInstances": []
}
```

### Example 6: Request an update to answers for an assignment

The following example shows how an admin can request updates to an assignment to edit their responses to questions that were answered during the request for the assignment.

#### Request

<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentrequest_from_assignmentrequests_requestor_answer_to_approver"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
    "id": "7a6ab703-0780-4b37-8445-81f679b2d75c",
    "requestType": "adminUpdate",
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "UpdatedAnswerValue",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                "id": "8fe745e7-80b2-490d-bd22-4e708c77288c"
            }
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "My updated answer.",
            "displayValue": "This is my updated answer to the question.",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "id": "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
            }
        }
    ],
    "assignment": {
        "id": "44c741c1-2cf4-40db-83b6-e0112f8e5a83"
    }
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#accessPackageAssignmentRequests/$entity",
    "id": "0c471116-e439-40a6-8441-fe739dd48dab",
    "requestType": "adminUpdate",
    "state": "submitted",
    "status": "Accepted",
    "createdDateTime": null,
    "completedDateTime": null,
    "schedule": {
        "startDateTime": null,
        "recurrence": null,
        "expiration": {
            "endDateTime": null,
            "duration": null,
            "type": "notSpecified"
        }
    },
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "UpdatedAnswerValue",
            "displayValue": "This is the answer to a multiple choice question",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                "id": "8fe745e7-80b2-490d-bd22-4e708c77288c"   
            }         
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "My updated answer.",
            "displayValue": "This is my updated answer to the question.",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "id": "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
            }
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create accessPackageAssignmentRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
