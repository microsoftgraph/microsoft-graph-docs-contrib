---
title: "Create accessPackageAssignmentRequest"
description: "Create a new accessPackageAssignmentRequest."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/15/2024
---
# Create accessPackageAssignmentRequest

Namespace: microsoft.graph

In [Microsoft Entra Entitlement Management](../resources/entitlementmanagement-overview.md), create a new [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object. This operation is used to assign a user to an access package, update the assignment, or to remove an access package assignment.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_post_assignmentrequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-post-assignmentrequests-permissions.md)]

[!INCLUDE [rbac-entitlement-end-user-apis-write](../includes/rbac-for-apis/rbac-entitlement-management-end-user-apis-write.md)]

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

For an administrator to request to create an assignment for a user, the value of the **requestType** property is `adminAdd`, and the **assignment** property contains the **targetId** with the ID of the user being assigned, the **assignmentPolicyId** property identifying the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md), and the **accessPackageId** property identifying the [accessPackage](../resources/accesspackage.md).

For an administrator to request to update an assignment (for example to extend the assignment or update answers to questions), the value of the **requestType** property is `adminUpdate`, and the **assignment** property contains the **id** property identifying the [accessPackageAssignment](../resources/accesspackageassignment.md) being updated.

For an administrator to request to remove an assignment, the value of the **requestType** property is `adminRemove`, and the **assignment** property contains the **id** property identifying the [accessPackageAssignment](../resources/accesspackageassignment.md) being removed.

For a non-administrator user to request to create their own assignment for either a first assignment or to renew an assignment, the value of the **requestType** property is `userAdd`. The **assignment** property contains an object with the `targetId` with the `id` of the user. The **assignmentPolicyId** property identifies the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). The **accessPackageId** property identifies the [accessPackage](../resources/accesspackage.md). The user making the request must already exist in the directory.

For a non-administrator user to request to update their own assignment, the value of the **requestType** property is `userUpdate`. The **assignment** property contains the **ID** property identifying the [accessPackageAssignment](../resources/accesspackageassignment.md) being updated. The **schedule** property contains the updated schedule.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object in the response body.

If this is an `adminAdd` or `userAdd` request, then after any approval checks an [accessPackageAssignment](../resources/accesspackageassignment.md) and, if needed, an [accessPackageSubject](../resources/accesspackagesubject.md) are also created. You can locate those using the query parameters when [listing accessPackageAssignments](entitlementmanagement-list-assignments.md).

## Examples

### Example 1: Admin requests a direct assignment for a user already in the directory

#### Request

The following example shows a request for a direct assignment, in which the administrator requests the creation of an assignment for a user. Because the [accessPackageSubject](../resources/accesspackagesubject.md) might not yet exist, the value of the **targetID** is the object ID of the user being assigned, the value of the **accessPackageId** is the desired access package for that user, and the value of **assignmentPolicyId** is a direct assignment policy in that access package.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-alreadyindir-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
* In the **assignment** property, include an object with the identifier of the **accessPackageAssignment** object to delete.

#### Request

The following example shows how to remove an assignment.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-forid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageassignmentrequest-from-accesspackageassignmentrequests-requestor-answer-approver-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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

