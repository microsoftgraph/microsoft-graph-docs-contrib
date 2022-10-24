---
title: "Update yearTimePeriodDefinition"
description: "Update the properties of a yearTimePeriodDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Update yearTimePeriodDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

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
PATCH /external/industryData/inboundFlows/{inboundFlowId}/year
PATCH /external/industryData/years/{yearTimePeriodDefinitionId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property    | Type                                                                                               | Description                                                              |
| :---------- | :------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------- |
| displayName | String                                                                                             | The name of the year. Maximum supported length is 100 characters. Required.                                          |
| endDate     | Date                                                                                               | The last day of the year using ISO 8601 format for date. Required.                       |
| startDate   | Date                                                                                               | The first day of the year using ISO 8601 format for date. Required.                      |
| year        | [microsoft.graph.industryData.yearReferenceValue](../resources/industrydata-yearreferencevalue.md) | A pointer to a year entry in the [referenceDefinition](../resources/industrydata-referencedefinition.md) collection. Required. |

## Response

If successful, this method returns a `200 OK` response code and an updated [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_yeartimeperioddefinition"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/inboundFlows/{inboundFlowId}/year
Content-Type: application/json
Content-length: 242

{
  "@odata.type": "#microsoft.graph.industryData.yearTimePeriodDefinition",
  "displayName": "String",
  "endDate": "Date",
  "startDate": "Date",
  "year": {
    "@odata.type": "microsoft.graph.industryData.yearReferenceValue"
  }
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.yearTimePeriodDefinition",
  "displayName": "String",
  "endDate": "Date",
  "startDate": "Date",
  "year": {
    "@odata.type": "microsoft.graph.industryData.yearReferenceValue"
  }
}
```
