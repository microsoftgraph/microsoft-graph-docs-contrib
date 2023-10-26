---
title: "List awsIdentityAccessManagementKeyUsageFindings"
description: "Get a list of the awsIdentityAccessManagementKeyUsageFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List awsIdentityAccessManagementKeyUsageFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.awsIdentityAcessManagementKeyUsageFinding
```

## Optional query parameters
This method supports `$filter` and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_awsidentityaccessmanagementkeyusagefinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings/graph.awsIdentityAcessManagementKeyUsageFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsIdentityAccessManagementKeyUsageFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.awsIdentityAcessManagementKeyUsageFinding",
  "value": [
    {
      "@odata.type": "graph.awsIdentityAcessManagementKeyUsageFinding",
      "id": "aWRlbnRpdHlBY2Vzc01hbmFnZW1lbnRLZXlVc2FnZUZpbmRpbmcxMjM",
      "actionSummary": {
        "assigned": 10783,
        "exercised": 0,
        "available": 10793
      },
      "awsAccessKeyDetails": {
        "createdDateTime": "2021-09-21T05:15:52Z",
        "lastUsedDateTime": "2023-08-10T03:12:00Z"
      },
      "accessKey": {
        "@odata.type": "graph.awsAccessKey",
        "id":"QUtJQTU1VUhNS0IzNUJPSUpHUkk=",
        "externalId":"AKIA55UHMKB35BOIJGRI",
        "displayName": "AKIA55UHMKB35BOIJGRI",
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "956987887735",
          "authorizationSystemName": "cloudknox-development",
          "authorizationSystemType": "aws"
        },
        "owner": { // NOTE: Because of a limit in our current data model, we do not have all of the standard identity information
          "@odata.type": "graph.awsUser",
          "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2dlZXRh",
          "externalId":"arn:aws:iam::956987887735:user/geeta",
          "displayName": "geeta",
          "source": {
            "@odata.type": "graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "956987887735"
          }
        }
      },
      "status": "inactive",
      "permissionsCreepIndex": {
        "score": 99
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z"
    },

  ]
}
```