The following example shows how to request an access package and provide justification to the approver.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-assignmentrequests-from-assignmentrequests-justification-provided-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-assignmentrequests-from-assignmentrequests-justification-provided-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-assignmentrequests-from-assignmentrequests-justification-provided-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-assignmentrequests-from-assignmentrequests-justification-provided-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-assignmentrequests-from-assignmentrequests-justification-provided-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-assignmentrequests-from-assignmentrequests-justification-provided-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-assignmentrequests-from-assignmentrequests-justification-provided-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_assignmentrequest_from_assignmentrequests_direct_assignment"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
  "requestType": "AdminAdd",
  "assignment":{
     "target": {
        "email": "user@contoso.com"
     },
     "assignmentPolicy":{
        "id": "11114b50-0a08-4f96-83e9-1d714aa2cd79"
     },
     "accessPackage": {
        "id": "11115C72-0612-4C43-A044-FC0A4E71A4C5"
     }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-assignmentrequest-from-assignmentrequests-direct-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-assignmentrequest-from-assignmentrequests-direct-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-assignmentrequest-from-assignmentrequests-direct-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-assignmentrequest-from-assignmentrequests-direct-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-assignmentrequest-from-assignmentrequests-direct-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-assignmentrequest-from-assignmentrequests-direct-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-assignmentrequest-from-assignmentrequests-direct-assignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentrequest_from_assignmentrequests_requestor_answer_to_approver"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentrequest-from-assignmentrequests-requestor-answer-to-approver-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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

### Example 7: Update the expiration date for an access package assignment

The following example shows how to update the expiration date for an access package assignment.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentrequest_expiration_date"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
    "requestType": "adminUpdate",
    "schedule": {
        "startDateTime": "2023-05-23T20:04:02.39Z",
        "recurrence": null,
        "expiration": {
            "endDateTime": "2024-07-01T00:00:00.00Z",
            "duration": null,
            "type": "afterDateTime"
        }
    },
    "assignment": {
        "id": "329f8dac-8062-4c1b-a9b8-39b7132f9bff"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentrequest-expiration-date-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentrequest-expiration-date-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentrequest-expiration-date-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentrequest-expiration-date-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentrequest-expiration-date-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentrequest-expiration-date-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentrequest-expiration-date-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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
    "id": "5b682fbb-d6e5-4118-a471-46dfc553e9cc",
    "requestType": "adminUpdate",
    "state": "submitted",
    "status": "Accepted",
    "createdDateTime": null,
    "completedDateTime": null,
    "schedule": {
        "startDateTime": "2024-06-07T15:53:35.333Z",
        "recurrence": null,
        "expiration": {
            "endDateTime": "2024-07-01T00:00:00Z",
            "duration": null,
            "type": "afterDateTime"
        }
    },
    "answers": [],
    "customExtensionCalloutInstances": []
}
```

### Example 8: Update the answers and expiration date for an access package assignment

The following example shows how a user can update their answers and the expiration date for their access package assignment.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentrequest_expiration_answers"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
    "requestType": "userUpdate",
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "My updated answer.",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "id": "0d31cc60-968e-4f92-955b-443fed03d6f6"
            }
        }

    ],
    "schedule": {
        "startDateTime": "2024-09-18T20:49:16.17Z",
        "recurrence": null,
        "expiration": {
            "endDateTime": "2024-10-18T20:49:15.17Z",
            "duration": null,
            "type": "afterDateTime"
        }
    },
    "assignment": {
        "id": "329f8dac-8062-4c1b-a9b8-39b7132f9bff"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentrequest-expiration-answers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentrequest-expiration-answers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentrequest-expiration-answers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentrequest-expiration-answers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentrequest-expiration-answers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentrequest-expiration-answers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentrequest-expiration-answers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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
    "id": "e0f8458c-7681-42ad-a0b5-0c9587c4dad8",
    "requestType": "userUpdate",
    "state": "submitted",
    "status": "Accepted"
}
```

### Example 9: Request a package on behalf of a direct employee

The following example shows how a manager can request an access package assignment on behalf of their direct employee.

> [!NOTE]
> The requestor (manager) is extracted from the token, and the target object is determined by the `id` of the direct employee who is receiving access.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentrequest_request_behalf"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
Content-type: application/json

{
   "assignment": {
       "accessPackageId": "5b98f958-0dea-4a5b-836e-109dccbd530c",
       "schedule": {
           "startDateTime": null,
           "stopDateTime": null
       },
       "assignmentPolicyId": "c5f7847f-83a8-4315-a754-d94a6f39b875",
       "target": {
           "displayName": "Idris Ibrahim",
           "email": "IdrisIbrahim@woodgrovebank.com",
           "objectId": "21aceaba-fe13-4e3b-aa8c-4c588d5e7387",
           "subjectType": "user"
       }
   },
   "justification": "Access for direct employee",
   "requestType": "UserAdd",
   "answers": []
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentrequest-request-behalf-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentrequest-request-behalf-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentrequest-request-behalf-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentrequest-request-behalf-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentrequest-request-behalf-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentrequest-request-behalf-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentrequest-request-behalf-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

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
    "id": "445a3118-6bf2-4a19-94ad-5660295963fd",
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
    "answers": [],
    "customExtensionCalloutInstances": []
}
```
