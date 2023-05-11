---
title: "callRecord: getPstnBlockedUsersLog"
description: "Get the log of users who are blocked/unblocked from making public switched telephone network (PSTN) calls in Microsoft Teams as a collection of pstnBlockedUsersLogRow entries."
author: "radoslag" 
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# callRecord: getPstnBlockedUsersLog

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the log of users who are blocked/unblocked from making public switched telephone network (PSTN) calls in Microsoft Teams as a collection of [pstnBlockedUsersLogRow](../resources/callrecords-pstnblockeduserslogrow.md) entries. The log includes information about each blocked user such as their assigned phone number and the reason they were blocked/unblocked from making calls.

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
GET /communications/callRecords/getPstnBlockedUsersLog(fromDateTime={fromDateTime},toDateTime={toDateTime})
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

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.pstnBlockedUsersLogRow](../resources/callrecords-pstnblockeduserslogrow.md) entries in the response body.
  
If the function returns more than 1000 entries for the specified date range, the body also includes an `@odata.nextLink` with a URL to query the next page of entries. The last page in the date range doesn't have an `@odata.nextLink`. For more information, see [paging Microsoft Graph data in your app](/graph/paging).

## Example

The following example shows how to get a collection of records for PSTN blocked users that occurred in the specified date range. The response includes `"@odata.count": 1000` to enumerate the number of records in the first response, and an `@odata.nextLink` to get records beyond the first 1000. For readability, the response object contains only a collection of two records.

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "callrecordthis.getpstnblockeduserslog"
}
-->
``` http
GET https://graph.microsoft.com/beta/communications/callRecords/getPstnBlockedUsersLog(fromDateTime=2022-11-01,toDateTime=2022-12-01)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/callrecordthisgetpstnblockeduserslog-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/callrecordthisgetpstnblockeduserslog-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/callrecordthisgetpstnblockeduserslog-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/callrecordthisgetpstnblockeduserslog-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/callrecordthisgetpstnblockeduserslog-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/callrecordthisgetpstnblockeduserslog-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.pstnBlockedUsersLogRow)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.callRecords.pstnBlockedUsersLogRow)",
    "@odata.count": 1000,
    "@odata.nextLink": "https://graph.microsoft.com/beta/communications/callRecords/getPstnBlockedUsersLog(fromDateTime=2022-11-01,toDateTime=2022-12-01)?$skip=1000",
    "value": [
        {
            "userId": "76efb13c-64ba-4305-9149-4e8f854004a9",
            "userPrincipalName": "andre.lawson@contoso.com",
            "userDisplayName": "Andre Lawson",
            "blockDateTime": "2022-11-23T13:51:09.796Z",
            "userTelephoneNumber": "+37212345678",
            "userBlockMode": "Blocked",
            "blockReason": "High Overall Usage",
            "remediationId": "c98e1515-a937-4b81-b8a8-3992afde64e0",
        },
        {
            "userId": "76efb13c-64ba-4305-9149-4e8f854004a9",
            "userPrincipalName": "ruwini.perera@contoso.com",
            "userDisplayName": "Ruwini Perera",
            "blockDateTime": "2022-11-23T13:51:09.796Z",
            "userTelephoneNumber": "+37212345678",
            "userBlockMode": "Unblocked",
            "blockReason": "Tenant Requested",
            "remediationId": "c98e1515-a937-4b81-b8a8-3992afde64e0",
        }
    ]
}
```

## See also

* [Get log of PSTN calls in Microsoft Graph](callrecords-callrecord-getpstncalls.md)
* [Microsoft Teams PSTN usage report](/microsoftteams/teams-analytics-and-reports/pstn-usage-report)
