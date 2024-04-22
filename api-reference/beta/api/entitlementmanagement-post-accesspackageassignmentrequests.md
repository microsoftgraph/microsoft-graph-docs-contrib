---
title: "Create accessPackageAssignmentRequest"
description: "Create a new accessPackageAssignmentRequest."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
---

# Create accessPackageAssignmentRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](../resources/entitlementmanagement-overview.md), create a new [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object.  This operation is used to assign a user to an access package, or to remove an access package assignment.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_post_accesspackageassignmentrequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-post-accesspackageassignmentrequests-permissions.md)]

## HTTP request

> [!NOTE]
> This API will be retired soon. Use the [Post assignmentRequests](../api/entitlementmanagement-post-assignmentrequests.md) API instead.

<!-- { "blockType": "ignored" } -->

```http
POST /identityGovernance/entitlementManagement/accessPackageAssignmentRequests
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object.

For an administrator to request to create an assignment for a user, the value of the **requestType** property is `AdminAdd`, and the **accessPackageAssignment** property contains the `targetId` of the user being assigned, the **assignmentPolicyId** property identifying the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md), and the **accessPackageId** property identifying the [accessPackage](../resources/accesspackage.md).

For an administrator to request to remove an assignment, the value of the **requestType** property is `AdminRemove`, and the **accessPackageAssignment** property contains the **id** property identifying the [accessPackageAssignment](../resources/accesspackageassignment.md) being removed.

For a non-administrator user to request to create their own assignment for either a first assignment or renew assignment, the value of the **requestType** property is `UserAdd`. The **accessPackageAssignment** property contains the `targetId` with the `id` of the users. The **assignmentPolicyId** property identifies the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). The **accessPackageId** property identifies the [accessPackage](../resources/accesspackage.md). The user making the request must already exist in the directory.

For a non-administrator user to request to extend their own assignments, the value of the **requestType** property is `UserExtend`. The **accessPackageAssignment** property contains the `targetId` with the `id` of the users. The **assignmentPolicyId** property identifies the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). The **accessPackageId** property identifies the [accessPackage](../resources/accesspackage.md). The user making the request must already exist in the directory.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object in the response body.  

If this is an `AdminAdd` request, then subsequently an [accessPackageAssignment](../resources/accesspackageassignment.md) and, if needed, an [accessPackageSubject](../resources/accesspackagesubject.md) are also created. You can locate those using the query parameters when [listing accessPackageAssignments](entitlementmanagement-list-accesspackageassignments.md).

## Examples

### Example 1: Admin requests a direct assignment for a user already in the directory

#### Request

The following example shows a request for a direct assignment, in which the administrator requests the creation of an assignment for a user. Because the [accessPackageSubject](../resources/accesspackagesubject.md) might not yet exist, the value of the **targetID** is the object ID of the user being assigned, the value of the **accessPackageId** is the desired access package for that user, and the value of **assignmentPolicyId** is a direct assignment policy in that access package.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_admin_add"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
Content-type: application/json

{
  "requestType": "AdminAdd",
  "accessPackageAssignment":{
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
  "id": "7e382d02-4454-436b-b700-59c7dd77f466",
  "requestType": "AdminAdd",
  "requestState": "Submitted",
  "requestStatus": "Accepted",
  "isValidationOnly": false
}
```

### Example 2: Remove an assignment

To remove assignments, create a new accessPackageAssignmentRequest object with the following settings:

* The value of the **requestType** property set to `AdminRemove`.
* In the **accessPackageAssignment** property, include an object with the identifier of the **accessPackageAssignment** objects to delete.

#### Request

The following example shows how to remove an assignment.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_remove_assignment"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
Content-type: application/json

{
    "requestType": "AdminRemove",
    "accessPackageAssignment":{
     "id": "a6bb6942-3ae1-4259-9908-0133aaee9377"
    }
}
```

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignmentRequests/$entity",

    "id": "78eaee8c-e6cf-48c9-8f99-aae44c35e379",
    "requestType": "AdminRemove",
    "requestState": "Submitted",
    "requestStatus": "Accepted"
}
```

