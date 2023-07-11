---
title: "Get multiValueLegacyExtendedProperty"
description: "expand`."
ms.localizationpriority: medium
author: "abheek-das"
ms.prod: non-product-specific
doc_type: apiPageType
---

# Get multiValueLegacyExtendedProperty

Namespace: microsoft.graph

Get a resource instance that contains a multi-value extended property by using `$expand`.

Using the query parameter `$expand` allows you to get the specified instance expanded with the indicated extended
property. This is currently the only way to get the [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md)
object that represents an extended property.

The following user resources are supported:

- [calendar](../resources/calendar.md)
- [contact](../resources/contact.md)
- [contactFolder](../resources/contactfolder.md)
- [event](../resources/event.md)
- [mailFolder](../resources/mailfolder.md)
- [message](../resources/message.md)

As well as the following group resources:

- group [calendar](../resources/calendar.md)
- group [event](../resources/event.md)
- group [post](../resources/post.md)

See [Extended properties overview](../resources/extended-properties-overview.md) for more information about when to use
open extensions or extended properties, and how to specify extended properties.

## Permissions
Depending on the resource you're getting the extended property from and the permission type (delegated or application) you request, the permission specified in the following table is the minimum required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [calendar](../resources/calendar.md) | Calendars.Read | Calendars.Read | Calendars.Read |
| [contact](../resources/contact.md) | Contacts.Read | Contacts.Read | Contacts.Read |
| [contactFolder](../resources/contactfolder.md) | Contacts.Read | Contacts.Read | Contacts.Read |
| [event](../resources/event.md) | Calendars.Read | Calendars.Read |  Calendars.Read|
| group [calendar](../resources/calendar.md) | Group.Read.All | Not supported | Not supported |
| group [event](../resources/event.md) | Group.Read.All | Not supported | Not supported |
| group [post](../resources/post.md) | Group.Read.All | Not supported | Group.Read.All |
| [mailFolder](../resources/mailfolder.md) | Mail.Read | Mail.Read | Mail.Read |
| [message](../resources/message.md) | Mail.Read | Mail.Read | Mail.Read |

## HTTP request

Get a resource instance expanded with the extended property which matches a filter on the
**id** property. Make sure you apply
[URL encoding](https://www.w3schools.com/tags/ref_urlencode.asp) to the space characters in the filter string.

Get a **message** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /me/messages/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/messages/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /me/mailFolders/{id}/messages/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```
Get a **mailFolder** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/mailFolders/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```

Get an **event** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /me/events/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/events/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```
Get a **calendar** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /me/calendars/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/calendars/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```
Get a **contact** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /me/contacts/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/contacts/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /me/contactFolders/{id}/contacts/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/contactFolders/{id}/contacts/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```
Get a **contactFolder** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /me/contactfolders/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /users/{id|userPrincipalName}/contactFolders/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```
Get a group **event** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/events/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```

Get a group **post** instance:
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/threads/{id}/posts/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
GET /groups/{id}/conversations/{id}/threads/{id}/posts/{id}?$expand=multiValueExtendedProperties($filter=id eq '{id_value}')
```

## Path parameters
|Parameter|Type|Description|
|:-----|:-----|:-----|
|id_value|String|The ID of the extended property to match. It must follow one of the supported formats. See [Outlook extended properties overview](../resources/extended-properties-overview.md) for more information. Required.|

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code.

The response body includes an object representing the requested resource instance, expanded with the matching
[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) object.

## Example
##### Request
This example gets and expands the specified event by including a multi-value extended property. The filter returns the
extended property that has its **id** matching the string `StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation`
(with URL encoding removed here for ease of reading).

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "multivaluelegacyextendedpropertyget" } -->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/events/AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQBGAAAAAABaZwRaNsIxTp0lpjY1il_IBwAXjnwa91gDSKOqCnaDInDMAAAAAAENAAAXjnwa91gDSKOqCnaDInDMAAAtgOgIAAA=?$expand=multiValueExtendedProperties($filter=id%20eq%20'StringArray%20{66f5a359-4659-4830-9070-00050ec6ac6e}%20Name%20Recreation')

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/multivaluelegacyextendedpropertyget-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/multivaluelegacyextendedpropertyget-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/multivaluelegacyextendedpropertyget-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/multivaluelegacyextendedpropertyget-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/multivaluelegacyextendedpropertyget-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/multivaluelegacyextendedpropertyget-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/multivaluelegacyextendedpropertyget-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/multivaluelegacyextendedpropertyget-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

