# user: findMeetingTimes
Find time and locations to meet based on attendee availability, location or time constraints.

### Prerequisites
The following **scopes** are required to execute this API: *Calendars.Read*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/findMeetingTimes
POST /users/<id|userPrincipalName>/findMeetingTimes
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|


### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|attendees|attendeeBase|A collection that includes the response status (None = 0, Organizer=1, TentativelyAccepted=2, Accepted=3, Declined=4, NotResponded=5), type (Required=0, Optional=1, Resource=2) and email address of each of the attendees. |
|locationConstraint|locationConstraint|Conditions stated by a client for the location of a meeting.|
|timeConstraint|timeConstraint|Conditions stated by a client for the time periods for an acitivity of a certain nature.|
|meetingDuration|duration|The length of time for the meeting, denoted in [ISO8601](http://www.iso.org/iso/iso8601) format. For example, 1 hour is denoted as 'PT1H', where 'P' is the duration designator, 'T' is the time designator, 'H' is the hour designator.  |
|maxCandidates|int32|The maximum number of meeting time suggestions to be returned.|
|isOrganizerOptional|boolean|`True` if the organizer's attendance is not necessary, `false` otherwise.|
|returnSuggestionHints|boolean|`True` to return the reasons for suggesting the meeting time, `false` otherwise.|

### Response
If successful, this method returns `200, OK` response code and a collection of [meetingTimeCandidate](../resources/meetingtimecandidate.md) objects in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "user_findmeetingtimes"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/findMeetingTimes
Content-type: application/json
Content-length: 743

{
  "attendees": [
    {
      "type": "type-value"
    }
  ],
  "locationConstraint": {
    "isRequired": true,
    "suggestLocation": true,
    "locations": [
      {
        "resolveAvailability": true
      }
    ]
  },
  "timeConstraint": {
    "activityDomain": "activityDomain-value",
    "timeslots": [
      {
        "start": {
          "date": "datetime-value",
          "time": "datetime-value",
          "timeZone": "timeZone-value"
        },
        "end": {
          "date": "datetime-value",
          "time": "datetime-value",
          "timeZone": "timeZone-value"
        }
      }
    ]
  },
  "meetingDuration": "datetime-value",
  "maxCandidates": 99,
  "isOrganizerOptional": true,
  "returnSuggestionHints": true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingTimeCandidate",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1140

{
  "value": [
    {
      "meetingTimeSlot": {
        "start": {
          "date": "datetime-value",
          "time": "datetime-value",
          "timeZone": "timeZone-value"
        },
        "end": {
          "date": "datetime-value",
          "time": "datetime-value",
          "timeZone": "timeZone-value"
        }
      },
      "confidence": 99,
      "score": 99,
      "suggestionHint": "suggestionHint-value",
      "organizerAvailability": "organizerAvailability-value",
      "attendeeAvailability": [
        {
          "attendee": {
            "type": "type-value"
          },
          "availability": "availability-value"
        }
      ],
      "locations": [
        {
          "displayName": "displayName-value",
          "locationEmailAddress": "locationEmailAddress-value",
          "address": {
            "type": "type-value",
            "postOfficeBox": "postOfficeBox-value",
            "street": "street-value",
            "city": "city-value",
            "state": "state-value",
            "countryOrRegion": "countryOrRegion-value",
            "postalCode": "postalCode-value"
          },
          "coordinates": {
            "altitude": 99,
            "latitude": 99,
            "longitude": 99,
            "accuracy": 99,
            "altitudeAccuracy": 99
          },
          "locationUri": "locationUri-value"
        }
      ]
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: findMeetingTimes",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->