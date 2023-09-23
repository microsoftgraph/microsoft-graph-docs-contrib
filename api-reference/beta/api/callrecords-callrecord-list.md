---
title: "List callRecord"
description: "Retrieve a list of call record objects."
ms.localizationpriority: medium
author: "mcm223"
ms.prod: "cloud-communications"
doc_type: "apiPageType"
---

# Get callRecord

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [callRecord](../resources/callrecords-callrecord.md) objects.

> [!WARNING]
>
> A call record is created after a call or meeting ends and will remain available for **30 days**. Call records older than 30 days will not be returned by this API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | CallRecords.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /communications/callRecords
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name      |Description|
|:----------|:----------|
| $select | Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources. |
| $filter | Use the `$filter` query parameter to retrieve just a subset of a collection. Only supported for `startDateTime` and participant `participants_v2.id` fields. |


## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |
| Prefer: odata.maxpagesize={x} | Specifies a preferred integer {x} page size for paginated results. Optional. This value must be equal to or less than the maximum allowable page size. |
| Prefer: include-unknown-enum-members | Enables evolveable enum values beyond the sentinel value. See [Best Practices](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations) for more information. Optional. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.callRecord](../resources/callrecords-callrecord.md) objects in the response body.

## Examples

### Example 1: Get basic details

#### Request

The following is an example of a request to list all available call records.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords
```
---

#### Response

The following is an example of the response. If the list is truncated, a `callRecord@odata.nextLink` value will be provided to retrieve the next page of sessions. The default page size for call records is 60 entries.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords/$entity",
    "version": 1,
    "type": "peerToPeer",
    "modalities": [
        "audio"
    ],
    "lastModifiedDateTime": "2020-02-25T19:00:24.582757Z",
    "startDateTime": "2020-02-25T18:52:21.2169889Z",
    "endDateTime": "2020-02-25T18:52:46.7640013Z",
    "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
    "organizer": {
        "user": {
            "id": "821809f5-0000-0000-0000-3b5136c0e777",
            "displayName": "Abbie Wilkins",
            "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
        }
    },
    "participants": [
        {
            "user": {
                "id": "821809f5-0000-0000-0000-3b5136c0e777",
                "displayName": "Abbie Wilkins",
                "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
            }
        },
        {
            "user": {
                "id": "f69e2c00-0000-0000-0000-185e5f5f5d8a",
                "displayName": "Owen Franklin",
                "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
            }
        }
    ]
}
```

### Example 2: Filter by startDateTime

#### Request

The following is an example of a request to get call records filtered by a specific time period using `startDateTime`. 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_expanded"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords?$filter=startDateTime ge 2023-04-21 and startDateTime lt 2023-05-04
```

---

#### Response

The following is an example of the response. If the list is truncated, a `callRecord@odata.nextLink` value will be provided to retrieve the next page of sessions. The default page size for call records is 60 entries.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   TODO: Put example response here
}
```

### Example 3: Filter by participant id

#### Request

The following is an example of a request to get call records filtered by a specific participant id using their Azure Active Directory (Entra) object id. 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_expanded"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords?$filter=participants_v2/any(p:p/id eq '00000000-0000-0000-0000-000000000000')
```

---

#### Response

The following is an example of the response. If the list is truncated, a `callRecord@odata.nextLink` value will be provided to retrieve the next page of sessions. The default page size for call records is 60 entries.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   TODO: Put example response here
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get callRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


