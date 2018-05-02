# Outlook calendar API overview

Outlook calendar is part of the Outlook messaging hub in Office 365 that also lets you manage emails and contacts, find information about users in an organization, 
initiate online conversations, share files, and collaborate in groups.

## Why integrate with Outlook calendar?

Work in progress.

### Reach hundreds of millions of customers and build rich scenarios

Many millions of customers use Outlook calendar as part of an integrated communication hub to let them effectively communicate and get things done. They can set up meetings, manage emails, find information about contacts and other users, and initiate conversations or online meetings all in one place, be it on the web, mobile, or desktop. Microsoft Graph not only connects apps to the calendar, mail, and contacts data of these customers, it enables apps to [integrate with the best of Microsoft 365](overview-major-services.md) and support a wide range of scenarios that enhance productivity and collaboration.

### Automate appointment organization and calendaring

Customers like how Outlook lets them organize their time for work, family, and personal activities. Microsoft Graph REST API keeps close parity with the customer experience, letting apps create, manage, and respond to events just as naturally:

- In Outlook, customers can create multiple calendars, organize them in calendar groups, or keep them separate for work, family, and so on. They can turn on the free **Birthdays** calendar to remind them of their contacts' birthdays, or the **Holiday** calendar of their local holidays. Customers can also add calendars that match their interests, and select from thousands of calendars for sport teams, TV programs, and other special events. 
 at the user interface level, can overlay and view events in one or more calendars at the same time.
- categories

- calendar groups 
- create, update single and recurring series, respond to events
- webLink property of an event lets you open the event in a browser in Outlook on the web.


Enriched calendar experience

- Enable reminders for contacts' birthdays or a country or region's holidays
Users can turn on the Birthdays or Holidays calendar. Outlook automatically sends a reminder before each contact's birthday, or each holiday.
- Add calendars that match the user's interests
Outlook users can choose to add can enjoy selecting from thousands of calendars for sport teams, TV programs, and other special events. Once added, these calendars are available in the Outlook calendar across all the user's devices, on the web, mobile, and desktop, so that users won't miss these events. Your app can interact with these calendars just like any other [calendar](../api-reference/v1.0/resources/calendar.md) objects in the user's mailbox.


Help customers stay synchronized and navigate their day

- reminder view, snooze, dismiss - let users plan and navigate their day
- delta query to get and display the most up-to-date events


Enhanced collaboration

- Share calendars 
- Get a calendar and its contents of user B, other than the signed-in user A. With delegated permissions from user A, you can read those folders, and their event contents, that B has shared with A as well.
- Access group calendars and conversations in the same Outlook messaging hub


Smart scheduling

- Through Outlook settings, users can enable automatic adding of events from emails, such as flight or hotel reservations, music performances, and bill invoices. Once added, you can interact with these events just like any other [event](../api-reference/v1.0/resources/calendar.md) objects in the user's mailbox.
- *find meeting times
- *In Outlook, customers can book meeting rooms by adding them as resources to the meeting, just as simply as adding a user as a meeting attendee. Programmatically, meeting rooms are emailAddress objects, represented by a display name and SMTP address. You can [get rooms](../api-reference/beta/api/user_findrooms.md) and 
[get room lists](../api-reference/beta/api/user_findroomlists.md) that are available in a tenant. You can then designate a specific room in the **location** property of an event.


Teleconferencing across multiple locations and time zones

With globalization, today's business meetings can involve attendees participating from different locations and time zones.
- Events support a single **location**, or optionally multiple **locations**. Properties of the **location** complex type, such as the displayName and locationType, make it easier to facilitate meetings where for example, a few attendees join from a meeting room in Seattle, another attendee from a home office in China, and a third attendee join from a coffee shop in Paris. - example in event_get.md
- Flexibility to specify a time zone for each of start and end of an event
- Prefer: outlook.timezone="Eastern Standard Time"
If the event was created in a different time zone, the start and end times will be adjusted to the time zone specified in that Prefer header. See this list for the supported time zone names. If the Prefer: outlook.timezone header is not specified, the start and end times are returned in UTC.
You can use the OriginalStartTimeZone and OriginalEndTimeZone properties on the event resource to find out the time zone used when the event was created.


## Next steps

{Include a link to the root node of your API set in the v1.0 reference section.}