The response body includes all the properties of the specified event and extended property returned from the filter.

Note: The **event** object shown here is truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('4d29052a-70e8-4251-a7de-542b522cdf25')/events(multiValueExtendedProperties())/$entity",
    "@odata.etag": "W/\"F458GvdYA0ijqgp2gyJwzAAALXs9wA==\"",
    "id": "AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQBGAAAAAABaZwRaNsIxTp0lpjY1il_IBwAXjnwa91gDSKOqCnaDInDMAAAAAAENAAAXjnwa91gDSKOqCnaDInDMAAAtgOgIAAA=",
    "createdDateTime": "2023-06-13T23:13:17.305298Z",
    "lastModifiedDateTime": "2023-06-13T23:15:17.761448Z",
    "changeKey": "F458GvdYA0ijqgp2gyJwzAAALXs9wA==",
    "categories": [],
    "transactionId": null,
    "originalStartTimeZone": "Pacific Standard Time",
    "originalEndTimeZone": "Pacific Standard Time",
    "iCalUId": "040000008200E00074C5B7101A82E00800000000742AF7A24C9ED901000000000000000010000000C525CA622368B44D89B3B78E4B44A92A",
    "reminderMinutesBeforeStart": 15,
    "isReminderOn": true,
    "hasAttachments": false,
    "subject": "Family reunion",
    "bodyPreview": "Let's get together this Thanksgiving!",
    "importance": "normal",
    "sensitivity": "normal",
    "isAllDay": false,
    "isCancelled": false,
    "isOrganizer": true,
    "responseRequested": true,
    "seriesMasterId": null,
    "showAs": "busy",
    "type": "singleInstance",
    "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQBGAAAAAABaZwRaNsIxTp0lpjY1il%2BIBwAXjnwa91gDSKOqCnaDInDMAAAAAAENAAAXjnwa91gDSKOqCnaDInDMAAAtgOgIAAA%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl": null,
    "isOnlineMeeting": false,
    "onlineMeetingProvider": "unknown",
    "allowNewTimeProposals": true,
    "occurrenceId": null,
    "isDraft": false,
    "hideAttendees": false,
    "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
    },
    "body": {
        "contentType": "html",
        "content": "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Let's get together this Thanksgiving!</body></html>"
    },
    "start": {
        "dateTime": "2015-11-26T17:00:00.0000000",
        "timeZone": "UTC"
    },
    "end": {
        "dateTime": "2015-11-30T05:00:00.0000000",
        "timeZone": "UTC"
    },
    "location": {
        "displayName": "",
        "locationType": "default",
        "uniqueIdType": "unknown",
        "address": {},
        "coordinates": {}
    },
    "locations": [],
    "recurrence": null,
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Terrie Barrera",
                "address": "Terrie@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Lauren Solis",
                "address": "Lauren@contoso.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "MOD Administrator",
            "address": "admin@M365x39866865.OnMicrosoft.com"
        }
    },
    "onlineMeeting": null,
    "multiValueExtendedProperties": [
        {
            "id": "StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation",
            "value": [
                "Food",
                "Hiking",
                "Swimming"
            ]
        }
    ],
    "calendar@odata.associationLink": "https://graph.microsoft.com/v1.0/users('4d29052a-70e8-4251-a7de-542b522cdf25')/calendars('AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQAuAAAAAABaZwRaNsIxTp0lpjY1il_IAQAXjnwa91gDSKOqCnaDInDMAAAAAAENAAA=')/$ref",
    "calendar@odata.navigationLink": "https://graph.microsoft.com/v1.0/users('4d29052a-70e8-4251-a7de-542b522cdf25')/calendars('AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQAuAAAAAABaZwRaNsIxTp0lpjY1il_IAQAXjnwa91gDSKOqCnaDInDMAAAAAAENAAA=')"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get multiValueLegacyExtendedProperty",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

