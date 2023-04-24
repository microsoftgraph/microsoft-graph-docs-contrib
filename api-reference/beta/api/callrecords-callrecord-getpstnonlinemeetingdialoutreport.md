---
title: "callRecord: getPstnOnlineMeetingDialoutReport"
description: "Get aggregated report of the usage and money spent for the audio conferencing dial-out service as a collection of pstnOnlineMeetingDialoutReport entries."
author: "radoslag"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# callRecord: getPstnOnlineMeetingDialoutReport

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get aggregated report of usage and money spent for the audio conferencing dial-out service over a selected period as a collection of [pstnOnlineMeetingDialoutReport](../resources/callrecords-pstnonlinemeetingdialoutreport.md) entries.
The report is aggregated by user, user location, destination context (domestic/international), and currency.

The report includes:

- Cost: Communication credits spent over the selected period
- Dial-out calls: Total number of dial-out calls over the selected period
- Time of use: Total dial-out time (in seconds) over the selected period

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| Not supported. |
|Delegated (personal Microsoft account)| Not supported. |
|Application| CallRecord-PstnCalls.Read.All, CallRecords.Read.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /communications/callRecords/getPstnOnlineMeetingDialoutReport(fromDateTime={fromDateTime},toDateTime={toDateTime})
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
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport](../resources/callrecords-pstnonlinemeetingdialoutreport.md) entries in the response body.
  
If the function returns more than 1000 entries for the specified date range, the body also includes an `@odata.nextLink` with a URL to query the next page of entries. The last page in the date range doesn't have an `@odata.nextLink`. For more information, see [paging Microsoft Graph data in your app](/graph/paging).

## Example

The following example shows how to get the aggregated report for the audio conferencing dial-out service over a specified date range. The response includes `"@odata.count": 1000` to enumerate the number of records in this first response, and an `@odata.nextLink` to get records beyond the first 1000. For readability, the response object contains only a collection of one record.

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "callrecordthis.getpstnonlinemeetingdialoutreport"
}
-->
``` http
GET https://graph.microsoft.com/beta/communications/callRecords/getPstnOnlineMeetingDialoutReport(fromDateTime=2022-11-01,toDateTime=2022-12-01)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/callrecordthisgetpstnonlinemeetingdialoutreport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/callrecordthisgetpstnonlinemeetingdialoutreport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/callrecordthisgetpstnonlinemeetingdialoutreport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/callrecordthisgetpstnonlinemeetingdialoutreport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/callrecordthisgetpstnonlinemeetingdialoutreport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/callrecordthisgetpstnonlinemeetingdialoutreport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport)",
    "@odata.count": 1000,
    "@odata.nextLink": "https://graph.microsoft.com/beta/communications/callRecords/getPstnOnlineMeetingDialoutReport(fromDateTime=2022-11-01,toDateTime=2022-12-01)?$skip=1000",
    "value": [
        {
            "userId": "03de33bb-51df-40de-889a-61949faae24f",
            "userPrincipalName": "ruwini.perera@contoso.com",
            "userDisplayName": "Ruwini Perera",
            "usageLocation": "US",
            "destinationContext": "International",
            "currency": "USD",
            "totalCalls": 12,
            "totalCallCharge": 12.83,
            "totalCallSeconds": 723
        }
    ]
}
```

## See also

- [Get log of PSTN calls](callrecords-callrecord-getpstncalls.md)
- [Get log of sent/received SMS](callrecords-callrecord-getsmslog.md)
- [Get log of direct routing calls](callrecords-callrecord-getdirectroutingcalls.md)
- [Microsoft Teams PSTN usage report](/microsoftteams/teams-analytics-and-reports/pstn-usage-report)

<!-- {
  "type": "#page.annotation",
  "suppressions": [
        "Error: callrecordthis.getpstnonlinemeetingdialoutreport/container/totalCallCharge:
      Expected type String but actual was Double. Property: totalCallCharge, actual value: '12.83'"
    ]
}-->
