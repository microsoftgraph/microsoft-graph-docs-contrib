---
title: "List participants_v2"
description: "Get the list of participant objects associated with a callRecord."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "apiPageType"
---

# List participants_v2

Namespace: microsoft.graph.callRecords

Get the list of [participant](../resources/callrecords-participant.md) objects associated with a [callRecord](../resources/callrecords-callrecord.md).

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
| Authorization | Bearer {token} |
| Prefer: odata.maxpagesize={x} | Specifies a preferred integer {x} page size for paginated results. This value must be equal to or less than the maximum allowable page size. Optional. |
| Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |
| Prefer: omit-values=nulls | Removes null or empty values from the response. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.callRecords.participant](../resources/callrecords-participant.md) objects in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an **@odata.nextLink** property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the **@odata.nextLink** URL in each response, until all the results are returned. For more information, see [Paging Microsoft Graph data in your app](/graph/paging). The maximum page size for participants is 130 entries.

## Examples

### Request

The following example shows a request to get the list of [participant](../resources/callrecords-participant.md) objects for a [callRecord](../resources/callrecords-callrecord.md).

<!-- {
  "blockType": "request",
  "name": "list_callrecord_participants_v2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/communications/callRecords/614e3ff0-4728-4394-8c03-52fb3b967fde/participants_v2
```

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
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/communications/callRecords/614e3ff0-4728-4394-8c03-52fb3b967fde/participants_v2",
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
