---
title: "azureDataLakeConnector: getUploadSession"
description: "Retrieve an upload session that supplies file-based data to an inbound flow."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# azureDataLakeConnector: getUploadSession

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve an upload session that supplies file-based data to an inbound flow.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                 |
| :------------------------------------- | :---------------------------------------------------------- |
| Delegated (work or school account)     | EduAdministration.Read, EduAdministration.ReadWrite         |
| Delegated (personal Microsoft account) | Not supported.                                              |
| Application                            | EduAdministration.Read.All, EduAdministration.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http

```

## Function parameters

In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

| Parameter    | Type    | Description                                                                |
| :----------- | :------ | :------------------------------------------------------------------------- |
| resetSession | Boolean | `True` indicates that a new [fileUploadSession](../resources/industrydata-fileuploadsession.md) with an empty container will be returned. |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [fileUploadSession](../resources/industrydata-fileuploadsession.md) in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "azuredatalakeconnectorthis.getuploadsession"
}
-->

```http

```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.fileUploadSession"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.industryData.fileUploadSession"
  }
}
```
