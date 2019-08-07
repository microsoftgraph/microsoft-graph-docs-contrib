---
title: "Propose new meeting times in Outlook"
description: "In Outlook, a meeting organizer can allow invitees to propose alternative meeting times."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Propose new meeting times in Outlook (preview)

In Outlook, a meeting organizer can allow invitees to propose alternative meeting times, if they cannot meet at the original set date/time. The organizer can then adjust the meeting time as appropriate.

Let's walk through an example: Alex invites Adele to lunch, Adele proposes an alternative date and time, and Alex accepts the proposal.
1. As the organizer, Alex sends a meeting request to Adele. He sets the **allowNewTimeProposals** property of the [event](/graph/api/resources/event?view=graph-rest-beta) to `true` to let Adele suggest another time if necessary.

    <!-- {
      "blockType": "request",
      "name": "create_event"
    }-->
    ```http
    POST https://graph.microsoft.com/testexchangebeta/me/events
    Prefer: outlook.timezone="Pacific Standard Time"
    Content-type: application/json

    {
      "subject": "Let's go for lunch",
      "body": {
        "contentType": "HTML",
        "content": "Does noon work for you?"
      },
      "start": {
          "dateTime": "2019-08-15T12:00:00",
          "timeZone": "Pacific Standard Time"
      },
      "end": {
          "dateTime": "2019-08-15T14:00:00",
          "timeZone": "Pacific Standard Time"
      },
      "location":{
          "displayName":"Harry's Bar"
      },
      "attendees": [
        {
          "emailAddress": {
          "address":"AdeleV@M365x454945.OnMicrosoft.com",
          "name": "Adele Vance"
          },
          "type": "required"
        }
      ],
      "allowNewTimeProposals": true
    }
```

Alex gets the following response: 
<!-- {
  "blockType": "response",
  "name": "create_event",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/testexchangebeta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events/$entity",
    "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAAAhBhkg==\"",
    "id": "AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR_YrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAENAAA0RfLCCxWuR42wWzJXJGu0AAACEhWOAAA=",
    "createdDateTime": "2019-08-01T06:41:07.805128Z",
    "lastModifiedDateTime": "2019-08-01T06:41:08.3298275Z",
    "changeKey": "NEXywgsVrkeNsFsyVyRrtAAAAhBhkg==",
    "categories": [],
    "originalStartTimeZone": "Pacific Standard Time",
    "originalEndTimeZone": "Pacific Standard Time",
    "uid": "040000008200E00074C5B7101A82E00800000000E32B59193448D501000000000000000010000000570482867663AB499FFA8A9979A0BD16",
    "reminderMinutesBeforeStart": 15,
    "isReminderOn": true,
    "hasAttachments": false,
    "subject": "Let's go for lunch",
    "bodyPreview": "Does noon work for you?",
    "importance": "normal",
    "sensitivity": "normal",
    "isAllDay": false,
    "isCancelled": false,
    "isOrganizer": true,
    "responseRequested": true,
    "seriesMasterId": null,
    "showAs": "busy",
    "type": "singleInstance",
    "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR%2BYrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAENAAA0RfLCCxWuR42wWzJXJGu0AAACEhWOAAA%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl": null,
    "allowNewTimeProposals": true,
    "recurrence": null,
    "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
    },
    "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nDoes late morning work for you?\r\n</body>\r\n</html>\r\n"
    },
    "start": {
        "dateTime": "2019-08-15T12:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "end": {
        "dateTime": "2019-08-15T14:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "location": {
        "displayName": "Harry's Bar",
        "locationType": "default",
        "uniqueId": "Harry's Bar",
        "uniqueIdType": "private"
    },
    "locations": [
        {
            "displayName": "Harry's Bar",
            "locationType": "default",
            "uniqueId": "Harry's Bar",
            "uniqueIdType": "private"
        }
    ],
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Adele Vance",
                "address": "AdeleV@M365x454945.OnMicrosoft.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@M365x454945.OnMicrosoft.com"
        }
    }
}
```

2. Adele receives the invitation in her Inbox as an [eventMessageRequest](/graph/api/resources/eventmessagerequest?view=graph-rest-beta). She notices the **allowNewTimeProposals** property is set. Using the **event** associated with this **eventMessageRequest**, she makes a tentative reply and proposes a different date/time in the **proposedNewTime** body parameter. She also sets the **sendResponse** parameter to true.

<!-- {
  "blockType": "request",
  "name": "event_tentativelyaccept"
}-->
```http
POST https://graph.microsoft.com/beta/me/events/AAMkADU5NzA2NjZlLTE3MTYtNDRkMS1iNzM5LTVkZmNiMDJkYjFlYgBGAAAAAABqzB47_dOSR74xIhiYWhznBwA0POeX5SHnRaRqdoI4oeRpAAAAAAENAAA0POeX5SHnRaRqdoI4oeRpAAAB_woNAAA=/tentativelyAccept
Content-type: application/json

