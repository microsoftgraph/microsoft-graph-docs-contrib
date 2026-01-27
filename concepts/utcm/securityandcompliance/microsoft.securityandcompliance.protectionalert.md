---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Protection Alert
in Security and Compliance Center.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AlertBy | Write | StringArray[] | Specifies the scope for aggregated alert policies | - |
| AlertFor | Write | StringArray[] | This parameter is reserved for internal Microsoft use | - |
| AggregationType | Write | String | Specifies how the alert policy triggers alerts for multiple occurrences of monitored activity | `None`, `SimpleAggregation`, `AnomalousAggregation`, `CustomAggregation` |
| Category | Write | String | Specifies a category for the alert policy | - |
| Comment | Write | String | Specifies an optional comment | - |
| Disabled | Write | Boolean | Enables or disables the alert policy | - |
| Ensure | Write | String | Specify if this alert should exist or not. | `Present`, `Absent` |
| Filter | Write | String | The Filter parameter uses OPATH syntax to filter the results by the specified properties and values | - |
| Name | Key | String | Specifies the unique name for the alert policy | - |
| NotificationCulture | Write | String | Specifies the language or locale that's used for notifications. For example, da-DK for Danish | - |
| NotificationEnabled | Write | Boolean | NotificationEnabled true or false | - |
| NotifyUserOnFilterMatch | Write | Boolean | Specifies whether to trigger an alert for a single event when the alert policy is configured for aggregated activity | - |
| NotifyUserSuppressionExpiryDate | Write | DateTime | Specifies whether to temporarily suspend notifications for the alert policy. Until the specified date-time, no notifications are sent for detected activities. | - |
| NotifyUserThrottleThreshold | Write | UInt32 | Specifies the maximum number of notifications for the alert policy within the time period specified by the NotifyUserThrottleWindow parameter. Once the maximum number of notifications has been reached in the time period, no more notifications are sent for the alert. | - |
| NotifyUserThrottleWindow | Write | UInt32 | Specifies the time interval in minutes that's used by the NotifyUserThrottleThreshold parameter | - |
| NotifyUser | Write | StringArray[] | Specifies the SMTP address of the user who receives notification messages for the alert policy. You can specify multiple values separated by commas | - |
| Operation | Write | StringArray[] | Specifies the activities that are monitored by the alert policy | - |
| PrivacyManagementScopedSensitiveInformationTypes | Write | StringArray[] | PrivacyManagementScopedSensitiveInformationTypes | - |
| PrivacyManagementScopedSensitiveInformationTypesForCounting | Write | StringArray[] | PrivacyManagementScopedSensitiveInformationTypesForCounting | - |
| PrivacyManagementScopedSensitiveInformationTypesThreshold | Write | UInt64 | PrivacyManagementScopedSensitiveInformationTypesThreshold | - |
| Severity | Write | String | specifies the severity of the detection | `Low`, `Medium`, `High`, `Informational` |
| ThreatType | Write | String | Specifies the type of activities that are monitored by the alert policy | `Activity`, `Malware`, `Phish`, `Malicious`, `MaliciousUrlClick`, `MailFlow` |
| Threshold | Write | UInt32 | Specifies the number of detections that trigger the alert policy within the time period specified by the TimeWindow parameter. A valid value is an integer that's greater than or equal to 3. | - |
| TimeWindow | Write | UInt32 | Specifies the time interval in minutes for number of detections specified by the Threshold parameter. A valid value is an integer that's greater than 60 (one hour). | - |
| VolumeThreshold | Write | UInt32 | Volume Threshold | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



