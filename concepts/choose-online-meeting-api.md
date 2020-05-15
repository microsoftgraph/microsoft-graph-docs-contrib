---
title: "Choose an API in Microsoft Graph to create and join online meetings"
description: "You'll have the flexibility to create a meeting that takes place in the future, or instantaneously"
author: "angelgolfer-ms"
localization_priority: Priority
---

# Choose an API in Microsoft Graph to create and join online meetings

Microsoft Graph offers 2 API sets to arrange and join online meetings:

- Calendar API: use the [event](/graph/api/resources/event) resource.
- Cloud communications API: use the [onlineMeeting](/graph/api/resources/onlineMeeting) resource.

Both APIs support Microsoft Teams or Skype as meeting providers.

## Considerations for choosing an API for your scenario

Choose the calendar API for a convenient, streamlined integration with Outlook calendar:
- Programmatic support:
  - Directly create or update an event as an online meeting in the Outlook calendar, inserting a join-Teams-meeting blob in the Outlook calendar event.
  - Get properties for joining meeting over the Internet or by dialing in.
- The attendee UI experience with the resultant event is in full parity with any event created through the Outlook calendar UI:
  - Attendees can choose to meet online or in person.
  - Attendees can click in the join-Teams-meeting blob to join meeting over the Internet or by dialing in.
  - Attendees can assume rich features of Teams, including video conferencing and meeting lobby.

Choose the cloud communications API for programmatic support of one or more of the following capabilities:
- Integrating online meeting information with line of business or other apps, in addition to Outlook calendar.
- The flexibility to meet online instantly without scheduling on a calendar.
- Locale-based join information (preview).
- Joining meeting over the Internet or by dialing in.
- Video-conferencing.
- Additional security features such as meeting lobby and automating attendee admission (preview).
- Associating meeting with a Microsoft Teams chat.

## Comparing the APIs

The following table details the differences at the API level. 


| Online meeting feature | Calendar API (event resource) | Cloud communication API (onlineMeeting resource)             |
|:-----------------------|:------------------------------|:--------------------------------------------------------------
| Integration with a calendar item | Use the **isOnlineMeeting** and **onlineMeetingProvider** properties of an Outlook calendar [event](/graph/api/resources/event). <br> Automatically integrates with an Outlook calendar **event** when [creating](/graph/api/user-post-events) the event or [updating](/graph/api/event-update) it as an online meeting.<br> | [Online meeting information](/graph/api/resources/onlinemeetinginfo) is accessible independent of a particular calendar type. <br> [Create](/graph/api/application-post-onlinemeetings) an online meeting, then explicitly copy and make the online meeting information available in an Outlook calendar event or in other apps. <br> Available in preview: [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-beta) an online meeting, and use the returned **externalId** property to streamline embedding the resultant meeting in a third-party calendar. |
| Meeting ad hoc | Always schedules the online meeting for the specified **event** start and end times. Offers [online meeting information](/graph/api/resources/onlinemeetinginfo) in **onlineMeeting** that is valid for use during and outside of the scheduled meeting time.| Through the **onlineMeeting** property, access **joinWebUrl** to start an ad hoc meeting that starts instantly.<br> Flexible for meeting ad hoc without having to set **startDateTime** and **endDateTime** of **onlineMeeting**. |
| Locale-based join information | No direct API integration. | Use the `Accept-Language` HTTP header (preview) when creating an online meeting. <br> See [example](/graph/api/application-post-onlinemeetings?view=graph-rest-beta#example-2-create-an-online-meeting-with-user-token). |
| Joining over Internet (VoIP) | Through the **onlineMeeting** property, access **joinUrl**.  | Use the **joinWebUrl** property. |
| Joining by dial-in | Through the **onlineMeeting** property, access: <br> **conferenceId**, **quickDial**, **phones**, **tollFreeNumbers**, **tollNumber**. | Through the **audioConferencing** property, access: <br> - **conferenceId**, **tollFreeNumber**, **tollNumber**.<br> - **dialinUrl** property for an externally-accessible web page that contains dial-in info to facilitate integration with third-party apps. |
| Joining by video conferencing (audio and video) | No direct API integration. | Use the **videoTeleconferenceId** property. |
| Meeting lobby and automating attendee admission into online meeting | No direct API integration.<br> In the injected join-Teams-meeting blob of the event, attendee can click a **Meeting options** link to access meeting lobby, if enabled by the administrator. |  Use the **autoAdmittedUsers** property (preview).<br> Differentiates users from the organizer’s company and federated companies, and other users including anonymous users.  |
| Relating to a Teams chat | No direct API integration. | Use the **chatInfo** property. |


## See also
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md)
- [Use the cloud communications API to create or join online meetings](cloud-communications-online-meetings.md)