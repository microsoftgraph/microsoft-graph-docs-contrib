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
### Example 1: Create multi-value extended property for event
#### Request

The first example creates a multi-value extended property in a new event all in the same POST operation. Apart from the properties you'd normally
include for a new event, the request body includes the **multiValueExtendedProperties** collection which contains one extended property.
The request body includes the following for that multi-value extended property:

- **id** which specifies the property as an array of strings with the specified GUID and the name `Recreation`.
- **value** which specifies `Recreation` as an array of 3 string values, `["Food", "Hiking", "Swimming"]`.


# [HTTP](#tab/http)
<!-- { 
  "blockType": "request", 
  "name" : "multivaluelegacyextendedpropertypostmultivalueextendedproperties_v1_e1" 
} -->

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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->

```http
HTTP/1.1 200 OK
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

A successful response is indicated by an `HTTP 201 Created` response code, and includes the new event
in the response body, similar to the response from [creating just an event](../api/user-post-events.md).
The response does not include any newly created extended properties.

To see the newly created extended property, [get the event expanded with the extended property](../api/multivaluelegacyextendedproperty-get.md).


### Example 2: Create multi-value extended properties for message
#### Request

The second example creates one multi-value extended property for the specified message. That extended property is the only
element in the **multiValueExtendedProperties** collection. The request body includes the following for the
extended property:

- **id** specifies the property as an array of strings with the specified GUID and the name `Palette`.
- **value** specifies `Palette` as an array of 3 string values, `["Green", "Aqua", "Blue"]`.

# [HTTP](#tab/http)
<!-- { 
  "blockType": "request", 
  "name" : "multivaluelegacyextendedpropertypostmultivalueextendedproperties_v1_e2" 
} -->
```http
PATCH https://graph.microsoft.com/v1.0/me/messages/AAMkAGE1M2_as77AACHsLrBBBA=
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/multivaluelegacyextendedpropertypostmultivalueextendedproperties-v1-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

A successful response is indicated by an `HTTP 200 OK` response code, and includes the specified message in the response body,
similar to the response from [updating a message](../api/message-update.md). The response does not
include the newly created extended property.

To see the newly created extended property, [get the message expanded with the extended property](../api/multivaluelegacyextendedproperty-get.md).

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('c77f324266ba')/messages/$entity",
    "@odata.etag": "W/\"FwAAABYBVGD/o\"",
    "id": "AAMkADI4YzgwfyKAAA=",
    "createdDateTime": "2023-06-26T15:46:05Z",
    "lastModifiedDateTime": "2023-06-28T23:28:50Z",
    "changeKey": "FwAAGSOkFBVGD/o",
    "categories": [],
    "receivedDateTime": "2023-06-26T15:46:05Z",
    "sentDateTime": "2023-06-26T15:46:02Z",
    "hasAttachments": false,
    "internetMessageId": "<1c55OUTLOOK.COM>",
    "subject": "Undeliverable: Celebrate Thanksgiving",
    "bodyPreview": "Delivery has failed to these recipients or groups:Terrie@contoso.comYour message wasn't delivered because the recipient's email provider rejected it.Diagnostic information for administrators:Generating server: CYYP2AM",
    "importance": "normal",
    "parentFolderId": "AAMkADI4YzgwEMAAA=",
    "conversationId": "AAQkADI4Yzej5xL5tI=",
    "conversationIndex": "AQHZq6PnEvm0g==",
    "isDeliveryReceiptRequested": null,
    "isReadReceiptRequested": false,
    "isRead": false,
    "isDraft": false,
    "webLink": "https://outlook.office365.com/owa/?ItemID=AAMQ50XGSOkFdc5AABVNfyKAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
    "inferenceClassification": "focused",
    "body": {
        "contentType": "html",
        "content": "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body><p><b><font color=\"#000066\" size=\"3\" face=\"Arial\">Delivery has failed to these recipients or groups:</font></b></p><font color=\"#000000\" size=\"2\" face=\"Tahoma\"><p><a href=\"mailto:Terrie@contoso.com\">Terrie@contoso.com</a><br></font><font color=\"#000000\" size=\"3\" face=\"Arial\">Your message wasn't delivered because the recipient's email provider rejected it.<br></font><font color=\"#000000\" size=\"2\" face=\"Tahoma\"><br></p></font><br><br><br><br><br><br><font color=\"#808080\" size=\"2\" face=\"Tahoma\"><p><b>Diagnostic information for administrators:</b></p><p>Generating server: CYYP223MB0786.NAMP223.PROD.OUTLOOK.COM<br></p><p>Terrie@contoso.com<br>Remote server returned '550 5.7.501 Service unavailable. Spam abuse detected from IP range. For more information please go to http://go.microsoft.com/fwlink/?LinkId=526653. S(2017052602) [SJ1P223MB0482.NAMP223.PROD.OUTLOOK.COM 2023-06-26T15:46:02.597Z 08DB747F4B5EA12D]'<br></p><p>Original message headers:</p><pre>Received: from CYYP223MB0786.NAMP223.PROD.OUTLOOK.COM ([fe80::f789:3002:5514:2e9d]) by CYYP223MB0786.NAMP223.PROD.OUTLOOK.COM ([fe80::f789:3002:5514:2e9d%3]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023 15:46:02 +0000MIME-Version: 1.0Content-Type: text/plainDate: Mon, 26 Jun 2023 15:46:02 +0000Message-ID:&lt;CYYP223MB078658B6CCF8BDDCC31FA5E6AC26A@CYYP223MB0786.NAMP223.PROD.OUTLOOK.COM&gt;Subject: Celebrate Thanksgiving</pre></font></body></html>"
    },
    "sender": {
        "emailAddress": {
            "name": "Microsoft Outlook",
            "address": "MicrosoftExchange329e71ec88ae4615bbc36ab6ce41109e@contoso.com"
        }
    },
    "from": {
        "emailAddress": {
            "name": "Microsoft Outlook",
            "address": "MicrosoftExchange329e71ec88ae4615bbc36ab6ce41109e@contoso.com"
        }
    },
    "toRecipients": [
        {
            "emailAddress": {
                "name": "Terrie@contoso.com",
                "address": "Terrie@contoso.com"
            }
        }
    ],
    "ccRecipients": [],
    "bccRecipients": [],
    "replyTo": [],
    "flag": {
        "flagStatus": "notFlagged"
    }
}
```

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





