---
title: "List callRecords"
description: "Get a list of callRecord objects and their properties."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "apiPageType"
---

# List callRecords

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callRecord](../resources/callrecords-callrecord.md) objects and their properties. The results can be optionally filtered using the `$filter` query parameter on the **startDateTime** and participant **id** properties. Note that the listed call records don't include expandable relationships such as **sessions** and **participants_v2**. You can expand these relationships using [Get callRecord](callrecords-callrecord-get.md) for a specific record.

> [!WARNING]
> A call record is created after a call or meeting ends and remains available for **30 days**. This API doesn't return call records older than 30 days.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecords_callrecord_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecords-callrecord-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /communications/callRecords
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name    |Description|
|:--------|:----------|
| $select | Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources. |
| $filter | Use the `$filter` query parameter to retrieve just a subset of a collection. Only supported for the **startDateTime** (`lt`,`le`,`gt`,`ge`) and participant **participants_v2.id** (`eq`) properties. |

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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.callRecord](../resources/callrecords-callrecord.md) objects in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an **@odata.nextLink** property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the **@odata.nextLink** URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging). The default page size for call records is 60 entries.

## Examples

### Example 1: List all records

The following example shows how to get all [callRecord](../resources/callrecords-callrecord.md) objects.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callrecords"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-callrecords-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-callrecords-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-callrecords-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-callrecords-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-callrecords-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-callrecords-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-callrecords-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.callRecord)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords",
  "value": [
    {
      "id": "3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65",
      "version": 2,
      "type": "unknown",
      "modalities": [
        "audio"
      ],
      "lastModifiedDateTime": "2023-09-25T10:36:40Z",
      "startDateTime": "2023-09-25T09:28:38Z",
      "endDateTime": "2023-09-25T09:28:41Z",
      "organizer": {
        "user": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "displayName": "Abbie Wilkins",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
        }
      },
      "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65')/organizer_v2/$entity",
      "organizer_v2": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "identity": {
          "user": {
            "id": "821809f5-0000-0000-0000-3b5136c0e777",
            "displayName": "Abbie Wilkins",
            "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
          }
        }
      }
    },
    {
      "id": "c3ad8c4b-4a87-4ab1-bef0-284d2f40ed9f",
      "version": 2,
      "type": "unknown",
      "modalities": [
        "audio"
      ],
      "lastModifiedDateTime": "2023-09-25T14:18:13Z",
      "startDateTime": "2023-09-25T14:03:36Z",
      "endDateTime": "2023-09-25T14:03:40Z",
      "organizer": {
        "user": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "displayName": "Abbie Wilkins",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
        }
      },
      "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('c3ad8c4b-4a87-4ab1-bef0-284d2f40ed9f')/organizer_v2/$entity",
      "organizer_v2": {
        "id": "+5564981205182",
        "identity": {
          "user": null,
          "acsUser": null,
          "spoolUser": null,
          "phone": {
            "id": "+5564981205182",
            "displayName": null,
            "tenantId": null
          }
        }
      }
    }
  ]
}
```

### Example 2: Filter by startDateTime

The following example shows how to get [callRecord](../resources/callrecords-callrecord.md) objects filtered by the **startDateTime** property.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callrecords_filter_by_startDateTime"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords?$filter=startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-callrecords-filter-by-startdatetime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-callrecords-filter-by-startdatetime-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-callrecords-filter-by-startdatetime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-callrecords-filter-by-startdatetime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-callrecords-filter-by-startdatetime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-callrecords-filter-by-startdatetime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-callrecords-filter-by-startdatetime-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.callRecord)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords",
  "value": [
    {
      "id": "3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65",
      "version": 2,
      "type": "unknown",
      "modalities": [
        "audio"
      ],
      "lastModifiedDateTime": "2023-09-25T10:36:40Z",
      "startDateTime": "2023-09-25T09:28:38Z",
      "endDateTime": "2023-09-25T09:28:41Z",
      "organizer": {
        "user": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "displayName": "Abbie Wilkins",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
        }
      },
      "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65')/organizer_v2/$entity",
      "organizer_v2": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "identity": {
          "user": {
            "id": "821809f5-0000-0000-0000-3b5136c0e777",
            "displayName": "Abbie Wilkins",
            "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
          }
        }
      }
    }
  ]
}
```

### Example 3: Filter by participant ID

The following example shows how to get [callRecord](../resources/callrecords-callrecord.md) objects filtered by the **id** property of a [participant](../resources/callrecords-participant.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callrecords_filter_by_participant"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords?$filter=participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-callrecords-filter-by-participant-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-callrecords-filter-by-participant-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-callrecords-filter-by-participant-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-callrecords-filter-by-participant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-callrecords-filter-by-participant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-callrecords-filter-by-participant-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-callrecords-filter-by-participant-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.callRecord)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords",
  "value": [
    {
      "id": "3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65",
      "version": 2,
      "type": "unknown",
      "modalities": [
        "audio"
      ],
      "lastModifiedDateTime": "2023-09-25T10:36:40Z",
      "startDateTime": "2023-09-25T09:28:38Z",
      "endDateTime": "2023-09-25T09:28:41Z",
      "organizer": {
        "user": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "displayName": "Abbie Wilkins",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
        }
      },
      "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65')/organizer_v2/$entity",
      "organizer_v2": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "identity": {
          "user": {
            "id": "821809f5-0000-0000-0000-3b5136c0e777",
            "displayName": "Abbie Wilkins",
            "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
          }
        }
      }
    }
  ]
}
```

## Related content

- [callRecord](../resources/callrecords-callrecord.md)

<!-- {
  "type": "#page.annotation",
  "description": "List callRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
