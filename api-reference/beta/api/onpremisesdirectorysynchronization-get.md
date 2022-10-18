---
title: "Get onPremisesDirectorySynchronization"
description: "Read the properties and relationships of an onPremisesDirectorySynchronization object."
author: "mwongela"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get onPremisesDirectorySynchronization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                           |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | OnPremDirectorySynchronization.Read.All, OnPremDirectorySynchronization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                        |
| Application                            | Not supported.                                                                        |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/onPremisesSynchronization
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_onpremisesdirectorysynchronization"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/onPremisesSynchronization
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesDirectorySynchronization"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onPremisesDirectorySynchronization",
    "id": "5b9cdf70-03a6-87ad-df4e-8283368fc372",
    "configuration": {
      "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationConfiguration"
    },
    "features": {
      "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationFeature"
    }
  }
}
```