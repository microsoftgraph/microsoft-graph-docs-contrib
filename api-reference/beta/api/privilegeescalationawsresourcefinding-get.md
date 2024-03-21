---
title: "Get privilegeEscalationAwsResourceFinding"
description: "Read the properties and relationships of a privilegeEscalationAwsResourceFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get privilegeEscalationAwsResourceFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegeEscalationAwsResourceFinding](../resources/privilegeescalationawsresourcefinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegeescalationawsresourcefinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegeescalationawsresourcefinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.privilegeEscalationAwsResourceFinding
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

If successful, this method returns a `200 OK` response code and a [privilegeEscalationAwsResourceFinding](../resources/privilegeescalationawsresourcefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_privilegeescalationawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/cHJpdmlsZWdlRXNjYWxhdGlvblJlc291cmNlRmluZGluZzEwMDAx/microsoft.graph.privilegeEscalationAwsResourceFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-privilegeescalationawsresourcefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegeEscalationAwsResourceFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.privilegeEscalationAwsResourceFinding",
  "value": [
    {
      "@odata.type": "graph.privilegeEscalationAwsResourceFinding",
      "id": "cHJpdmlsZWdlRXNjYWxhdGlvblJlc291cmNlRmluZGluZzEwMDAx",
      "identity": {
        "@odata.type": "graph.awsEc2Instance",
        "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTAxNTAzYTZhYjA0ODZlZmU1",
        "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-01503a6ab0486efe5",
        "displayName": "prat-cnx-user-test3",
        "source": {
          "@odata.type": "graph.awsSource",
          "identityProviderType": "aws",
          "accountId": "956987887735"
        },
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "956987887735",
          "authorizationSystemName": "cloudknox-development",
          "authorizationSystemType": "aws"
        }
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "permissionsCreepIndex": {
        "score": 99
      },
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.privilegeEscalationAwsResourceFinding?$skiptoken=foobar"
}
```

