---
title: "Create Outlook events in a shared or delegated calendar"
description: "In Outlook, customers can share a calendar with other users and let them view or modify events in that calendar. Customers can also grant a delegate to act on their  behalf, to receive or respond to meeting requests, or create or change items in the calendar."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Create Outlook events in a shared or delegated calendar

In Outlook, customers can share a calendar with other users and let them view, create, or modify events in that calendar. Customers can also grant a delegate to act on their  behalf, to receive or respond to meeting requests, or create or change items in the calendar.

Programmatically, Microsoft Graph supports reading or writing events in calendars that have been shared by other users, as well as reading the shared calendars themselves. The support also applies to calendars that have been delegated. The rest of this article walks through creating an event in a shared or delegated calendar. For getting events, refer to [Get Outlook events in a shared or delegated calendar](outlook-get-shared-events-calendars.md).

This article uses the scenario where Alex has delegated his primary calendar to Adele in Outlook. The sections below describe a few subsequent steps:
1. Adele organizes an event on Alex' behalf. 
2. One of the attendees, Samantha, receives the meeting request message.
3. (and step #4) Samantha responds tentative to the meeting.
4. Adele receives Samantha's response message.
5. Alex can check attendees' responses as part of the event.

If Alex has instead shared his calendar with Adele (but not delegated):

In step 4, Alex, instead of Adele, receives Samantha's response message.


1. Alex delegates Adele  the cwhere a delegate creates an event in  Alex has delegated his primary calendar to Adele

## Step 1: Adele creates event in shared calendar

Resultant event in Adele's calendar has isOrganizer set to true (for Adele), and yet organizer set to Alex Wilbur


## Step 2: Samantha receives meeting request 

The sender property is Adele
The from property is Alex

## Step 3: Samantha gets the event associated with the meeting request

The event shows only 3 attendees (Alex, Megan, admin)
and organizer is Alex

Adele's name doesn't appear in the event property values.

## Step 4: Samantha responds to the meeting request



## Step 5a: In shared calendar scenario, Alex receives and gets the response message



## Step 5b: In delegated calendar scenario, Adele receives and gets the response message



## Step 6: In delegated calendar scenario, Alex can get the responses as part of the event



## Next steps

Find out more about:

- [Why integrate with Outlook calendar](outlook-calendar-concept-overview.md)
- The [calendar API](/graph/api/resources/calendar?view=graph-rest-1.0) in Microsoft Graph v1.0.