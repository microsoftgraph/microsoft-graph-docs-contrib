---
title: "List participants_v2"
description: "Get the list of participant objects associated with a callRecord."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "apiPageType"
ms.topic: reference
---

# List participants_v2

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [participant](../resources/callrecords-participant.md) objects associated with a [callRecord](../resources/callrecords-callrecord.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecords_callrecord_list_participants_v2" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecords-callrecord-list-participants_v2-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /communications/callRecords/{id}/participants_v2
```

## Optional query parameters

This method supports the following OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name      |Description|
|:----------|:----------|
| $select   | Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources.|

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer: odata.maxpagesize={x} | Specifies a preferred integer {x} page size for paginated results. This value must be equal to or less than the maximum allowable page size. Optional. |
| Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |
| Prefer: omit-values=nulls | Removes null or empty values from the response. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.participant](../resources/callrecords-participant.md) objects in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an **@odata.nextLink** property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the **@odata.nextLink** URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging). The maximum page size for participants is 130 entries.

## Examples

### Request

The following example shows a request to get the list of [participant](../resources/callrecords-participant.md) objects for a [callRecord](../resources/callrecords-callrecord.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callrecord_participants_v2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/614e3ff0-4728-4394-8c03-52fb3b967fde/participants_v2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-callrecord-participants-v2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-callrecord-participants-v2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-callrecord-participants-v2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-callrecord-participants-v2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-callrecord-participants-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-callrecord-participants-v2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-callrecord-participants-v2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-callrecord-participants-v2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.participant)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/$metadata#communications/callRecords('614e3ff0-4728-4394-8c03-52fb3b967fde')/participants_v2",
  "@odata.nextLink": "https://graph.microsoft.com/beta/communications/callRecords/614e3ff0-4728-4394-8c03-52fb3b967fde/participants_v2",
  "value": [
    {
      "id": "00005994-851d-4988-bbc3-413bbf089e13",
      "identity": {
        "acsUser": null,
        "spoolUser": null,
        "phone": null,
        "guest": null,
        "encrypted": null,
        "onPremises": null,
        "acsApplicationInstance": null,
        "spoolApplicationInstance": null,
        "applicationInstance": null,
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.userIdentity",
          "id": "00005994-851d-4988-bbc3-413bbf089e13",
          "displayName": "Anette Thomsen",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
          "userPrincipalName": "anette.thomsen@contoso.com"
        }
      }
    },
    {
      "id": "13fd6bf0-f646-4b82-b0ad-cd28ce10d6e3",
      "identity": {
        "acsUser": null,
        "spoolUser": null,
        "phone": null,
        "guest": null,
        "encrypted": null,
        "onPremises": null,
        "acsApplicationInstance": null,
        "spoolApplicationInstance": null,
        "applicationInstance": null,
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.userIdentity",
          "id": "13fd6bf0-f646-4b82-b0ad-cd28ce10d6e3",
          "displayName": "Daichi Maruyama",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
          "userPrincipalName": "daichi.maruyama@contoso.com"
        }
      }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List participants_v2",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
