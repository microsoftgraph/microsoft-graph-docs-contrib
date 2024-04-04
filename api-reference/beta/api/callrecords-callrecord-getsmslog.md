---
title: "callRecord: getSmsLog"
description: "Get the log of a sent/received SMS as a collection of smsLogRow entries."
author: "saurabhjain0804"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.topic: reference
---

# callRecord: getSmsLog

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the log of a sent/received SMS as a collection of [smsLogRow](../resources/callrecords-smslogrow.md) entries.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecords_callrecord_getsmslog" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecords-callrecord-getsmslog-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /communications/callRecords/getSmsLog(fromDateTime={fromDateTime},toDateTime={toDateTime})
```

## Function parameters

In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|fromDateTime|DateTimeOffset|Start of time range to query. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required.|
|toDateTime|DateTimeOffset|End of time range to query. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required.|

> [!IMPORTANT]
> The **fromDateTime** and **toDateTime** values can't be more than a date range of 90 days.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.smsLogRow](../resources/callrecords-smslogrow.md) entries in the response body.
  
If the function returns more than 1,000 entries for the specified date range, the body also includes an `@odata.nextLink` with a URL to query the next page of entries. The last page in the date range doesn't have an `@odata.nextLink`. For more information, see [paging Microsoft Graph data in your app](/graph/paging).

## Example

The following example shows how to get the log of sent/received SMS that occurred in the specified date range. The response includes `"@odata.count": 1000` to enumerate the number of records in this first response, and an `@odata.nextLink` to get records beyond the first 1,000. For readability, the response object contains only a collection of one record.

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "callrecordthis.getsmslog"
}
-->
``` http
GET https://graph.microsoft.com/beta/communications/callRecords/getSmsLog(fromDateTime=2022-11-01,toDateTime=2022-12-01)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/callrecordthisgetsmslog-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/callrecordthisgetsmslog-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/callrecordthisgetsmslog-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/callrecordthisgetsmslog-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/callrecordthisgetsmslog-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/callrecordthisgetsmslog-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/callrecordthisgetsmslog-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/callrecordthisgetsmslog-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.smsLogRow)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.callRecords.smsLogRow)",
    "@odata.count": 1000,
    "@odata.nextLink": "https://graph.microsoft.com/beta/communications/callRecords/getSmsLog(fromDateTime=2022-11-01,toDateTime=2022-12-01)?$skip=1000",
    "value": [
        {
            "smsId": "ef36b3e8-9922-4763-90e2-f4345c04a5d6",
            "userId": "19b900af-fe99-48d6-a9a4-b79c995afc33",
            "userPrincipalName": "ruwini.perera@contoso.com",
            "userDisplayName": "Ruwini Perera",
            "userCountryCode": "US",
            "tenantCountryCode": "US",
            "sourceNumber": "+12818602122",
            "destinationNumber": "+12673173004",
            "sentDateTime": "2022-10-06T11:15:48.6113555Z",
            "callCharge": 0.00,
            "currency": "USD",
            "smsType": "sms_in",
            "destinationContext": "Domestic",
            "destinationName": "United States",
            "otherPartyCountryCode": "US",
            "licenseCapability": "MCOSMS1",
            "smsUnits": 1,
            "administrativeUnitInfos": [
               {
                  "id": "639b616c-f164-4a6f-a933-24936b8eb210"
               },
               {
                  "id": "cc6ea167-4e92-4c2d-9391-85791e978006"
               }
            ]            
        }
    ]
}
```

## Related content

* [Get log of PSTN calls](callrecords-callrecord-getpstncalls.md)
* [Get log of direct routing calls](callrecords-callrecord-getdirectroutingcalls.md)
* [Get aggregated report of the audio conferencing dial-out](callrecords-callrecord-getpstnonlinemeetingdialoutreport.md)
* [Microsoft Teams PSTN usage report](/microsoftteams/teams-analytics-and-reports/pstn-usage-report)

<!-- {
  "type": "#page.annotation",
  "suppressions": [
        "Error: callrecordthis.getsmslog/container/callCharge:
            Expected type String but actual was Double. Property: callCharge, actual value: '0'"
    ]
}-->
