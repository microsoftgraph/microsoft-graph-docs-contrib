---
title: "Get inactiveAwsResourceFinding"
description: "Read the properties and relationships of an inactiveAwsResourceFinding object, representing an inactive AWS resource."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get inactiveAwsResourceFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveAwsResourceFinding](../resources/inactiveawsresourcefinding.md) object, representing an inactive AWS resource.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactiveawsresourcefinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactiveawsresourcefinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.inactiveAwsResourceFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [inactiveAwsResourceFinding](../resources/inactiveawsresourcefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_inactiveawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxJbmFjdGl2ZUF3c1Jlc291cmNlRmluZGluZywxNDA1Ng/microsoft.graph.inactiveAwsResourceFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-inactiveawsresourcefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveAwsResourceFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveAwsResourceFinding/$entity",
    "id": "MSxJbmFjdGl2ZUF3c1Jlc291cmNlRmluZGluZywxNDA1Ng",
    "createdDateTime": "2023-11-02T17:33:02.447118Z",
    "actionSummary": {
        "assigned": 1553,
        "exercised": 0,
        "available": 9925
    },
    "identityDetails": {
        "createdDateTime": null,
        "lastActiveDateTime": null
    },
    "permissionsCreepIndex": {
        "score": 1
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsEc2Instance",
        "id": "YXJuOmF3czplYzI6dXMtZWFzdC0yOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTBhZmEwOTdiMjIzZjRjOTQ5",
        "externalId": "arn:aws:ec2:us-east-2:377596131774:instance/i-0afa097b223f4c949",
        "displayName": "automation-ec2",
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

