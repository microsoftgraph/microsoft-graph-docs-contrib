---
title: "Update accessPackageAssignmentPolicy"
description: "Update the properties of an accessPackageAssignmentPolicy object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/14/2024
---

# Update accessPackageAssignmentPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object to change one or more of its properties, such as the display name or description.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageassignmentpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageassignmentpolicy-update-permissions.md)]

[!INCLUDE [rbac-entitlement-access-package-manager-write](../includes/rbac-for-apis/rbac-entitlement-management-access-package-manager-apis-write.md)]


## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/{accessPackageAssignmentPolicyId}
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.

The following table shows the properties that are required when you update an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|accessPackageId|String|Identifier of the access package. Required. |
|displayName|String|The display name of the policy. Required.|
|description|String|The description of the policy. Required.|
|canExtend|Boolean|Indicates whether a user can extend the access package assignment duration after approval. Required.|
|durationInDays|Int32|The number of days in which assignments from this policy last until they're expired. Required.|
|expirationDateTime|DateTimeOffset|The expiration date for assignments created in this policy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required.|
|requestorSettings|[requestorSettings](../resources/requestorsettings.md)|Users eligible to request this access package from this policy. Required.|
|requestApprovalSettings|[approvalSettings](../resources/approvalsettings.md)|Who must approve requests for access package in this policy. Required.|
|accessReviewSettings|[assignmentReviewSettings](../resources/assignmentreviewsettings.md)|Who must review, and how often, the assignments to the access package from this policy. This property is null if reviews aren't required. Required.|
|accessPackageNotificationSettings|[accessPackageNotificationSettings](../resources/accesspackagenotificationsettings.md)|Represents the settings for email notifications for requests to an access package.|


## Response
If successful, this method returns a `200 OK` response code and an updated [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object in the response body.


## Examples

### Example 1: Update the details of a policy

#### Request

The following example shows the request.
In this policy update, one of the options for the multiple choice question was removed. Future requestors no longer have the removed option available to them.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy"
}
-->
``` http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/b2eba9a1-b357-42ee-83a8-336522ed6cbf
Content-Type: application/json

{
    "id": "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
    "accessPackageId": "4c02f928-7752-49aa-8fc8-e286d973a965",
    "displayName": "All Users",
    "description": "All users can request for access to the directory.",
    "canExtend": false,
    "durationInDays": 365,
    "expirationDateTime": null,
    "requestorSettings": {
        "scopeType": "AllExistingConnectedOrganizationSubjects",
        "acceptRequests": true,
        "allowedRequestors": []
    },
    "requestApprovalSettings": {
        "isApprovalRequired": true,
        "isApprovalRequiredForExtension": false,
        "isRequestorJustificationRequired": true,
        "approvalMode": "SingleStage",
        "approvalStages": [{
                "approvalStageTimeOutInDays": 14,
                "isApproverJustificationRequired": true,
                "isEscalationEnabled": false,
                "escalationTimeInMinutes": 11520,
                "primaryApprovers": [{
                        "@odata.type": "#microsoft.graph.groupMembers",
                        "isBackup": true,
                        "id": "d2dcb9a1-a445-42ee-83a8-476522ed6cbf",
                        "description": "group for users from connected organizations which have no external sponsor"
                    },
                    {
                        "@odata.type": "#microsoft.graph.externalSponsors",
                        "isBackup": false
                    }
                ]
            }
        ]
    },
    "questions": [{
        "isRequired": false,
        "text": {
            "defaultText": "what state are you from?",
            "localizedTexts": [{
                "text": "¿De qué estado eres?",
                "languageCode": "es"
            }]
        },
        "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
        "choices": [{
            "actualValue": "AZ",
            "displayValue": {
                "localizedTexts": [{
                    "text": "Arizona",
                    "languageCode": "es"
                }]
            }
        }, {
            "actualValue": "CA",
            "displayValue": {
                "localizedTexts": [{
                    "text": "California",
                    "languageCode": "es"
                }]
            }
        }],
        "allowsMultipleSelection": false
    }, {
        "isRequired": false,
        "text": {
            "defaultText": "Who is your manager?",
            "localizedTexts": [{
                "text": "por qué necesita acceso a este paquete",
                "languageCode": "es"
            }]
        },
        "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
        "isSingleLineQuestion": false
    }]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accesspackageassignmentpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
    "accessPackageId": "4c02f928-7752-49aa-8fc8-e286d973a965",
    "displayName": "Users from connected organizations can request",
    "description": "Allow users from configured connected organizations to request and be approved by their sponsors",
    "questions": [{
        "id" : "BD3F6B95-458D-4BC8-A9A6-8D4B29F64F3D",
        "isRequired": false,
        "text": {
            "defaultText": "what state are you from?",
            "localizedTexts": [{
                "text": "¿De qué estado eres?",
                "languageCode": "es"
            }]
        },
        "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
        "choices": [{
            "actualValue": "AZ",
            "displayValue": {
                "localizedTexts": [{
                    "text": "Arizona",
                    "languageCode": "es"
                }]
            }
        }, {
            "actualValue": "CA",
            "displayValue": {
                "localizedTexts": [{
                    "text": "California",
                    "languageCode": "es"
                }]
            }
        }, {
            "actualValue": "OH",
            "displayValue": {
                "localizedTexts": [{
                    "text": "Ohio",
                    "languageCode": "es"
                }]
            }
        }],
        "allowsMultipleSelection": false
    }, {
        "id" : "F652C13C-A660-4E4C-A1E0-CE9FEC6EE57A",
        "isRequired": false,
        "text": {
            "defaultText": "Who is your manager?",
            "localizedTexts": [{
                "text": "por qué necesita acceso a este paquete",
                "languageCode": "es"
            }]
        },
        "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
        "isSingleLineQuestion": false
    }]
}
```



