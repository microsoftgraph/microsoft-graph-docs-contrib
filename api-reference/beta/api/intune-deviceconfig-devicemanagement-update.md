---
title: "Update deviceManagement"
description: "Update the properties of a deviceManagement object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceManagement

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.

The following table shows the properties that are required when you create the [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|
|settings|[deviceManagementSettings](../resources/intune-deviceconfig-devicemanagementsettings.md)|Account level settings.|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|
|intuneAccountId|Guid|Intune Account Id for given tenant|
|lastReportAggregationDateTime|DateTimeOffset|The last modified time of reporting for this account. This property is read-only.|
|deviceComplianceReportSummarizationDateTime|DateTimeOffset|The last requested time of device compliance reporting for this account. This property is read-only.|
|legacyPcManangementEnabled|Boolean|The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.|
|unlicensedAdminstratorsEnabled|Boolean|When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement
Content-type: application/json
Content-length: 1131

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "deviceComplianceCheckinThresholdDays": 4,
    "isScheduledActionEnabled": true,
    "secureByDefault": true,
    "enhancedJailBreak": true,
    "deviceInactivityBeforeRetirementInDay": 5,
    "derivedCredentialProvider": "entrustDataCard",
    "derivedCredentialUrl": "https://example.com/derivedCredentialUrl/",
    "androidDeviceAdministratorEnrollmentEnabled": true,
    "ignoreDevicesForUnsupportedSettingsEnabled": true,
    "enableLogCollection": true,
    "enableAutopilotDiagnostics": true,
    "enableEnhancedTroubleshootingExperience": true,
    "enableDeviceGroupMembershipReport": true,
    "m365AppDiagnosticsEnabled": true
  },
  "maximumDepTokens": 0,
  "intuneAccountId": "cf1549a1-49a1-cf15-a149-15cfa14915cf",
  "lastReportAggregationDateTime": "2016-12-31T23:59:39.2763981-08:00",
  "deviceComplianceReportSummarizationDateTime": "2017-01-01T00:00:57.9381085-08:00",
  "legacyPcManangementEnabled": true,
  "unlicensedAdminstratorsEnabled": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1180

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "0b283420-3420-0b28-2034-280b2034280b",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "deviceComplianceCheckinThresholdDays": 4,
    "isScheduledActionEnabled": true,
    "secureByDefault": true,
    "enhancedJailBreak": true,
    "deviceInactivityBeforeRetirementInDay": 5,
    "derivedCredentialProvider": "entrustDataCard",
    "derivedCredentialUrl": "https://example.com/derivedCredentialUrl/",
    "androidDeviceAdministratorEnrollmentEnabled": true,
    "ignoreDevicesForUnsupportedSettingsEnabled": true,
    "enableLogCollection": true,
    "enableAutopilotDiagnostics": true,
    "enableEnhancedTroubleshootingExperience": true,
    "enableDeviceGroupMembershipReport": true,
    "m365AppDiagnosticsEnabled": true
  },
  "maximumDepTokens": 0,
  "intuneAccountId": "cf1549a1-49a1-cf15-a149-15cfa14915cf",
  "lastReportAggregationDateTime": "2016-12-31T23:59:39.2763981-08:00",
  "deviceComplianceReportSummarizationDateTime": "2017-01-01T00:00:57.9381085-08:00",
  "legacyPcManangementEnabled": true,
  "unlicensedAdminstratorsEnabled": true
}
```
