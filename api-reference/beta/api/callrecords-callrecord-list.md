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

### Example 1: List all records

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
      "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65')/organizer_v2/$entity",
      "organizer_v2": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "identity": {
          "user": {
            "id": "821809f5-0000-0000-0000-3b5136c0e777",
            "displayName": "Abbie Wilkins",
            "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
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

#### Request

The following is an example of a request to get call records filtered by a specific time period using `startDateTime`. 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_expanded"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords?$filter=startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z
```

---

#### Response

The following is an example of the response. If the list is truncated, a `callRecord@odata.nextLink` value will be provided to retrieve the next page of records. The default page size for call records is 60 entries.

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
        "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65')/organizer_v2/$entity",
        "organizer_v2": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "identity": {
            "user": {
              "id": "821809f5-0000-0000-0000-3b5136c0e777",
              "displayName": "Abbie Wilkins",
              "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
            }
          }
        }
      }
    ]
  }
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
GET https://graph.microsoft.com/beta/communications/callRecords?$filter=participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')
```

---

#### Response

The following is an example of the response. If the list is truncated, a `callRecord@odata.nextLink` value will be provided to retrieve the next page of records. The default page size for call records is 60 entries.

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
        "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('3cf3bbc8-b21d-4f2e-bfd0-b13603ae6c65')/organizer_v2/$entity",
        "organizer_v2": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "identity": {
            "user": {
              "id": "821809f5-0000-0000-0000-3b5136c0e777",
              "displayName": "Abbie Wilkins",
              "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
            }
          }
        }
      }
    ]
  }
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


