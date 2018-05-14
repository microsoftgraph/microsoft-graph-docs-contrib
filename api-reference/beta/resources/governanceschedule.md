# governanceSchedule

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the schedule for a [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) . For a role assignment request, schedule controls when to perform the role assignment operation, when to stop the role assignment, and how frequent to do the role assignment operation for the recurrent scenario. 



### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|startDateTime|DateTimeOffset|The start time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|stopDateTime|DateTimeOffset|The stop time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. *Note: if the value is `null`, it indicates a permanent assignment.*|
|type|String|The role assignment schedule type. The value can be ``Once``. (``Daily`` ,``Weekly`` and other types are coming soon)|
|duration|Duration|The duration of a role assignment. It is in format of a TimeSpan.|

### JSON representation

Here is a JSON representation of the resource.

```json
{
  "duration": "String (timespan)",
  "startDateTime": "String (timestamp)",
  "stopDateTime": "String (timestamp)",
  "type": "String"
}

```
