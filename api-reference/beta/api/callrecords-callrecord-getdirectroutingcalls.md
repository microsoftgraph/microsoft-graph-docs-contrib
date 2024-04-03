---
title: "callRecord: getDirectRoutingCalls"
description: "Get a log of direct routing calls."
author: "saurabhjain0804"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: "apiPageType"
ms.topic: reference
---

# callRecord: getDirectRoutingCalls

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a log of direct routing calls as a collection of [directRoutingLogRow](../resources/callrecords-directroutinglogrow.md) entries.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecords_callrecord_getdirectroutingcalls" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecords-callrecord-getdirectroutingcalls-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /communications/callRecords/getDirectRoutingCalls(fromDateTime={fromDateTime},toDateTime={toDateTime})
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Function parameters

In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|fromDateTime|DateTimeOffset|Start of time range to query. UTC, inclusive.<br/>Time range is based on the call start time.|
|toDateTime|DateTimeOffset|End of time range to query. UTC, exclusive.|

## Response

If successful, this function returns a `200 OK` response code and a collection of [directRoutingLogRow](../resources/callrecords-directroutinglogrow.md) entries in the response body.

If there are more than 1,000 entries in the date range, the body also includes an `@odata.nextLink` with a URL to query the next page of call entries. The last page in the date range doesn't have `@odata.nextLink`. For more information, see [paging Microsoft Graph data in your app](/graph/paging).

## Example

The following example shows how to get a collection of records for direct routing calls that occurred in the specified date range. The response includes `"@odata.count": 1000` to enumerate the number of records in this first response, and `@odata.nextLink` to get records beyond the first 1,000. For readability, the response shows only a collection of one record. Assume there are more than 1,000 calls in that date range.

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "callrecord_getdirectroutingcalls"
}
-->

``` http
GET https://graph.microsoft.com/beta/communications/callRecords/getDirectRoutingCalls(fromDateTime=2019-11-01,toDateTime=2019-12-01)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/callrecord-getdirectroutingcalls-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/callrecord-getdirectroutingcalls-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/callrecord-getdirectroutingcalls-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/callrecord-getdirectroutingcalls-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/callrecord-getdirectroutingcalls-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/callrecord-getdirectroutingcalls-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/callrecord-getdirectroutingcalls-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.directRoutingLogRow)"
}
-->

``` http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.callRecords.directRoutingLogRow)",
    "@odata.count": 1000,
    "@odata.nextLink": "https://graph.microsoft.com/beta/communications/callRecords/getDirectRoutingCalls(fromDateTime=2019-11-01,toDateTime=2019-12-01)?$skip=1000",
    "value": [
        {
            "id": "9e8bba57-dc14-533a-a7dd-f0da6575eed1",
            "correlationId": "c98e1515-a937-4b81-b8a8-3992afde64e0",
            "userId": "db03c14b-06eb-4189-939b-7cbf3a20ba27",
            "userPrincipalName": "richard.malk@contoso.com",
            "userDisplayName": "Richard Malk",
            "startDateTime": "2019-11-01T00:00:25.105Z",
            "endDateTime": "2019-11-01T00:00:30.105Z",
            "inviteDateTime": "2019-11-01T00:00:21.949Z",
            "failureDateTime": "0001-01-01T00:00:00Z",
            "duration": 5,
            "callType": "ByotIn",
            "successfulCall": true,
            "callerNumber": "+12345678***",
            "calleeNumber": "+01234567***",
            "mediaPathLocation": "USWE",
            "signalingLocation": "EUNO",
            "finalSipCode": 0,
            "callEndSubReason": 540000,
            "finalSipCodePhrase": "BYE",
            "trunkFullyQualifiedDomainName": "tll-audiocodes01.adatum.biz",
            "mediaBypassEnabled": false,
            "userCountryCode": "US",
            "otherPartyCountryCode": "US",
            "transferorCorrelationId": "02d31a30-0abc-4154-964d-e23366e66feb",
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

- [Microsoft Teams direct routing usage report](/microsoftteams/teams-analytics-and-reports/pstn-usage-report#direct-routing) in the Microsoft Teams admin center.
- [Health dashboard for direct routing](/MicrosoftTeams/direct-routing-health-dashboard) in the Microsoft Teams admin center.
- [Get log of PSTN calls](callrecords-callrecord-getpstncalls.md).
- [Get aggregated report of the audio conferencing dial-out](callrecords-callrecord-getpstnonlinemeetingdialoutreport.md).
- [Get log of users who are blocked from making PSTN calls](callrecords-callrecord-getpstnblockeduserslog.md).
- [Get log of sent/received SMS](callrecords-callrecord-getsmslog.md).
