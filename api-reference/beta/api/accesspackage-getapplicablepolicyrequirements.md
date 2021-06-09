---
title: getApplicablePolicyRequirements on an accessPackage
description: "allows callers to find requirements to request an assignment for a specific accessPackage."
localization_priority: Normal
author: "ajburnle"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackage: getApplicablePolicyRequirements
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This operation is a way for callers to find what is required to successfully request an assignment for a specific accessPackage. 

> [!NOTE] 
> This operation has no side effects, but because it accepts optional parameters in the POST body, it is configured as an action instead.

## Function parameters

The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
| Post body | microsoft.graph.accessPackage |The access package. |
| Post body | microsoft.graph.accessPackageSubject | The user to evaluate for; if not specified, the user from the token is used instead. |

## Return value

The following table shows the action that can be used to request an assignment for an access package.

|Type|Description|
| :--- | :--- |
| Collection(microsoft.graph.accessPackageAssignmentRequestRequirements) | One for each policy that the user is an `allowedRequestor` for. If there is a policy with no requirements, the `accessPackageAssignmentRequestRequirements` will have false and null values. If there are no policies where the user is an `allowedRequestor`, an empty collection will be returned instead. |

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "accesspackage_getapplicablepolicyrequirements"
}
-->
``` http
GET https://graph.microsoft.com/identitygovernance/entitlementmanagement/accessPackages/fb449cf8-3a59-4d86-bdfd-a1b7299681de/getapplicablepolicyrequirements)
```

### Response
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
            "policyId": "449feb20-7040-499a-ba91-bdfb93ede34b", 
            "policyDisplayName": "Initial Policy", 
            "policyDescription": "Initial Policy", 
            "isApprovalRequired": false, 
            "isApprovalRequiredForExtension": false, 
            "isRequestorJustificationRequired": false, 
            "questions": [], 
            "existingAnswers": [] 
        }
    ]
}
```
