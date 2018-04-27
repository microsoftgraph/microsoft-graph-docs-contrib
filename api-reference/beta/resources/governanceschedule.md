# governanceSchedule
Represents the schedule for a role assignment request. For a role assignment request, schedule controls when to perform the role assignment operation, when to stop the role assignment, and how frequent to do the role assignment operation for the recurrent scenario. 



### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|details|String|The details of a schedule. Not used currently.|
|isPermanent|Boolean|Indicates if the role assignment is permanent. When **isPermanent** is true, **duration** and **stopDateTime** can be ignored.|
|startDateTime|DateTimeOffset|The start time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|stopDateTime|DateTimeOffset|The stop time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|type|String|The role assignment schedule type. The value can be ``Once``, ``Daily``, and ``Weekly``.|
|duration|Duration|The duration of a role assignment.|

### JSON representation

Here is a JSON representation of the resource.

```json
{
  "details": "String",
  "duration": "String (timestamp)",
  "isPermanent": true,
  "startDateTime": "String (timestamp)",
  "stopDateTime": "String (timestamp)",
  "type": "String"
}

```
