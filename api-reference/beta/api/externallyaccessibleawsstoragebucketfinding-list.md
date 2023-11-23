---
title: "List externallyAccessibleAwsStorageBucketFinding objects"
description: "Get a list of the externallyAccessibleAwsStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List externallyAccessibleAwsStorageBucketFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.externallyAccessibleAwsStorageBucketFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_externallyaccessibleawsstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.externallyAccessibleAwsStorageBucketFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-externallyaccessibleawsstoragebucketfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-externallyaccessibleawsstoragebucketfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-externallyaccessibleawsstoragebucketfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externallyaccessibleawsstoragebucketfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externallyaccessibleawsstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-externallyaccessibleawsstoragebucketfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-externallyaccessibleawsstoragebucketfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-externallyaccessibleawsstoragebucketfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externallyAccessibleAwsStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.externallyAccessibleAwsStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.externallyAccessibleAwsStorageBucketFinding",
      "id": "cmVzb3VyY2VmaW5kaW5nMTAwMDAx",
      "storageBucket": {
        "@odata.type": "graph.awsAuthorizationSystemResource",
        "id": "YXJuOmF3czpzMzo6OjAyLXNldHRpbmdzLTAxLWJwLW5vbmUtYWNsLWV2ZXJ5b25lLWVuY3J5cHRpb24tbm9uZQ==",
        "externalId": "arn:aws:s3:::02-settings-01-bp-none-acl-everyone-encryption-none",
        "displayName": "02-settings-01-bp-none-acl-everyone-encryption-none",
        "resourceType": "bucket",
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "377596131774",
          "authorizationSystemName": "cloudknox-staging",
          "authorizationSystemType": "aws"
        }
      },
      "accessibility": "public",
      "accountsWithAccess": {
        "@odata.type": "graph.allAccountsWithAccess"
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    },
    {
      "id": "cmVzb3VyY2VmaW5kaW5nMTAwMDAy",
      "storageBucket": {
        "@odata.type": "graph.awsAuthorizationSystemResource",
        "id": "YXJuOmF3czpzMzo6Omtub3gtdGVzdC1zZXR0aW5ncy1hbGwtYWNsLW5vbmUtYnAtbm9uZS1lbmNyeXB0aW9uLW5vbmUteC1hY2N0",
        "externalId": "arn:aws:s3:::knox-test-settings-all-acl-none-bp-none-encryption-none-x-acct",
        "displayName": "knox-test-settings-all-acl-none-bp-none-encryption-none-x-acct",
        "resourceType": "bucket",
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "377596131774",
          "authorizationSystemName": "cloudknox-staging",
          "authorizationSystemType": "aws"
        }
      },
      "accessibility": "crossAccount",
      "accountsWithAccess": {
        "@odata.type": "graph.enumeratedAccountsWithAccess",
        "accounts@odata.count": 3 // there is no annotation for auto-expanding the count, but it always allowed for a service to respond with more data than is requested; if there were an annotation, we would use it
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    },

  ]
}
```

