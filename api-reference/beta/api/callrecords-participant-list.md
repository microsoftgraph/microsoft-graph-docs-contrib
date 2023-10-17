---
title: "List callRecord participants"
description: "Retrieve the list of participants for a callRecord."
ms.localizationpriority: medium
author: "mcm223"
ms.prod: "cloud-communications"
doc_type: "apiPageType"
---

# List callRecord participants

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [participants](../resources/callrecords-participant.md) associated with a [callRecord](../resources/callrecords-callrecord.md) object.

If the participant list is truncated, a `participants_v2@odata.nextLink` value will be provided to retrieve the next page of participants. The maximum page size for participants is 130 entries.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

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

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name      |Description|
|:----------|:----------|
| $select | Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources.|

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |
| Prefer: odata.maxpagesize={x} | Specifies a preferred integer {x} page size for paginated results. Optional. This value must be equal to or less than the maximum allowable page size. |
| Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. See [Best Practices](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations) for more information. Optional. |
| Prefer: omit-values=nulls | Removes null or empty values from the response. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested list of [participant](../resources/callrecords-participant.md) objects in the response body.

## Examples

### Example 1: Get participant list

#### Request

Here's an example of the request to get the list of [participants](../resources/callrecords-participant.md) for a [callRecord](../resources/callrecords-callrecord.md).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_sessions"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/{id}/participants_v2
```

---

#### Response

Here's an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.participant",
  "isCollection": true
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
					"@odata.type": "#microsoft.graph.callRecords.userIdentity",
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
					"@odata.type": "#microsoft.graph.callRecords.userIdentity",
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


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List participants",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


