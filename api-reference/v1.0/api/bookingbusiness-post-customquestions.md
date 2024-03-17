---
title: "Create bookingCustomQuestion"
description: "Create a new bookingCustomQuestion object."
author: "razortbone"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: apiPageType
---

# Create bookingCustomQuestion

Namespace: microsoft.graph

Create a new [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bookingbusiness_post_customquestions" } -->
[!INCLUDE [permissions-table](../includes/permissions/bookingbusiness-post-customquestions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}-->

```http
POST /solutions/bookingBusinesses/{bookingBusinessesId}/customQuestions
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.

You can specify the following properties when creating a **bookingCustomQuestion**.

| Property        | Type              | Description                                                                                                         |
| :-------------- | :---------------- | :------------------------------------------------------------------------------------------------------------------ |
| answerInputType | answerInputType   | The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`. Optional.    |
| answerOptions   | String collection | List of possible answer values. Optional.                                                                     |
| displayName     | String            | The question. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name" : "bookingbusinesspostcustomersquestios",
  "sampleKeys": ["Contosolunchdelivery@contoso.com"]
}
-->

```http
POST https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/Contosolunchdelivery@contoso.com/customQuestions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.bookingCustomQuestion",
  "displayName": "What is your age?",
  "answerInputType": "text",
  "answerOptions" : []
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/bookingbusinesspostcustomersquestios-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/bookingbusinesspostcustomersquestios-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/bookingbusinesspostcustomersquestios-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/bookingbusinesspostcustomersquestios-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bookingbusinesspostcustomersquestios-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/bookingbusinesspostcustomersquestios-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/bookingbusinesspostcustomersquestios-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/bookingbusinesspostcustomersquestios-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingCustomQuestion"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.bookingCustomQuestion",
  "id": "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
  "displayName": "What is your age?",
  "answerInputType": "text",
  "answerOptions": [],
}
```
