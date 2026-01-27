---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Represents a request for a role eligibility for a principal through PIM. The role eligibility can be permanently eligible without an expiry date or temporarily eligible with an expiry date. Inherits from request.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Principal | Key | String | User Principal Name of the eligibility request. | - |
| RoleDefinition | Key | String | Role associated with the eligibility request. | - |
| PrincipalType | Write | String | Represented the type of principal to assign the request to. Accepted values are: Group and User. | `Group`, `User` |
| DirectoryScopeId | Write | String | Identifier of the directory object representing the scope of the role eligibility. The scope of an role eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. Use appScopeId to limit the scope to an application only. Either directoryScopeId or appScopeId is required. | - |
| Id | Write | String | Identifier for the Role Eligibility Schedule Request. | - |
| AppScopeId | Write | String | Identifier of the app-specific scope when the role eligibility is scoped to an app. The scope of a role eligibility determines the set of resources for which the principal is eligible to access. App scopes are scopes that are defined and understood by this application only. Use / for tenant-wide app scopes. Use directoryScopeId to limit the scope to particular directory objects, for example, administrative units. Either directoryScopeId or appScopeId is required. | - |
| Action | Write | String | Represents the type of operation on the role eligibility request.The possible values are: adminAssign, adminUpdate, adminRemove, selfActivate, selfDeactivate, adminExtend, adminRenew, selfExtend, selfRenew, unknownFutureValue. | `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue` |
| IsValidationOnly | Write | Boolean | Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request. | - |
| Justification | Write | String | A message provided by users and administrators when create they create the unifiedRoleEligibilityScheduleRequest object. Optional when action is adminRemove. Whether this property is required or optional is also dependent on the settings for the Microsoft Entra role. | - |
| ScheduleInfo | Write | RoleEligibilityScheduleRequestSchedule | The period of the role eligibility. Optional when action is adminRemove. The period of eligibility is dependent on the settings of the Microsoft Entra role. | - |
| TicketInfo | Write | RoleEligibilityScheduleRequestTicketInfo | Ticket details linked to the role eligibility request including details of the ticket number and ticket system. | - |
| Ensure | Write | String | Present ensures the instance exists, absent ensures it's removed. | `Present`, `Absent` |

### RoleEligibilityScheduleRequestScheduleRecurrenceRange

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| endDate | Required | String | The date to stop applying the recurrence pattern. Depending on the recurrence pattern of the event, the last occurrence of the meeting may not be this date. | - |
| numberOfOccurrences | Write | UInt32 | The number of times to repeat the event. Required and must be positive if type is numbered. | - |
| recurrenceTimeZone | Write | String | Time zone for the startDate and endDate properties. | - |
| startDate | Required | String | The date to start applying the recurrence pattern. The first occurrence of the meeting may be this date or later, depending on the recurrence pattern of the event. Must be the same value as the start property of the recurring event. | - |
| type | Required | String | The recurrence range. The possible values are: endDate, noEnd, numbered. | `endDate`, `noEnd`, `numbered` |

### RoleEligibilityScheduleRequestScheduleRecurrencePattern

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dayOfMonth | Write | UInt32 | The day of the month on which the event occurs. | - |
| daysOfWeek | Write | StringArray[] | A collection of the days of the week on which the event occurs. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday | `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday` |
| firstDayOfWeek | Write | String | The first day of the week. | `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday` |
| index | Write | String | Specifies on which instance of the allowed days specified in daysOfWeek the event occurs, counted from the first instance in the month. The possible values are: first, second, third, fourth, last. | `first`, `second`, `third`, `fourth`, `last` |
| interval | Write | UInt32 | The number of units between occurrences, where units can be in days, weeks, months, or years, depending on the type. | - |
| month | Write | UInt32 | The month in which the event occurs. This is a number from 1 to 12. | - |
| type | Write | String | The recurrence pattern type: daily, weekly, absoluteMonthly, relativeMonthly, absoluteYearly, relativeYearly. | `daily`, `weekly`, `absoluteMonthly`, `relativeMonthly`, `absoluteYearly`, `relativeYearly` |

### RoleEligibilityScheduleRequestScheduleRecurrence

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| pattern | Write | RoleEligibilityScheduleRequestScheduleRecurrencePattern | The frequency of an event. | - |
| range | Write | RoleEligibilityScheduleRequestScheduleRecurrenceRange | The duration of an event. | - |

### RoleEligibilityScheduleRequestScheduleExpiration

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| duration | Write | String | The requestor's desired duration of access represented in ISO 8601 format for durations. For example, PT3H refers to three hours. If specified in a request, endDateTime should not be present and the type property should be set to afterDuration. | - |
| endDateTime | Write | String | Timestamp of date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. | - |
| type | Write | String | The requestor's desired expiration pattern type. The possible values are: notSpecified, noExpiration, afterDateTime, afterDuration. | `notSpecified`, `noExpiration`, `afterDateTime`, `afterDuration` |

### RoleEligibilityScheduleRequestSchedule

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| expiration | Write | RoleEligibilityScheduleRequestScheduleExpiration | When the eligible or active assignment expires. | - |
| recurrence | Write | RoleEligibilityScheduleRequestScheduleRecurrence | The frequency of the eligible or active assignment. This property is currently unsupported in PIM. | - |
| startDateTime | Write | String | When the eligible or active assignment becomes active. | - |

### RoleEligibilityScheduleRequestTicketInfo

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| ticketNumber | Write | String | The ticket number. | - |
| ticketSystem | Write | String | The description of the ticket system. | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Privileged Role Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | RoleEligibilitySchedule.Read.Directory, Directory.Read.All |
| Update    | RoleEligibilitySchedule.ReadWrite.Directory, Directory.Read.All |