{ 
  "comment": "Can you make the next day instead?", 
  "sendResponse": "true", 
  "proposedNewTime": {
      "Start": { 
          "DateTime": "2019-08-16T12:00:00", 
          "TimeZone": "Pacific Standard Time" 
      }, 
      "End": { 
          "DateTime": "2019-08-16T14:00:00", 
          "TimeZone": "Pacific Standard Time" 
      }
  }
} 
```

Adele's reply succeeds and she gets the following response:

<!-- {
  "blockType": "response",
  "name": "event_tentativelyaccept"
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```

3. Alex receives an email of the [eventMessageResponse](/graph/api/resources/event?view=graph-rest-beta) type. He notices the sender is Adele, the **responseType** is `tentativelyAccepted`, and Adele's proposal in the **proposedNewTime** property of the **eventMessageResponse**.

<!-- {
  "blockType": "request",
  "name": "get_messages"
}-->
```http
GET https://graph.microsoft.com/beta/me/messages
Prefer: outlook.timezone="Pacific Standard Time"
```

The following is the returned message which is an **eventMessageResponse** type and represents Adele's reply. For simplicity, the response includes a collection of only one message.

<!-- {
  "blockType": "response",
  "name": "get_messages",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Preference-Applied: outlook.timezone="Pacific Standard Time"

{
    "@odata.context": "https://graph.microsoft.com/testexchangebeta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/messages",
    "@odata.nextLink": "https://graph.microsoft.com/testexchangebeta/me/messages?$skip=108",
    "value": [
        {
            "@odata.type": "#microsoft.graph.eventMessageResponse",
            "@odata.etag": "W/\"DAAAABYAAAA0RfLCCxWuR42wWzJXJGu0AAACEGHC\"",
            "id": "AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR_YrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAEMAAA0RfLCCxWuR42wWzJXJGu0AAACEiVAAAA=",
            "createdDateTime": "2019-08-01T07:06:27Z",
            "lastModifiedDateTime": "2019-08-01T07:06:28Z",
            "changeKey": "DAAAABYAAAA0RfLCCxWuR42wWzJXJGu0AAACEGHC",
            "categories": [],
            "receivedDateTime": "2019-08-01T07:06:28Z",
            "sentDateTime": "2019-08-01T07:06:24Z",
            "hasAttachments": false,
            "internetMessageId": "<BY5PR17MB38759D33B8925D525A476F33D9DE0@BY5PR17MB3875.namprd17.prod.outlook.com>",
            "subject": "New Time Proposed: Let's go for lunch",
            "bodyPreview": "Can you make the next day instead?",
            "importance": "normal",
            "parentFolderId": "AQMkADAwAGVhM2E4Mi03OTczLTQzNzYtOWY5MS1mZGY2MGZhZGMxZDkALgAAA00SmuG-OgVDmDFH5iuwi6EBADRF8sILFa5HjbBbMlcka7QAAAIBDAAAAA==",
            "conversationId": "AAQkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQAQAMkh89RO3QpBiUCETTtVbIo=",
            "conversationIndex": "AdVINBlgySHz1E7dCkGJQIRNO1VsigAA4n6R",
            "isDeliveryReceiptRequested": null,
            "isReadReceiptRequested": false,
            "isRead": false,
            "isDraft": false,
            "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR%2BYrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAEMAAA0RfLCCxWuR42wWzJXJGu0AAACEiVAAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
            "inferenceClassification": "focused",
            "unsubscribeData": [],
            "unsubscribeEnabled": false,
            "meetingMessageType": "meetingTentativelyAccepted",
            "type": "singleInstance",
            "isOutOfDate": false,
            "isAllDay": false,
            "isDelegated": false,
            "responseType": "tentativelyAccepted",
            "mentionsPreview": null,
            "recurrence": null,
            "body": {
                "contentType": "html",
                "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nCan you make the next day instead?\r\n</body>\r\n</html>\r\n"
            },
            "sender": {
                "emailAddress": {
                    "name": "Adele Vance",
                    "address": "AdeleV@M365x454945.OnMicrosoft.com"
                }
            },
            "from": {
                "emailAddress": {
                    "name": "Adele Vance",
                    "address": "AdeleV@M365x454945.OnMicrosoft.com"
                }
            },
            "toRecipients": [
                {
                    "emailAddress": {
                        "name": "Alex Wilber",
                        "address": "AlexW@M365x454945.OnMicrosoft.com"
                    }
                }
            ],
            "ccRecipients": [],
            "bccRecipients": [],
            "replyTo": [],
            "flag": {
                "flagStatus": "notFlagged"
            },
            "startDateTime": {
                "dateTime": "2019-08-15T12:00:00.0000000",
                "timeZone": "Pacific Standard Time"
            },
            "endDateTime": {
                "dateTime": "2019-08-15T14:00:00.0000000",
                "timeZone": "Pacific Standard Time"
            },
            "location": {
                "displayName": "Harry's Bar",
                "locationType": "default",
                "uniqueIdType": "unknown"
            },
            "proposedNewTime": {
                "start": {
                    "dateTime": "2019-08-16T12:00:00", 
                    "timeZone": "Pacific Standard Time"
                },
                "end": {
                    "dateTime": "2019-08-16T14:00:00", 
                    "timeZone": "Pacific Standard Time"
                }
            }
        }
    ]
}
```


4. Alex decides to accept Adele's proposal, and lets Adele know by updating the **event** to the proposed **start** and **end** date/time.

<!-- {
  "blockType": "request",
  "name": "event_update"
}-->
```http
PATCH https://graph.microsoft.com/TESTEXCHANGEBETA/me/events/AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR_YrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAENAAA0RfLCCxWuR42wWzJXJGu0AAACEhWOAAA=
Prefer: outlook.timezone="Pacific Standard Time"
Content-type: application/json

{
    "start": {
        "dateTime": "2019-08-16T12:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "end": {
        "dateTime": "2019-08-16T14:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    }
}
```

Alex's update succeeds and gets the following response.

<!-- {
  "blockType": "response",
  "name": "event_update",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/TESTEXCHANGEBETA/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events/$entity",
    "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAAAhBizA==\"",
    "id": "AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR_YrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAENAAA0RfLCCxWuR42wWzJXJGu0AAACEhWOAAA=",
    "createdDateTime": "2019-08-01T06:41:07.805128Z",
    "lastModifiedDateTime": "2019-08-01T08:21:43.5696529Z",
    "changeKey": "NEXywgsVrkeNsFsyVyRrtAAAAhBizA==",
    "categories": [],
    "originalStartTimeZone": "Pacific Standard Time",
    "originalEndTimeZone": "Pacific Standard Time",
    "uid": "040000008200E00074C5B7101A82E00800000000E32B59193448D501000000000000000010000000570482867663AB499FFA8A9979A0BD16",
    "reminderMinutesBeforeStart": 15,
    "isReminderOn": true,
    "hasAttachments": false,
    "subject": "Let's go for lunch",
    "bodyPreview": "Does noon work for you?",
    "importance": "normal",
    "sensitivity": "normal",
    "isAllDay": false,
    "isCancelled": false,
    "isOrganizer": true,
    "responseRequested": true,
    "seriesMasterId": null,
    "showAs": "busy",
    "type": "singleInstance",
    "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADAwZWEzYTgyLTc5NzMtNDM3Ni05ZjkxLWZkZjYwZmFkYzFkOQBGAAAAAABNEprhvzoFQ5gxR%2BYrsIuhBwA0RfLCCxWuR42wWzJXJGu0AAAAAAENAAA0RfLCCxWuR42wWzJXJGu0AAACEhWOAAA%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl": null,
    "allowNewTimeProposals": true,
    "recurrence": null,
    "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
    },
    "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nDoes noon work for you?\r\n</body>\r\n</html>\r\n"
    },
    "start": {
        "dateTime": "2019-08-16T12:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "end": {
        "dateTime": "2019-08-16T14:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "location": {
        "displayName": "Harry's Bar",
        "locationType": "default",
        "uniqueId": "Harry's Bar",
        "uniqueIdType": "private"
    },
    "locations": [
        {
            "displayName": "Harry's Bar",
            "locationType": "default",
            "uniqueId": "Harry's Bar",
            "uniqueIdType": "private"
        }
    ],
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "notResponded",
                "time": "4501-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Adele Vance",
                "address": "AdeleV@M365x454945.OnMicrosoft.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@M365x454945.OnMicrosoft.com"
        }
    }
}
```

Note that in step 2, if Adele replies tentative, or declines, and does not propose a different date/time, then in step 3, Alex would receive an **eventMessageResponse** with the **responseType** being `tentativelyAccepted` (or `decline` if Adele declined), but without a **proposedNewTime** property. Alex would also notice that the associated **event** does not include the **proposedNewTime** property either.

## See also
- [Finding possible meeting times on the Outlook calendar](findmeetingtimes-example.md)
- [Getting the free/busy schedule for users and resources](outlook-get-free-busy-schedule.md)
- [Scheduling repeating appointments as recurring events in Outlook](outlook-schedule-recurring-events.md)