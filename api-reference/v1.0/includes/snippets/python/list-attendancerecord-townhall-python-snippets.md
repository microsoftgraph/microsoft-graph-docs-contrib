---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.solutions.virtual_events.townhalls.by_virtual_event_townhall_id('virtualEventTownhall-id').sessions.by_virtual_event_session_id('virtualEventSession-id').attendance_reports.by_meeting_attendance_report_id('meetingAttendanceReport-id').attendance_records.get()


```