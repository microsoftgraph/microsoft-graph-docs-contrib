---
title: "Create inboundFileFlow"
description: "Create a new inboundFileFlow object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Create inboundFileFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [inboundFileFlow](../resources/industrydata-inboundfileflow.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-InboundFlow.ReadWrite.All      |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-InboundFlow.ReadWrite.All      |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

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
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [inboundFileFlow](../resources/industrydata-inboundfileflow.md) object.

You can specify the following properties when you create an **inboundFileFlow**.

| Property           | Type                                                                              | Description                                                                                                                                                                                                                                          |
| :----------------- | :-------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| dataDomain         | inboundDomain                                                                     | The broad category of data that is being imported by this flow. The possible values are: `educationRostering`, `unknownFutureValue`. Required.                                                                                                       |
| displayName        | String                                                                            | The name of the process. Inherited from [industryDataActivity](../resources/industrydata-industrydataactivity.md). Required.                                                                                                                         |
| effectiveDateTime  | DateTimeOffset                                                                    | The start of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required. |
| expirationDateTime | DateTimeOffset                                                                    | The end of the time window when the flow is allowed to run. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Optional.   |
| dataConnector      | [industryDataConnector](../resources/industrydata-industrydataconnector.md)       | The data connector in the context of which this flow pulls in data from a source system. Inherited from [inboundFlow](../resources/industrydata-inboundflow.md).                                                                                     |
| year               | [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) | The year that the data being brought in via this flow applies to. Inherited from [inboundFlow](../resources/industrydata-inboundflow.md).                                                                                                            |

## Response

If successful, this method returns a `201 Created` response code and an [inboundFileFlow](../resources/industrydata-inboundfileflow.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_inboundFileFlow_from_"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/inboundFileFlows
Content-Type: application/json
Content-length: 246

{
  "@odata.type": "#microsoft.graph.industryData.inboundFileFlow",
  "dataConnector@odata.bind": "https://graph.microsoft.com/beta/external/industryData/dataConnectors/{dataConnectorId}",
  "dataDomain": "String",
  "displayName": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "year@odata.bind": "https://graph.microsoft.com/beta/external/industryData/years/{yearId}"
}
```

### Response

The following is an example of the response.

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
  "displayName": "String",
  "readinessStatus": "String",
  "dataDomain": "String",
  "effectiveDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```
