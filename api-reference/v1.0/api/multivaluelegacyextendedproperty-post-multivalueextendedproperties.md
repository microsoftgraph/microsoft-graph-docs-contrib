---
title: "Create multi-value extended property"
description: "Create one or more multi-value extended properties in a new or existing instance of a resource. "
ms.localizationpriority: medium
author: "abheek-das"
ms.prod: non-product-specific
doc_type: apiPageType
---

# Create multi-value extended property

Namespace: microsoft.graph

Create one or more multi-value extended properties in a new or existing instance of a resource.

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
Depending on the resource you're creating the extended property in and the permission type (delegated or application) you request, the permission specified in the following table is the minimum required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [calendar](../resources/calendar.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [contactFolder](../resources/contactfolder.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite |  Calendars.ReadWrite|
| group [calendar](../resources/calendar.md) | Group.ReadWrite.All | Not supported | Not supported |
| group [event](../resources/event.md) | Group.ReadWrite.All | Not supported | Not supported |
| group [post](../resources/post.md) | Group.ReadWrite.All | Not supported | Not supported |
| [mailFolder](../resources/mailfolder.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite |

## HTTP request
You can create extended properties in a new or existing resource instance.

To create one or more extended properties in a _new_ resource instance, use the same REST request as creating the
instance, and include the properties of the new resource instance _and extended property_ in the request body.
Note that some resources support creation in more than one way. For more information on creating these resource instances,
see the corresponding topics for creating a [message](../resources/message.md), [mailFolder](../api/user-post-mailfolders.md),
[event](../api/user-post-events.md), [calendar](../api/user-post-calendars.md),
[contact](../api/user-post-contacts.md), [contactFolder](../api/user-post-contactfolders.md),
[group event](../api/group-post-events.md), and [group post](../resources/post.md).

The following is the syntax of the requests.

<!-- { "blockType": "ignored" } -->
```http
POST /me/messages
POST /users/{id|userPrincipalName}/messages
POST /me/mailFolders/{id}/messages

POST /me/mailFolders
POST /users/{id|userPrincipalName}/mailFolders

POST /me/events
POST /users/{id|userPrincipalName}/events

POST /me/calendars
POST /users/{id|userPrincipalName}/calendars

POST /me/contacts
POST /users/{id|userPrincipalName}/contacts

POST /me/contactFolders
POST /users/{id|userPrincipalName}/contactFolders

POST /groups/{id}/events

POST /groups/{id}/threads/{id}/posts/{id}/reply
POST /groups/{id}/conversations/{id}/threads/{id}/posts/{id}/reply
POST /groups/{id}/threads/{id}/reply
POST /groups/{id}/conversations/{id}/threads/{id}/reply
POST /groups/{id}/threads
POST /groups/{id}/conversations
```

To create one or more extended properties in an existing resource instance, specify the instance in the
request, and include the extended property in the request body.

**Note** You cannot create an extended property in an existing group post.

<!-- { "blockType": "ignored" } -->
```http
PATCH /me/messages/{id}
PATCH /users/{id|userPrincipalName}/messages/{id}
PATCH /me/mailFolders/{id}/messages/{id}

PATCH /me/mailFolders/{id}
PATCH /users/{id|userPrincipalName}/mailFolders/{id}

PATCH /me/events/{id}
PATCH /users/{id|userPrincipalName}/events/{id}

PATCH /me/calendars/{id}
PATCH /users/{id|userPrincipalName}/calendars/{id}

PATCH /me/contacts/{id}
PATCH /users/{id|userPrincipalName}/contacts/{id}

PATCH /me/contactFolders/{id}
PATCH /users/{id|userPrincipalName}/contactFolders/{id}

PATCH /groups/{id}/events/{id}
```

## Request headers
| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body

Provide a JSON body of each [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) object in the
**multiValueExtendedProperties** collection property of the resource instance.

|Property|Type|Description|
|:-----|:-----|:-----|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection| An array of one or more multi-valued extended properties. |
|id|String|For each property in the **multiValueExtendedProperties** collection, specify this to identify the property. It must follow one of the supported formats. See [Outlook extended properties overview](../resources/extended-properties-overview.md) for more information. Required.|
|value|string|For each property in the **multiValueExtendedProperties** collection, specify the property value. Required.|

When creating an extended property in a _new_ resource instance, in addition to the
new **multiValueExtendedProperties** collection, provide a JSON representation of that resource instance as well (that is, a [message](../resources/message.md),
[mailFolder](../resources/mailfolder.md), [event](../resources/event.md), etc.).


## Response

#### Response code
An operation successful in creating an extended property in a new resource instance returns `201 Created`, except in a new group post,
depending on the method used, the operation can return `200 OK` or `202 Accepted`.

In an existing resource instance, a successful create operation returns `200 OK`.


#### Response body

When creating an extended property in a supported resource other than [group post](../resources/post.md), the response includes only
the new or existing instance but not the new extended property. To see the newly
created extended property, [get the instance expanded with the extended property](../api/multivaluelegacyextendedproperty-get.md).

When creating an extended property in a _new_ group post, the response includes only a response code but not the new post nor
the extended property. You cannot create an extended property in an existing group post.


## Examples
### Example 1
#### Request

The first example creates a multi-value extended property in a new event all in the same POST operation. Apart from the properties you'd normally
include for a new event, the request body includes the **multiValueExtendedProperties** collection which contains one extended property.
The request body includes the following for that multi-value extended property:

- **id** which specifies the property as an array of strings with the specified GUID and the name `Recreation`.
- **value** which specifies `Recreation` as an array of 3 string values, `["Food", "Hiking", "Swimming"]`.


<!-- { "blockType": "ignored", "name" : "multivaluelegacyextendedpropertypostmultivalueextendedproperties" } -->

```http
POST https://graph.microsoft.com/v1.0/me/events
Content-Type: application/json

{
  "subject": "Family reunion",
  "body": {
    "contentType": "HTML",
    "content": "Let's get together this Thanksgiving!"
  },
  "start": {
      "dateTime": "2015-11-26T09:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "end": {
      "dateTime": "2015-11-29T21:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "attendees": [
    {
      "emailAddress": {
        "address": "Terrie@contoso.com",
        "name": "Terrie Barrera"
      },
      "type": "Required"
    },
    {
      "emailAddress": {
        "address": "Lauren@contoso.com",
        "name": "Lauren Solis"
      },
      "type": "Required"
    }
  ],
  "multiValueExtendedProperties": [
     {
           "id":"StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation",
           "value": ["Food", "Hiking", "Swimming"]
     }
  ]
}
```

#### Response

<!-- {
  "blockType": "response"  
} -->

```http
  HTTP/1.1 200 OK
```

<!--
  Content-type: application/json
  {
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('4d29052a-70e8-4251-a7de-542b522cdf25')/events/$entity",
    "@odata.etag": "W/\"F458GvdYA0ijqgp2gyJwzAAAOCEJmw==\"",
    "id": "AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQBGAAAAAABaZwRaNsIxTp0lpjY1il_IBwAXjnwa91gDSKOqCnaDInDMAAAAAAENAAAXjnwa91gDSKOqCnaDInDMAAA4KToJAAA=",
    "createdDateTime": "2023-06-23T00:52:52.5418Z",
    "lastModifiedDateTime": "2023-06-23T00:52:53.570523Z",
    "changeKey": "F458GvdYA0ijqgp2gyJwzAAAOCEJmw==",
    "categories": [],
    "transactionId": null,
    "originalStartTimeZone": "Pacific Standard Time",
    "originalEndTimeZone": "Pacific Standard Time",
    "iCalUId": "040000008200E00074C5B7101A82E008000000001076340A6DA5D9010000000000000000100000003EE8BF77931D7D40B835A528EFD465E8",
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
    "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADI0NzVmYjQ0LWQyZTItNDIxYS1iMWE2LTIyZGJiOGM0N2YzMQBGAAAAAABaZwRaNsIxTp0lpjY1il%2BIBwAXjnwa91gDSKOqCnaDInDMAAAAAAENAAAXjnwa91gDSKOqCnaDInDMAAA4KToJAAA%3D&exvsurl=1&path=/calendar/item",
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
        "dateTime": "2015-11-26T09:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "end": {
        "dateTime": "2015-11-29T21:00:00.0000000",
        "timeZone": "Pacific Standard Time"
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
    "onlineMeeting": null
    
  }
```
-->

A successful response is indicated by an `HTTP 201 Created` response code, and includes the new event
in the response body, similar to the response from [creating just an event](../api/user-post-events.md).
The response does not include any newly created extended properties.

To see the newly created extended property, [get the event expanded with the extended property](../api/multivaluelegacyextendedproperty-get.md).


****
### Example 2
#### Request

The second example creates one multi-value extended property for the specified message. That extended property is the only
element in the **multiValueExtendedProperties** collection. The request body includes the following for the
extended property:

- **id** specifies the property as an array of strings with the specified GUID and the name `Palette`.
- **value** specifies `Palette` as an array of 3 string values, `["Green", "Aqua", "Blue"]`.

<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/v1.0/me/messages('AAMkAGE1M2_as77AACHsLrBBBA=')

Content-Type: application/json

{
  "multiValueExtendedProperties": [
      {
         "id":"StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette",
         "value":["Green", "Aqua", "Blue"]
      }
    ]
}
```

#### Response

A successful response is indicated by an `HTTP 200 OK` response code, and includes the specified message in the response body,
similar to the response from [updating a message](../api/message-update.md). The response does not
include the newly created extended property.

To see the newly created extended property, [get the message expanded with the extended property](../api/multivaluelegacyextendedproperty-get.md).


<!-- This page was manually created. -->
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create a single-value extended property",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->





