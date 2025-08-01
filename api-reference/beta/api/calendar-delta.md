---
title: "calendar: delta"
description: "Get a set of calendars added, deleted, or updated in a user's mailbox."
ms.localizationpriority: medium
author: "vikailas"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/22/2024
---

# calendar: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get a set of [calendar](../resources/calendar.md) resources added, deleted, or updated in one or more calendars.

Typically, synchronizing calendars in a mailbox in a local store entails a round of multiple **delta** function calls. The initial call is a full synchronization, and every subsequent **delta** call in the same round gets the incremental changes (additions, deletions, or updates). Using deltas allows you to incrementally maintain and synchronize a local store of calendars in the specified mailbox.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "calendar_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/calendar-delta-permissions.md)]

## HTTP request

To begin tracking changes, you make a request including the delta function on the calendara resource.

* To get incremental changes of the calendar list _in the user's mailbox_:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/calendars/delta
GET /users/{usersId}/calendars/delta
```
## Query parameters

Tracking changes in groups incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response.

You only need to specify any desired query parameters once upfront.

In subsequent requests, copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response, as that URL already includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same calendar list, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that calendar list.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same calendar list. |

### OData query parameters
This method supports optional OData query parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance.
- The **delta** function doesn't support the following query parameters: `$expand`, `$filter`,`$orderby`, `$search`, and `$select`.

## Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [calendar](../resources/calendar.md) collection in the response body.

## Examples

### Request

The following example shows a request. There's no `$select` parameter, so a default set of properties is tracked and returned.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "calendars_delta"
}
-->
``` msgraph-interactive
GET https://graph.microsoft.com/beta/me/calendars/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/calendars-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/calendars-delta-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/calendars-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/calendars-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/calendars-delta-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/calendars-delta-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/calendars-delta-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

If the request is successful, the response includes a state token, which is either a _skipToken_
(in an _\@odata.nextLink_ response header) or a _deltaToken_ (in an _\@odata.deltaLink_ response header).
Respectively, they indicate whether you should continue with the round or you have completed
getting all the changes for that round.

The response below shows a _deltaToken_ in an _\@odata.deltaLink_ response header.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.calendar)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(calendar)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.calendar",
            "id": "AQMkADRhZThkMDVjLTJmNDctNDUyZC05YjA2LTI2YzRmMTIxOWJhZQBGAAADVDIMnvGkNkGo5_ASLe7iUQcAvXegGcyc-0O1dA1ftrtB6QAAAgEGAAAAvXegGcyc-0O1dA1ftrtB6QAAAUSwewAAAA==",
            "name": "Calendar",
            "color": "auto",
            "hexColor": "",
            "groupClassId": "0006f0b7-0000-0000-c000-000000000046",
            "isDefaultCalendar": true,
            "changeKey": "vXegGcyc/0O1dA1ftrtB6QAAAEO+6Q==",
            "canShare": true,
            "canViewPrivateItems": true,
            "isShared": false,
            "isSharedWithMe": false,
            "canEdit": true,
            "calendarGroupId": null,
            "allowedOnlineMeetingProviders": [
                "teamsForBusiness"
            ],
            "defaultOnlineMeetingProvider": "teamsForBusiness",
            "isTallyingResponses": true,
            "isRemovable": false,
            "owner": {
                "name": "Samantha Booth",
                "address": "samanthab@contoso.com"
            }
        },
        {
            "@odata.type": "#microsoft.graph.calendar",
            "id": "AQMkADRhZThkMDVjLTJmNDctNDUyZC05YjA2LTI2YzRmMTIxOWJhZQBGAAADVDIMnvGkNkGo5_ASLe7iUQcAvXegGcyc-0O1dA1ftrtB6QAAAgEGAAAAvXegGcyc-0O1dA1ftrtB6QAAAU4pOwAAAA==",
            "name": "Birthdays",
            "color": "auto",
            "hexColor": "",
            "groupClassId": "0006f0b7-0000-0000-c000-000000000046",
            "isDefaultCalendar": false,
            "changeKey": "vXegGcyc/0O1dA1ftrtB6QAAAEzvog==",
            "canShare": false,
            "canViewPrivateItems": true,
            "isShared": false,
            "isSharedWithMe": false,
            "canEdit": false,
            "calendarGroupId": null,
            "allowedOnlineMeetingProviders": [],
            "defaultOnlineMeetingProvider": "unknown",
            "isTallyingResponses": false,
            "isRemovable": true,
            "owner": {
                "name": "Samantha Booth",
                "address": "samanthab@contoso.com"
            }
        }
    ],
    "@odata.deltaLink": "https://graph.microsoft.com/beta/me/calendars/delta?$deltatoken=LztZwWjo5IivWBhyxw5rAIPrk_3pGHcZr4U33FHo0HpyBLqdo9QZIWfEL4AW1jMLBmo-o1ybmYCWlzQ5elO2bEDejh9Z8kYv_z4nhmHoC5Y.7Wdj3MWiils6M--JMM9dMyiLCh-1he4AZCqBu-8i42o"
}
```
