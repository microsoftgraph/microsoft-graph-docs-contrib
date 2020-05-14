---
title: "Choose an API in Microsoft Graph to create and join online meetings"
description: "You'll have the flexibility to create a meeting that takes place in the future, or instantaneously"
author: "angelgolfer_ms"
localization_priority: Priority
---

# Choose an API in Microsoft Graph to create and join online meetings

You can choose from two API sets in Microsoft Graph API to arrange and join an online meeting:

- Through the calendar API: use the [event](/graph/api/resources/event) resource
- Through the cloud communications API: use the [onlineMeeting](/graph/api/resources/onlineMeeting) resource

Both approaches support online meetings on Microsoft Teams or Skype. 

Choose the calendar API for a convenient, streamlined integration with Outlook calendar:
- To directly create or update an event as an online meeting in the Outlook calendar.
- To enable attendees to choose to meet online or in person.
- To enjoy full parity in the attendee experience of a join-Teams-meeting blob in the Outlook calendar event, to join meeting over the Internet or by dialing in.

Choose the cloud communications API if your scenario calls for one or more of the following capabilities:
- Integrating the online meeting information with line of business or other apps, in addition to Outlook calendar.
- The flexibility to meet online instantly without scheduling on a calendar.
- Locale-based join information (preview).
- Associating with a Microsoft Teams chat.
- Additional security features such as meeting lobby and automating attendee admission (preview).
- Video-conferencing.

The following table details the differences at the API level. 


| Online meeting feature | Calendar API               | Cloud communication API              |
|:-----------------------|:---------------------------|:-------------------------------------
| Integration with a calendar item | Automatic integration with Outlook calendar items: 
Create a new Outlook event or enable an existing event as an online meeting.
Use isOnlineMeeting and onlineMeetingProvider properties

|


Use the event resource to directly schedule an online meeting on the Outlook calendar, and let attendees join on the web on the Teams app or by dialing in via phone number. Use the onlineMeeting resource to set up an online meeting or video conference independent of a specific calendar type, and use richer API integration for locale-specific join information and meeting lobby admittance.

## See also
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md)
- [Use the cloud communications API to create or join online meetings](cloud-communications-online-meetings.md)