### Example 2: Remove the customExtensionHandlers and verifiableCredentialSettings from a policy

To remove the collection of **customExtensionHandlers** and their associated custom workflow extension objects from a policy, assign an empty collection to the **customExtensionHandlers** object.

To remove the verifiable credentials requirement from a policy, assign an empty collection to the **verifiableCredentialSettings** object.


#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy_delete_customExtensionHandlers"
}
-->

```http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197
Content-Type: application/json

{
    "id": "4540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "policy with custom access package workflow extension",
    "description": "Run specified custom access package workflow extension at different stages.",
    "accessPackageId": "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null,
    "customExtensionHandlers": []
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-delete-customextensionhandlers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accesspackageassignmentpolicy-delete-customextensionhandlers-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentpolicy-delete-customextensionhandlers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-delete-customextensionhandlers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-delete-customextensionhandlers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-delete-customextensionhandlers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-delete-customextensionhandlers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-delete-customextensionhandlers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "4540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "policy with custom access package workflow extension",
    "description": "Run specified custom access package workflow extension at different stages.",
    "accessPackageId": "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null
}
```

### Example 3: Remove the customExtensionStageSettings from a policy

To remove the collection of **customExtensionStageSettings** and their associated custom workflow extension objects from a policy, assign an empty collection to the **customExtensionStageSettings** object. 

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy_delete_customExtensionStageSettings"
}
-->

```http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197
Content-Type: application/json

{
    "id": "5540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "policy with access package custom workflow extension",
    "description": "Run specified access package custom workflow extension at different stages.",
    "accessPackageId": "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null,
    "customExtensionHandlers": []
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-delete-customextensionstagesettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "4540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "policy with access package custom workflow extension",
    "description": "Run specified access package custom workflow extension at different stages.",
    "accessPackageId": "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Update accessPackageAssignmentPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


### Example 4: Update the customExtensionStageSettings for a policy

The following example shows how to update a policy to include a custom extension.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackageassignmentpolicy_updating_customExtensionStageSettings"
}
-->

```http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/f9afd2e3-7486-40df-9c35-aa2ae108c495
Content-Type: application/json

{
    "displayName": "API Created policy with updated customExtensionStageSettings",
    "description": "policy with updated customExtensionStageSettings",
    "allowedTargetScope": "notSpecified",
    "specificAllowedTargets": [],
    "expiration": {
        "endDateTime": null,
        "duration": null,
        "type": "noExpiration"
    },
    "requestorSettings": {
        "enableTargetsToSelfAddAccess": false,
        "enableTargetsToSelfUpdateAccess": false,
        "enableTargetsToSelfRemoveAccess": false,
        "allowCustomAssignmentSchedule": true,
        "enableOnBehalfRequestorsToAddAccess": false,
        "enableOnBehalfRequestorsToUpdateAccess": false,
        "enableOnBehalfRequestorsToRemoveAccess": false,
        "onBehalfRequestors": []
    },
    "requestApprovalSettings": {
        "isApprovalRequiredForAdd": false,
        "isApprovalRequiredForUpdate": false,
        "stages": []
    },
    "accessPackage": {
        "id": "f9afd2e3-7486-40df-9c35-aa2ae108c495"
    },
    "customExtensionStageSettings": [
        {
            "stage": "assignmentRequestCreated",
            "customExtension": {
                "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
                "id": "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"
            }
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackageassignmentpolicy-updating-customextensionstagesettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "4540a08f-8ab5-43f6-a923-015275799197",
    "displayName": "API Created policy with updated customExtensionStageSettings",
    "description": "policy with updated customExtensionStageSettings",
    "accessPackageId": "f9afd2e3-7486-40df-9c35-aa2ae108c495",
    "expiration": {
        "type": "afterDuration",
        "duration": "P365D"
    },
    "requestApprovalSettings": null,
    "requestorSettings": {
        "acceptRequests": true,
        "scopeType": "AllExistingDirectorySubjects",
        "allowedRequestors": []
    },
    "accessReviewSettings": null,
    "customExtensionStageSettings": [
        {
            "stage": "assignmentRequestCreated",
            "customExtension": {
                "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
                "id": "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"
            }
        }
    ]
}
```
