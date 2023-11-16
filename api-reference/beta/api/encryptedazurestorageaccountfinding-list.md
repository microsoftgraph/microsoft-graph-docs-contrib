---
title: "List encryptedAzureStorageAccountFinding objects"
description: "Get a list of the encryptedAzureStorageAccountFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List encryptedAzureStorageAccountFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/azure/findings/graph.encryptedAzureStorageAccountFinding
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

If successful, this method returns a `200 OK` response code and a collection of [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_encryptedazurestorageaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/graph.encryptedAzureStorageAccountFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.encryptedAzureStorageAccountFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/azure/findings/graph.encryptedAzureStorageAccountFinding",
  "value": [
    {
      "@odata.type": "graph.encryptedAzureStorageAccountFinding",
      "id": "ZW5jcnlwdGVkQXp1cmVTdG9yYWdlQWNjb3VudEZpbmRpbmcxMDAwMQ",
      "storageAccount": {
        "@odata.type": "graph.azureAuthorizationSystemResource",
        "id": "L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2LWFhZjMtMDljNWE5ZjQzNzY4L3Jlc291cmNlR3JvdXBzL3ByYXQtdGVzdC1jYXNzYW5kcmEtY2x1c3Rlci9wcm92aWRlcnMvTWljcm9zb2Z0LlN0b3JhZ2Uvc3RvcmFnZUFjY291bnRzL3ByYXR0ZXN0aGRpbnNoZGlzdG9yYWdl",
        "externalId": "/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/prat-test-cassandra-cluster/providers/Microsoft.Storage/storageAccounts/prattesthdinshdistorage",
        "displayName": "prat-test-cassandra-cluster/prattesthdinshdistorage",
        "resourceType": "storageAccounts",
        "authorizationSystem": {
          "@odata.type": "graph.azureAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "e160b34b-2a0f-41f6-aaf3-09c5a9f43768",
          "authorizationSystemName": "ck-qa",
          "authorizationSystemType": "azure"
        }
      },
      "encryptionManagedBy": "microsoftStorage",
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    }
  ]
}
```