### Example 3: Request an assignment by providing answers to questions

The following example shows a request where the requestor provided answers to the approver to help them make their decision.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_requestor_answer_to_approver"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
Content-type: application/json

{
    "requestType": "UserAdd",
    "accessPackageAssignment": {
        "targetId": "46184453-e63b-4f20-86c2-c557ed5d5df9",
        "assignmentPolicyId": "2264bf65-76ba-417b-a27d-54d291f0cbc8",
        "accessPackageId": "a914b616-e04e-476b-aa37-91038f0b165b"
    },
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "Arizona",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                "id": "A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF"
            }
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "Need access to marketing campaign material",
            "answeredQuestion": {
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "id": "AA615EE9-D9D8-4C03-BE91-BEE37106DEDA"
            }
        }
    ]
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
    "id": "7e382d02-4454-436b-b700-59c7dd77f466",
    "requestType": "UserAdd",
    "requestState": "Submitted",
    "requestStatus": "Accepted",
    "isValidationOnly": false,
    "answers": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "Arizona",
            "answeredQuestion": {
                "id": "A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF",
                "isRequired": false,
                "text": {
                    "defaultText": "what state are you from?",
                    "localizedTexts": [
                        {
                            "text": "¿De qué estado eres?",
                            "languageCode": "es"
                        }
                    ]
                },
                "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
                "choices": [
                    {
                        "actualValue": "AZ",
                        "displayValue": {
                            "localizedTexts": [
                                {
                                    "text": "Arizona",
                                    "languageCode": "es"
                                }
                            ]
                        }
                    },
                    {
                        "actualValue": "CA",
                        "displayValue": {
                            "localizedTexts": [
                                {
                                    "text": "California",
                                    "languageCode": "es"
                                }
                            ]
                        }
                    },
                    {
                        "actualValue": "OH",
                        "displayValue": {
                            "localizedTexts": [
                                {
                                    "text": "Ohio",
                                    "languageCode": "es"
                                }
                            ]
                        }
                    }
                ],
                "allowsMultipleSelection": false
            }
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAnswerString",
            "value": "Need access to marketing campaign material",
            "answeredQuestion": {
                "id": "AA615EE9-D9D8-4C03-BE91-BEE37106DEDA",
                "isRequired": false,
                "text": {
                    "defaultText": "Who is your manager?",
                    "localizedTexts": [
                        {
                            "text": "por qué necesita acceso a este paquete",
                            "languageCode": "es"
                        }
                    ]
                },
                "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
                "isSingleLineQuestion": false
            }
        }
    ]
}
```

### Example 4: Request a package and provide a justification

The following example shows how to request an access package and provide justification to the approver.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_justification_provided"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
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
    "id": "813bbc6b-31f5-4cdf-8fed-1ba4284a1e3f",
    "requestType": "UserAdd",
    "requestState": "Submitted",
    "requestStatus": "Accepted",
    "isValidationOnly": false,
    "expirationDateTime": null,
    "justification": "Requested for the new task.",
    "answers": [],
    "schedule": {
        "startDateTime": null,
        "recurrence": null,
        "expiration": {
            "endDateTime": null,
            "duration": null,
            "type": null
        }
    }
}
```

### Example 5: Admin requests a direct assignment for a user not yet in the directory

#### Request

The following example shows a request for a direct assignment, in which the administrator requests the creation of an assignment for a user who doesn't exist in the directory. The value of the **accessPackageId** is the desired access package for that user, and the value of **assignmentPolicyId** is a direct assignment policy in that access package.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageassignmentrequest_from_accesspackageassignmentrequests_direct_assignment"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
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
  "id": "7e382d02-4454-436b-b700-59c7dd77f466",
  "requestType": "AdminAdd",
  "requestState": "Submitted",
  "requestStatus": "Accepted",
  "isValidationOnly": false
}
```

### Example 6: Request an update to answers for an assignment

The following example shows how an admin can request updates to an assignment to edit their responses to questions that were answered during the request for the assignment.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentrequest_from_accesspackageassignmentrequests_requestor_answer_to_approver"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignmentRequests/$entity",
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
