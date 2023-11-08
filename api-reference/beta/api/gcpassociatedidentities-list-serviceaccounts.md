---
title: "List gcpServiceAccounts"
description: "Get a list of the gcpServiceAccount objects and their properties."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List gcpServiceAccounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [gcpServiceAccount](../resources/gcpserviceaccount.md) objects and their properties.

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
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/serviceAccounts
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [gcpServiceAccount](../resources/gcpserviceaccount.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_gcpserviceaccount"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/serviceAccounts
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpServiceAccount)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "dGVzdC1zZXJ2aWNlLTAxQGhlbGxvLXdvcmxkLTIzMTEwNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ",
      "externalId": "test-service-01@hello-world-231107.iam.gserviceaccount.com",
      "displayName": "test-service-01",
      "source": {
          "@odata.type": "#microsoft.graph.gsuiteSource",
          "domain": "hello-world-231107.iam.gserviceaccount.com",
          "identityProviderType": "gsuite"
      }
    }
  ]
}
```

