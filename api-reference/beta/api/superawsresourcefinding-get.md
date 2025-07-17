---
title: "Get superAwsResourceFinding"
description: "Read the properties and relationships of a superAwsResourceFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 04/18/2024
---

# Get superAwsResourceFinding

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Read the properties and relationships of a [superAwsResourceFinding](../resources/superawsresourcefinding.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "superawsresourcefinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/superawsresourcefinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.superAwsResourceFinding
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

If successful, this method returns a `200 OK` response code and a [superAwsResourceFinding](../resources/superawsresourcefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_superawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/c3VwZXJSZXNvdXJjZUZpbmRpbmc0/microsoft.graph.superAwsResourceFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-superawsresourcefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.superAwsResourceFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.superAwsResourceFinding",
  "value": [
    {
      "@odata.type": "graph.superAwsResourceFinding",
      "id": "c3VwZXJSZXNvdXJjZUZpbmRpbmc0",
      "identity": {
          "@odata.type": "graph.awsEc2Instance",
          "id":"YXJuOmF3czplYzI6dXMtd2VzdC0xOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTA5MWM5OTAyMDc0NTY5ZDc0",
          "externalId": "arn:aws:ec2:us-west-1:377596131774:instance/i-091c9902074569d74",
          "displayName": "do not terminate* parag_notion_ubuntu",
          "source": {
            "@odata.type": "graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "377596131774"
          },
          "authorizationSystem": {
            "@odata.type": "graph.awsAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "377596131774",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "aws"
          }
      },
      "actionSummary": {
        "assigned": 170,
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
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2018-04-12T20:34:24Z",
        "lastActiveDateTime": "2018-10-30T03:21:05Z"
      }
    }
  ]
}
```


