---
title: "Create inboundFileFlow"
description: "Create a new inboundFileFlow object."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/05/2024
---

# Create inboundFileFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [inboundFileFlow](../resources/industrydata-inboundfileflow.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_inboundfileflow_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-inboundfileflow-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/inboundFlows
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [inboundFileFlow](../resources/industrydata-inboundfileflow.md) object.

The following table lists the required and optional properties for creating an **inboundFileFlow** object.

| Property           | Type                                                                              | Description                                                                                                                                                                                                                                          |
| :----------------- | :-------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | microsoft.graph.industryData.inboundDomain                                                                     | The category of data that is being imported in this flow. The possible values are: `educationRostering`, `unknownFutureValue`. Required.                                                                                                       |
| displayName        | String                                                                            | The name of the process. Inherited from [industryDataActivity](../resources/industrydata-industrydataactivity.md). Required.                                                                                                                         |
| effectiveDateTime  | DateTimeOffset                                                                    | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required. |
| expirationDateTime | DateTimeOffset                                                                    | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Optional.   |
| dataConnector      | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)       | The data connector to the source system from where this flow gets its data. Inherited from [inboundFlow](../resources/industrydata-inboundflow.md).                                                                                     |
| year               | [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) | The year associated to the data that this flow brings in. Inherited from [inboundFlow](../resources/industrydata-inboundflow.md).                                                                                                            |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.inboundFileFlow](../resources/industrydata-inboundfileflow.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_inboundfileflow_from_inboundflows"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/inboundFlows
Content-Type: application/json
Content-length: 246

{
  "@odata.type": "#microsoft.graph.industryData.inboundFileFlow",
  "dataConnector@odata.bind": "https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271",
  "dataDomain": "educationRostering",
  "displayName": "Inbound rostering flow",
  "effectiveDateTime": "2023-03-12T16:40:46.924769+05:30",
  "expirationDateTime": "2023-03-13T16:40:46.924769+05:30",
  "year@odata.bind": "https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-inboundfileflow-from-inboundflows-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-inboundfileflow-from-inboundflows-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-inboundfileflow-from-inboundflows-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-inboundfileflow-from-inboundflows-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-inboundfileflow-from-inboundflows-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-inboundfileflow-from-inboundflows-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-inboundfileflow-from-inboundflows-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-inboundfileflow-from-inboundflows-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.inboundFileFlow"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.inboundFileFlow",
  "dataDomain": "educationRostering",
  "displayName": "Inbound rostering fow",
  "effectiveDateTime": "2023-03-12T11:10:46.924769Z",
  "expirationDateTime": "2023-03-13T11:10:46.924769Z",
  "id": "7bd62d17-8c37-4494-f68d-08daddab2911",
  "readinessStatus": "ready"
}
```
