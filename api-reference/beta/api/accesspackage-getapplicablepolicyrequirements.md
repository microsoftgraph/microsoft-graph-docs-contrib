---
title: "accessPackage: getApplicablePolicyRequirements"
description: "Allow callers to find requirements to request an assignment for a specific accessPackage."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: apiPageType
---

# accessPackage: getApplicablePolicyRequirements
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), this action retrieves a list of [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) objects that the currently signed-in user can use to create an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md).  Each requirement object corresponds to an access package assignment policy that the currently signed-in user is allowed to request an assignment for.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method if you wish to retrieve a list of access package requirements as in example 1. If you want to get policy requirements for user scope as in example 2, you must supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) collection in the response body, one object for each policy for which the user is an **allowedRequestor**. If there is a policy with no requirements, the **accessPackageAssignmentRequestRequirements** will have `false` and `null` values. If there are no policies where the user is an **allowedRequestor**, an empty collection will be returned instead.

## Examples

### Example 1: Retrieve a list of access package requirements to create an access package

#### Request

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

---

#### Response
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["b15419bb-5ffc-ea11-b207-c8d9d21f4e9a"],
  "name": "get_req_for_given_user"
}-->

```http
POST /identityGovernance/entitlementManagement/accessPackages/b15419bb-5ffc-ea11-b207-c8d9d21f4e9a/getApplicablePolicyRequirements

{
        "subject": {
            "objectId": "5acd375c-8acb-45de-a958-fa0dd89259ad"
        }
    }
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-req-for-given-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-req-for-given-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-req-for-given-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-req-for-given-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



#### Response

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
