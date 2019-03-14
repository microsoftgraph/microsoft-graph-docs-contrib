---
title: "List secureScores"
description: "Retrieve the properties and relationships of a secureScores object."
localization_priority: Normal
---

# List secureScores

Retrieve the properties and relationships of a [secureScores](../resources/securescore.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All.   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/secureScores
GET /security/secureScores?$top=1
GET /security/secureScores?$filter={property} eq '{property-value}'
```
## Optional query parameters

This method supports the following [OData query parameters](/graph/query-parameters) to help customize the response:

- `$count`
- `$filter`
- `$skip`
- `$top` will return the aggregated top results from each security API provider.  

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method. The request body will be ignored.

## Response

If successful, this method returns a `200 OK` response code and a **secureScores** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_securescores"
}-->

```http
GET https://graph.microsoft.com/v1.0/security/secureScores?$top=1
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.secureScore"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json


{
    "value": [
        {
            "activeUserCount": "activeUserCount.value",
            "createdDateTime": "createdDateTime.value",
            "currentScore": "currentScore.value",
            "enabledServices": [
                "enabledServices.value"
            ],
            "licensedUserCount": "licensedUserCount.value",
            "maxScore": "maxScore.value",
            "id": "id.value",
            "azureTenantId": "azureTenantId.value",
            "averageComparativeScores": [
                {
                    "basis": "AllTenants",
                    "averageScore": "averageScore.value",
                    "deviceScore": "deviceScore.value",
                    "dataScore": "dataScore.value",
                    "identityScore": "identityScore.value"
                },
                {
                    "basis": "TotalSeats",
                    "averageScore": "averageScore.value",
                    "deviceScore": "deviceScore.value",
                    "dataScore": "dataScore.value",
                    "identityScore": "identityScore.value",
                    "seatSizeRangeUpperValue": "seatSizeRangeUpperValue.value",
                    "categoryValue": "categoryValue.value",
                    "seatSizeRangeLowerValue": "seatSizeRangeLowerValue.value"
                },
                {
                    "basis": "IndustryTypes",
                    "averageScore": "averageScore.value",
                    "deviceScore": "deviceScore.value",
                    "dataScore": "dataScore.value",
                    "identityScore": "identityScore.value",
                    "categoryValue": "categoryValue.value"
                }
            ],
            "controlScores": [
                {
                    "controlCategory": "controlCategory.value",
                    "controlName": "controlName.value",
                    "description": "description.value",
                    "score": "score.value"
                }
            ]
        }
    ]
}

```


<!--
{
  "type": "#page.annotation",
  "description": "List secureScores",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
