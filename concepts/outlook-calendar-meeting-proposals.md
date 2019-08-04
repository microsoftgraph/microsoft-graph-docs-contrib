---
title: "Propose new meeting times in an Outlook calendar"
description: "Outlook calendar is part of the Outlook messaging hub in Office 365 that also lets you manage emails and contacts, find information about users in an organization,"
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Propose new meeting times in an Outlook calendar (preview)


Example where Alex invites Adele to lunch, Adele proposes an alternative date and time, and Alex accepts the proposal.
1. As the organizer, Alex sends a meeting request to Adele. He sets the **allowNewTimeProposals** property of the [event](/graph/api/resources/event?view=graph-rest-beta) to `true`.
2. Adele receives the invitation in her Inbox as an [eventMessageRequest](graph/api/resources/eventmessagerequest?view=graph-rest-beta). She notices the **allowNewTimeProposals** property is set. Using the **event** associated with this **eventMessageRequest**, she makes a tentative reply and proposes a different date/time in the **proposedNewTime** body parameter.
3. Alex receives Adele's reply as a message of the [eventMessageResponse](/graph/api/resources/event?view=graph-rest-beta) type in the Inbox. He notices the sender is Adele, the **responseType** is `tentativelyAccepted`, and Adele's proposal in the **proposedNewTime** property of the **eventMessageResponse**.
4. Alex decides to accept Adele's proposal, and lets Adele know by updating the **event** to the proposed **start** and **end** date/time.

Note that in step 2, if Adele replies tentative, or declines, and does not propose a different date/time, then in step 3, Alex would receive an **eventMessageResponse** with the **responseType** is `tentativelyAccepted` (or `decline` if Adele declined), but without a **proposedNewTime** property. Alex would also notice that the associated **event** does not include the **proposedNewTime** property either.

## See also
- [Finding possible meeting times on the Outlook calendar](findmeetingtimes-example.md)
- [Getting the free/busy schedule for users and resources](outlook-get-free-busy-schedule.md)
- [Scheduling repeating appointments as recurring events in Outlook](outlook-schedule-recurring-events.md)