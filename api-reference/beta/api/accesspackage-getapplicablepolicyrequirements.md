---
title: "accessPackage: getApplicablePolicyRequirements"
description: "Allow callers to find requirements to request an assignment for a specific accessPackage."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/05/2024
---

# accessPackage: getApplicablePolicyRequirements
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), this action retrieves a list of [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) objects that the currently signed-in user can use to create an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md).  Each requirement object corresponds to an access package assignment policy that the currently signed-in user is allowed to request an assignment for.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackage_getapplicablepolicyrequirements" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackage-getapplicablepolicyrequirements-permissions.md)]

[!INCLUDE [rbac-entitlement-access-package-manager-write](../includes/rbac-for-apis/rbac-entitlement-management-access-package-manager-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackages/{id}/getApplicablePolicyRequirements
```

## Function parameters

None.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method if you wish to retrieve a list of access package requirements as in example 1. If you want to get policy requirements for user scope as in example 2, you must supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) collection in the response body, one object for each policy for which the user is an **allowedRequestor**. If there's a policy with no requirements, the **accessPackageAssignmentRequestRequirements** has `false` and `null` values. If there are no policies where the user is an **allowedRequestor**, an empty collection is returned instead.

## Examples

### Example 1: Retrieve a list of access package requirements to create an access package

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackage_getapplicablepolicyrequirements"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/fb449cf8-3a59-4d86-bdfd-a1b7299681de/getApplicablePolicyRequirements
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackage-getapplicablepolicyrequirements-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/accesspackage-getapplicablepolicyrequirements-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accesspackage-getapplicablepolicyrequirements-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackage-getapplicablepolicyrequirements-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackage-getapplicablepolicyrequirements-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accesspackage-getapplicablepolicyrequirements-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accesspackage-getapplicablepolicyrequirements-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/accesspackage-getapplicablepolicyrequirements-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequestRequirements)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "policyId": "d6322c23-04d6-eb11-b22b-c8d9d21f4e9a",
            "policyDisplayName": "Initial Policy",
            "policyDescription": "Initial Policy",
            "isApprovalRequired": false,
            "isApprovalRequiredForExtension": false,
            "isRequestorJustificationRequired": false,
            "questions": [
                {
                    "@odata.type": "#microsoft.graph.textInputQuestion",
                    "id": "0fd349e2-a3a7-4712-af08-660f29c12b90",
                    "isRequired": true,
                    "isAnswerEditable": null,
                    "sequence": 0,
                    "isSingleLineQuestion": true,
                    "text": {
                        "defaultText": "What is your display name",
                        "localizedTexts": []
                    }
                }
            ],
            "existingAnswers": [],
            "schedule": []
        }
    ]
}
```

### Example 2: Get policy requirements for a given user scope

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["b15419bb-5ffc-ea11-b207-c8d9d21f4e9a"],
  "name": "get_req_for_given_user"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/b15419bb-5ffc-ea11-b207-c8d9d21f4e9a/getApplicablePolicyRequirements

{
        "subject": {
            "objectId": "5acd375c-8acb-45de-a958-fa0dd89259ad"
        }
    }
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-req-for-given-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-req-for-given-user-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-req-for-given-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-req-for-given-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-req-for-given-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-req-for-given-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-req-for-given-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-req-for-given-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequestRequirements)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "policyId": "d6322c23-04d6-eb11-b22b-c8d9d21f4e9a",
            "policyDisplayName": "Initial Policy",
            "policyDescription": "Initial Policy",
            "isApprovalRequired": false,
            "isApprovalRequiredForExtension": false,
            "isRequestorJustificationRequired": false,
            "questions": [
                {
                    "@odata.type": "#microsoft.graph.textInputQuestion",
                    "id": "5a7f2a8f-b802-4438-bec6-09599bc43e13",
                    "isRequired": false,
                    "isAnswerEditable": true,
                    "sequence": 0,
                    "isSingleLineQuestion": true,
                    "text": {
                        "defaultText": "Enter your mail",
                        "localizedTexts": []
                    }
                }
            ],
            "existingAnswers": [
                {
                    "@odata.type": "#microsoft.graph.answerString",
                    "displayValue": "admin@contoso.com",
                    "value": "admin@contoso.com",
                    "answeredQuestion": {
                        "@odata.type": "#microsoft.graph.textInputQuestion",
                        "id": "5a7f2a8f-b802-4438-bec6-09599bc43e13",
                        "isRequired": false,
                        "isAnswerEditable": true,
                        "sequence": 0,
                        "isSingleLineQuestion": true,
                        "text": {
                            "defaultText": "Enter your mail",
                            "localizedTexts": []
                        }
                    }
                }
            ],
            "schedule": []
        }
    ]
}
```

### Example 3: Get policy requirements for verifiable credential status requirements

#### Request

The following example shows a request.

<!-- { "blockType": "ignored" } -->
```http
POST /identityGovernance/entitlementManagement/accessPackages(‘b15419bb-5ffc-ea11-b207-c8d9d21f4e9a’)/getApplicablePolicyRequirements
```

#### Response

The following example shows the response if it is the first time credentials are requested and the requestor didn't scanned the QR code or clicked the URL.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
        {
            "policyId": "a93f6641-bcba-ec11-9d14-001a7dda7113",
            "policyDisplayName": "VC Policy 1",
            "policyDescription": "VC Policy Description 1",
            "isApprovalRequiredForAdd": false,
            "isApprovalRequiredForUpdate": false,
            "isApprovalRequired": false,
            "isApprovalRequiredForExtension": false,
            "isCustomAssignmentScheduleAllowed": true,
            "allowCustomAssignmentSchedule": true,
            "isRequestorJustificationRequired": false,
            "schedule": {
                "startDateTime": null,
                "duration": "P365D",
                "stopDateTime": null,
                "expiration": {
                "endDateTime": null,
                "duration": "P365D",
                "type": "afterDuration"
                },
                "recurrence": null
            },
            "questions": [],
            "existingAnswers": [],
            "verifiableCredentialRequirementStatus": {
                "@odata.type": "#microsoft.graph.verifiableCredentialRequired",
                "expiryDateTime": "2022-05-10T23:32:47.8232759Z",
                "url": "openid://vc/?request_uri=https://beta.did.msidentity.com/v1.0/87654321-0000-0000-0000-000000000000/verifiablecredentials/request/e4ef27ca-eb8c-4b63-823b-3b95140eac11",
            }
        }
    ]
}
```

If the requestor has scanned the QR code or clicked the URL, the verifiableCredentialRequirementStatus property is in the following format.

```json
"verifiableCredentialRequirementStatus": {
    "@odata.type": "#microsoft.graph.verifiableCredentialRetrieved",
    "expiryDateTime": "2022-05-10T23:32:47.8232759Z"
}
```

If the requestor presented valid credential, the verifiableCredentialRequirementStatus property is in the following format.

```json
"verifiableCredentialRequirementStatus": {
    "@odata.type": "#microsoft.graph.verifiableCredentialVerified"
}
```
