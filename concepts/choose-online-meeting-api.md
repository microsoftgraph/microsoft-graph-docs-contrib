---
title: "Choose an API in Microsoft Graph to create and join an online meeting"
description: "You'll have the flexibility to create a meeting that takes place in the future, or instantaneously"
author: "angelgolfer_ms"
localization_priority: Priority
---

# Choose an API in Microsoft Graph to create and join an online meeting

The Microsoft Graph API offers two ways to arrange and join an online meeting:

- Through the [event](/graph/api/resources/event) resource of the calendar API
- Through the [onlineMeeting](/graph/api/resources/onlineMeeting) resource of the cloud communications API

Both approaches create online meetings on Microsoft Teams or Skype. Use the event resource to directly schedule an online meeting on the Outlook calendar, and let attendees join on the web on the Teams app or by dialing in via phone number. Use the onlineMeeting resource to set up an online meeting or video conference independent of a specific calendar type, and use richer API integration for locale-specific join information and meeting lobby admittance.

| Online meeting feature | Calendar API               | Cloud communication API              |
|:-----------------------|:---------------------------|:-------------------------------------
| Integration with a calendar item | Automatic integration with Outlook calendar items: 
Create a new Outlook event or enable an existing event as an online meeting.
Use isOnlineMeeting and onlineMeetingProvider properties

|


## See also
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md)
- [Use the cloud communications API to create or join online meetings](cloud-communications-online-meetings.md)