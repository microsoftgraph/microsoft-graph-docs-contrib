---
title: "Get workbookOperation"
description: "Retrieve the status of a workbookOperation object."
ms.localizationpriority: medium
author: "grangeryy"
ms.prod: "excel"
doc_type: "apiPageType"
---

# Get workbookOperation

Namespace: microsoft.graph

Meaningless if this url is called independently. This request is part of all async requests for excel. This is used to retrieve the status of a [workbookOperation](../resources/workbookoperation.md) object.

Currently not all requests support async. Take Create session request as an example.

Issue an async [Create session](./workbook-createsession.md) request, follow the documentation and you may get status code `202 Accepted`, async operation starts from here and you can find the url this document required from the response header, from the **location** part.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Files.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/drive/items/{id}/workbook/operations/{operation-id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session ID that determines whether changes are persisted. Optional.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [workbookOperation](../resources/workbookoperation.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_workbookoperation"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-workbookoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-workbookoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-workbookoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workbookoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-workbookoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

#### Response running

The following is the response with the status of `running`. When you get this status, poll the request again until you don't get the same responses.


<!-- {
  "blockType": "response",
  "truncated": true,
  "sampleKeys": ["0195cfac-bd22-4f91-b276-dece0aa2378b"],
  "@odata.type": "microsoft.graph.workbookOperation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "0195cfac-bd22-4f91-b276-dece0aa2378b",
  "status": "running"
}
```

#### Response succeeded

The following is the response with the status of `succeeded`. The **resourceLocation** is a group of URLs that represent the return values of the original long-running operation. See the following table for details about how to get the result from the **resourceLocation** property.

| Operation      |resourceLocation|
|:----------|:----------|
| Create session | [sessionInfoResource](../resources/workbooksessioninfo.md) |
| Create tableRow | [tableRowOperationResult](./workbook-tablerowoperationresult.md) |
| Delete tableRow| No resourceLocation needed. |

<!-- {
  "blockType": "response",
  "truncated": true,
  "sampleKeys": ["01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ", "0195cfac-bd22-4f91-b276-dece0aa2378b", "Y2x1c3Rlcj1QU0c0JnNlc3Npb249MTUuU0cyUEVQRjAwMDI4RjI1MS5BMTE2LjEuVTM2LmM4MGRiNjkwLTQwMTktNGNkNS1hYWJiLTJmYzczM2YxZTQ5ZjE0LjUuZW4tVVM1LmVuLVVTMjQuMTAwM2JmZmRhYzUyMzkzOS1Qcml2YXRlMS5TMjQuJTJmUEI0JTJmWjJqZmt1aXhJZHBjeE8xYmclM2QlM2QxNi4xNi4wLjE0NDEwLjM1MDUwMTQuNS5lbi1VUzUuZW4tVVMxLk0xLk4wLjEuUyZ1c2lkPWExOTMyNTU0LTlhNDAtNzYzNi1mNDU3LWEyNjExMmFkNDg2YQ=="],
  "@odata.type": "microsoft.graph.workbookOperation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "0195cfac-bd22-4f91-b276-dece0aa2378b",
  "status": "succeeded",
  "resourceLocation":"https://graph.microsoft.com/beta/me/drive/items/01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ/workbook/sessionInfoResource(key='0195cfac-bd22-4f91-b276-dece0aa2378b')?sessionId=Y2x1c3Rlcj1QU0c0JnNlc3Npb249MTUuU0cyUEVQRjAwMDI4RjI1MS5BMTE2LjEuVTM2LmM4MGRiNjkwLTQwMTktNGNkNS1hYWJiLTJmYzczM2YxZTQ5ZjE0LjUuZW4tVVM1LmVuLVVTMjQuMTAwM2JmZmRhYzUyMzkzOS1Qcml2YXRlMS5TMjQuJTJmUEI0JTJmWjJqZmt1aXhJZHBjeE8xYmclM2QlM2QxNi4xNi4wLjE0NDEwLjM1MDUwMTQuNS5lbi1VUzUuZW4tVVMxLk0xLk4wLjEuUyZ1c2lkPWExOTMyNTU0LTlhNDAtNzYzNi1mNDU3LWEyNjExMmFkNDg2YQ=="
}
```

#### Response failed

The following is the response with the status of `failed`.

<!-- {
  "blockType": "response",
  "truncated": true,
  "sampleKeys": ["0195cfac-bd22-4f91-b276-dece0aa2378b"],
  "@odata.type": "microsoft.graph.workbookOperation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "0195cfac-bd22-4f91-b276-dece0aa2378b",
  "status": "failed",
  "error":
  {
      "code": "internalServerError",
      "message": "An internal server error occurred while processing the request.",
      "innerError": {
          "code": ""internalServerErrorUncategorized",
          "message": "An unspecified error has occurred.",
          "innerError": {
               "code": "GenericFileOpenError",
               "message": "The workbook cannot be opened."
          }
      }
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get workbookOperation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

