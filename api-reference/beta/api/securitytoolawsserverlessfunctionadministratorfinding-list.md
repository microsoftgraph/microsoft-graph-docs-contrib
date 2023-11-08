---
title: "List securityToolAwsServerlessFunctionAdministratorFindings"
description: "Get a list of the securityToolAwsServerlessFunctionAdministratorFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List securityToolAwsServerlessFunctionAdministratorFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.securityToolAwsServerlessFunctionAdministratorFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_securitytoolawsserverlessfunctionadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.securityToolAwsServerlessFunctionAdministratorFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.securityToolAwsServerlessFunctionAdministratorFinding",
  "value": [
      {
      "@odata.type": "graph.securityToolAwsServerlessFunctionAdministratorFinding",
      "id": "YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nNQ",
      "identity": {
          "@odata.type": "graph.awsLambda",
          "id": "YXJuOmF3czpsYW1iZGE6dXMtd2VzdC0yOjM3NzU5NjEzMTc3NDpmdW5jdGlvbjphbm90aGVyQWRtaW5GdWN0aW9u",
          "externalId": "arn:aws:lambda:us-west-2:377596131774:function:anotherAdminFuction",
          "displayName": "anotherAdminFuction",
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
      "securityTools": "cloudTrail, inspector, securityHub",
      "permissionsCreepIndex": {
        "score": 95
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    },

  ]
}

```

