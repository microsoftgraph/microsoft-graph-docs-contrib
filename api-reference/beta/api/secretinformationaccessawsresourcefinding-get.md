---
title: "Get secretInformationAccessAwsResourceFinding"
description: "Read the properties and relationships of a secretInformationAccessAwsResourceFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get secretInformationAccessAwsResourceFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.secretInformationAccessAwsResourceFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_secretinformationaccessawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/YXdzU2VjcmV0SW5mb3JtYXRpb25BY2Nlc3NGaW5kaW5nOA/microsoft.graph.secretInformationAccessAwsResourceFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-secretinformationaccessawsresourcefinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-secretinformationaccessawsresourcefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secretInformationAccessAwsResourceFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsResourceFinding",
  "value": [
      {
      "@odata.type": "graph.secretInformationAccessAwsResourceFinding",
      "id": "YXdzU2VjcmV0SW5mb3JtYXRpb25BY2Nlc3NGaW5kaW5nOA",
      "identity": {
          "@odata.type": "graph.awsEc2Instance",
          "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTA0YTQwZTE0ZTE3MGQxNDA4",
          "externalId": "arn:aws:ec2:us-west-2:377596131774:instance/i-04a40e14e170d1408",
          "displayName": "ck-bastion-staging",
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
      "secretInformationWebServices": "certificateAuthority, certificateManager, cloudHsm",
      "permissionsCreepIndex": {
        "score": 95
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ]
}
```

