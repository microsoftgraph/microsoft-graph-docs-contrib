---
title: "Get inactiveServerlessFunctionFinding"
description: "Read the properties and relationships of inactive serverless functions in your AWS, Azure, and GCP environments."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# Get inactiveServerlessFunctionFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveServerlessFunctionFinding](../resources/inactiveserverlessfunctionfinding.md) in your AWS, Azure, and GCP environments.


## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).
 
<!-- { "blockType": "permissions", "name": "inactiveserverlessfunctionfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactiveserverlessfunctionfinding-get-permissions.md)]

## HTTP request

Get AWS inactive serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.inactiveServerlessFunctionFinding
```

Get Azure inactive serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.inactiveServerlessFunctionFinding
```

Get GCP inactive serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.inactiveServerlessFunctionFinding
```

## Optional query parameters
This method does not support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [inactiveServerlessFunctionFinding](../resources/inactiveserverlessfunctionfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_inactiveserverlessfunctionfinding"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxJbmFjdGl2ZVNlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNTA2MjM/microsoft.graph.inactiveServerlessFunctionFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-inactiveserverlessfunctionfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveServerlessFunctionFinding"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding/$entity",
    "id": "MSxJbmFjdGl2ZVNlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNTA2MjM",
    "createdDateTime": "2023-10-17T19:48:35.103271Z",
    "actionSummary": {
        "assigned": 99,
        "exercised": 0,
        "available": 10542
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 1
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsLambda",
        "id": "YXJuOmF3czpsYW1iZGE6dXMtZWFzdC0xOjM3NzU5NjEzMTc3NDpmdW5jdGlvbjpUZXN0RnVuY3Rpb24x",
        "externalId": "arn:aws:lambda:us-east-1:377596131774:function:TestFunction1",
        "displayName": "TestFunction1",
        "source": {
            "@odata.type": "#microsoft.graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "377596131774"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
            "authorizationSystemId": "377596131774",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "aws",
            "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
        }
    }
}
```

