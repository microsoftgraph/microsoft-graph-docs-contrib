---
title: "List securityToolAwsResourceAdministratorFindings"
description: "Get a list of the securityToolAwsResourceAdministratorFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List securityToolAwsResourceAdministratorFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.securityToolAwsResourceAdministratorFinding
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_securitytoolawsresourceadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.securityToolAwsResourceAdministratorFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.securityToolAwsResourceAdministratorFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.securityToolAwsResourceAdministratorFinding",
  "value": [
      {
      "@odata.type": "graph.securityToolAwsResourceAdministratorFinding",
      "id": "YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nNA",
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
      "securityTools": "guardDuty, macie, wafShield",
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

