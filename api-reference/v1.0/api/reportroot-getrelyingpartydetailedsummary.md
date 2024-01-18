---
title: "reportRoot: getRelyingPartyDetailedSummary"
description: "Enables customers to get the summary of ADFS relying Parties Information on Daily/Weekly/Monthly."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# reportRoot: getRelyingPartyDetailedSummary

Namespace: microsoft.graph



Get a summary of ADFS relying Parties Information.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "reportroot-getrelyingpartydetailedsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getrelyingpartydetailedsummary-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/getRelyingPartyDetailedSummary
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|period|String|Specifies the length of time over which the report is aggregated. The supported values for {period_value} are: D1, D7, D30. These values follow the format Dn where n represents the number of days over which the report is aggregated.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportrootthis.getrelyingpartydetailedsummary"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/getRelyingPartyDetailedSummary(period='parameterValue')
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.relyingPartyDetailedSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
      "id": "String (identifier)",
      "relyingPartyId": "String",
      "serviceId": "String",
      "relyingPartyName": "String",
      "successfulSignInCount": "Integer",
      "failedSignInCount": "Integer",
      "totalSignInCount": "Integer",
      "signInSuccessRate": "Double",
      "uniqueUserCount": "Integer",
      "migrationStatus": "String",
      "migrationValidationDetails": [
        {
          "@odata.type": "microsoft.graph.keyValuePair"
        }
      ],
      "replyUrls": [
        "String"
      ]
    }
  ]
}
```

