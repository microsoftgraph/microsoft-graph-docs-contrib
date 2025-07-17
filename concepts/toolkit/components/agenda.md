---
title: "Agenda component in Microsoft Graph Toolkit"
description: "The mgt-agenda web component is used to represent events in a user or group calendar."
ms.localizationpriority: medium
author: sebastienlevert
ms.date: 11/07/2024
---

# Agenda component in Microsoft Graph Toolkit

The `mgt-agenda` web component represents events in a user or group calendar. By default, the calendar displays the current signed in user events for the current day. The component can also use any endpoint that returns events from Microsoft Graph.

## Example

The following example shows the signed-in user's calendar events displayed using the `mgt-agenda` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

# [HTML](#tab/html)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-agenda-html--agenda&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-agenda-html--agenda&source=docs).

# [React](#tab/react)

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-agenda-react--agenda&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-agenda-react--agenda&source=docs).

---

## Properties

By default, the `mgt-agenda` component fetches events from the `/me/calendarview` endpoint and displays events for the current day. There are several properties you can use to change this behavior.

| Attribute          | Property          | Description                                                                                                                                                                                                                                                                                                                                 |
| ------------------ | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- | ----------------- |
| date               | date              | A string that represents the start date of the events to fetch from Microsoft Graph. The value should be in a format that is suitable for the [Date constructor](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Date). This value has no effect if the `event-query` attribute is set.                                     |
| days               | days              | The number of days to fetch from Microsoft Graph. The default is 3. This value has no effect if `event-query` attribute is set.                                                                                                                                                                                                                      |
| show-max           | showMax           | A number to indicate the maximum number of events to show. The default value isn't set (no maximum).                                                                                                                                                                                                                                       |
| group-id           | groupId           | A string ID for a group calendar to use instead of the current signed in user's calendar.                                                                                                                                                                                                                                                   |
| event-query        | eventQuery        | A string that represents an alternative query to be used when fetching events from Microsoft Graph. Optionally, add the delegated scope at the end of the string by delimiting it with `                                                                                                                                                    | ` (`/groups/GROUP-ID-GUID/calendar/calendarView | group.read.all`). |
| events             | events            | An array of events to get or set the list of events rendered by the component. Use this property to access the events loaded by the component. Set this value to load your own events. The `date`, `days`, or `event-query` attributes have no effect if set by the developer.                                                      |
| group-by-day       | groupByDay        | A Boolean value to group events by day. By default, events aren't grouped.                                                                                                                                                                                                                                                                 |
| preferred-timezone | preferredTimezone | Name of the IANA time zone to use when displaying events retrieved from Microsoft Graph; for example, `America/Los_Angeles`. For a list of IANA time zones, see [List of tz database time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). By default, events render using the current time zone settings of the device. |

The following example changes the behavior of the component to fetch data for a specific date and up to three days.

```html
<mgt-agenda group-by-day date="May 7, 2019" days="3"></mgt-agenda>
```

The following example changes the behavior of the component to fetch data from a specific query.

```html
<mgt-agenda event-query="/me/events?orderby=start/dateTime"></mgt-agenda>
```

## CSS custom properties

The `mgt-agenda` component defines these CSS custom properties

```html
<mgt-agenda class="agenda" group-by-day></mgt-agenda>
```

```css
.agenda {
  --agenda-event-box-shadow: 0px 2px 30px pink;
  --agenda-event-margin: 0px 10px 40px 10px;
  --agenda-event-padding: 8px 0px;
  --agenda-event-background-color: #8d696f;
  --agenda-event-border: dotted 2px white;

  --agenda-header-margin: 3px;
  --agenda-header-font-size: 20px;
  --agenda-header-color: #8d696f;

  --agenda-event-time-font-size: 20px;
  --agenda-event-time-color: white;

  --agenda-event-subject-font-size: 12px;
  --agenda-event-subject-color: white;

  --agenda-event-location-font-size: 20px;
  --agenda-event-location-color: white;

  --agenda-event-attendees-color: gold;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Methods

| Method   | Description                                                                              |
| -------- | ---------------------------------------------------------------------------------------- |
| reload() | Call the method to reload the component with potential new data based on its properties. |

## Templates

The `mgt-agenda` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` to one of the following values:

| Data type     | Data context                    | Description                                                       |
| ------------- | ------------------------------- | ----------------------------------------------------------------- |
| `default`     | `events`: list of event objects | The default template replaces the entire component with your own. |
| `event`       | `event`: event object           | The template used to render each event.                           |
| `event-other` | `event`: event object           | The template used to render other content for each event.    |
| `header`      | `header`: string                | The template used to render the header for each day.              |
| `loading`     | No data context is passed       | The template used when data is loading.                           |
| `no-data`     | No data context is passed       | The template used when no events are available.                   |

The following examples illustrate how to use the `event` template:

```html
<mgt-agenda>
  <template data-type="event">
    <button class="eventButton">
      <div class="event-subject">{{ event.subject }}</div>
      <div data-for="attendee in event.attendees">
        <mgt-person
          person-query="{{ attendee.emailAddress.name }}"
          view="twolines"
        >
        </mgt-person>
      </div>
    </button>
  </template>
  <template data-type="no-data"> There are no events found! </template>
</mgt-agenda>
```

To learn more, see [templates](../customize-components/templates.md).

## Events

The following events are fired from the control.

| Event        | When is it emitted                | Custom data                                  | Cancelable | Bubbles |     Works with custom template      |
| ------------ | --------------------------------- | -------------------------------------------- | :--------: | :-----: | :---------------------------------: |
| `eventClick` | The user selects or taps an event. | The selected [event](/graph/api/resources/event) |     No     |   No    | Yes, with custom **event** template |

For more information about handling events, see [events](../customize-components/events.md).

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs. For each API call, one of the permissions listed is required.

| Configuration               | Permission     | API                                                       |
| -------------               | -------------- | --------------------------------------------------------- |
| default                     | Calendars.ReadBasic, Calendars.Read, Calendars.ReadWrite | [/me/calendarview](/graph/api/calendar-list-calendarview) |
| `group-id` specified        | Group.Read.All, Group.ReadWrite.All | [/groups/{groupId}/calendar/calendarview](/graph/api/group-list-calendarview) |
| `event-query` specified     | As optionally supplied in the `event-query` | The API that was supplied in the `event-query` |

The component allows you to specify a different Microsoft Graph query to call (such as `/groups/{id}/calendar/calendarView`). In this case, append the permission to the end of the string, delimited by `|`.

### Subcomponents

The `mgt-agenda` component consists of one or more subcomponents that might require permissions other than the ones listed previously. For more information, see the documentation for each subcomponent: [mgt-people](people.md).

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Cache

The `mgt-agenda` component doesn't cache any data.

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected` render\* methods for override in component extensions.

| Method          | Description                                                       |
| --------------- | ----------------------------------------------------------------- |
| renderLoading   | Renders a loading state while the component loads.                |
| renderNoData    | Renders an empty data state.                                      |
| renderGroups    | Sorts event data into groups and renders them with group headers. |
| renderHeader    | Renders a group header.                                           |
| renderEvents    | Renders a list of event objects.                                  |
| renderEvent     | Renders a singular event and all of its parts.                    |
| renderTitle     | Renders the event title part.                                     |
| renderLocation  | Renders the event location part.                                  |
| renderAttendees | Renders the event attendees part.                                 |
| renderOther     | Renders other event content.                                 |

## Localization

The control doesn't expose any localization variables.
