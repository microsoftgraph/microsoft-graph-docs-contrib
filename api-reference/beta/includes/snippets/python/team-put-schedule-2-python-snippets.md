---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Schedule()
request_body.enabled = True

request_body.time_zone = 'America/Chicago'

request_body.provisionstatus(OperationStatus.Completed('operationstatus.completed'))

request_body.provisionStatusCode=null

request_body.open_shifts_enabled = True

request_body.swap_shifts_requests_enabled = True

request_body.offer_shift_requests_enabled = True

request_body.time_off_requests_enabled = True

request_body.time_clock_enabled = True

time_clock_settings = TimeClockSettings()
time_clock_settingsapproved_location = GeoCoordinates()
time_clock_settingsapproved_location.Altitude = 1024.13

time_clock_settingsapproved_location.Latitude = 26.13246

time_clock_settingsapproved_location.Longitude = 24.34616


time_clock_settings.approved_location = time_clock_settingsapproved_location

request_body.time_clock_settings = time_clock_settings



result = await client.teams.by_team_id('team-id').schedule.put(request_body = request_body)


```