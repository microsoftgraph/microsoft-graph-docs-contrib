---
title: "industryDataConnector: validate"
description: "Perform validations applicable for the specific instance of the data connector."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# industryDataConnector: validate

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform validations applicable for the specific instance of the data connector.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                 |
| :------------------------------------- | :-------------------------------------------------------------------------- |
| Delegated (work or school account)     | IndustryData-DataConnector.Upload, IndustryData-DataConnector.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                              |
| Application                            | IndustryData-DataConnector.Upload, IndustryData-DataConnector.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/dataConnectors/{industryDataConnectorId}/validate
POST /external/industryData/inboundFlows/{inboundFlowId}/dataConnector/validate
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "industrydataconnectorthis.validate",
  "sampleKeys": ["8c010e87-c28b-4350-bdc1-65ec29258b93"]
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/dataConnectors/8c010e87-c28b-4350-bdc1-65ec29258b93/validate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/industrydataconnectorthisvalidate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/industrydataconnectorthisvalidate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/industrydataconnectorthisvalidate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/industrydataconnectorthisvalidate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/industrydataconnectorthisvalidate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 202 Accepted
```
