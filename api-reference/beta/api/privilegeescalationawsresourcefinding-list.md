---
title: "List privilegeEscalationAwsResourceFinding objects"
description: "Get a list of the privilegeEscalationAwsResourceFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List privilegeEscalationAwsResourceFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegeEscalationAwsResourceFinding](../resources/privilegeescalationawsresourcefinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsResourceFindingd
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

If successful, this method returns a `200 OK` response code and a collection of [privilegeEscalationAwsResourceFinding](../resources/privilegeescalationawsresourcefinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegeescalationawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsResourceFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegeEscalationAwsResourceFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsResourceFinding",
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
  "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsResourceFinding?$skiptoken=foobar"
}
```

