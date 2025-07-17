---
title: "Update mobileAppTroubleshootingEvent"
description: "Describes the Update mobileAppTroubleshootingEvent method of the Microsoft Graph API for Intune, which supports multiple workflows."
ms.localizationpriority: medium
author: "jaiprakashmb"
ms.prod: "Intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update mobileAppTroubleshootingEvent

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [mobileAppTroubleshootingEvent](../resources/intune-shared-mobileapptroubleshootingevent.md) object.

        ## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
|&nbsp; &nbsp; **Device management**|DeviceManagementManagedDevices.ReadWrite.All|
|&nbsp; &nbsp; **Troubleshooting**|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
|&nbsp; &nbsp; **Device management**|DeviceManagementManagedDevices.ReadWrite.All|
|&nbsp; &nbsp; **Troubleshooting**|DeviceManagementManagedDevices.ReadWrite.All|

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/mobileAppTroubleshootingEvents/{mobileAppTroubleshootingEventId}
PATCH /users/{usersId}/mobileAppTroubleshootingEvents/{mobileAppTroubleshootingEventId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [mobileAppTroubleshootingEvent](../resources/intune-shared-mobileapptroubleshootingevent.md) object.

The following table shows the properties that are required when you create the [mobileAppTroubleshootingEvent](../resources/intune-shared-mobileapptroubleshootingevent.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|**Troubleshooting**|
|additionalInformation|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|A set of string key and string value pairs which provides additional information on the Troubleshooting event.|
|applicationId|String|Intune application identifier.|
|correlationId|String|ID used for tracing the failure in the service. |
|eventDateTime|DateTimeOffset|Time when the event occurred. |
|eventName|String|Event Name corresponding to the Troubleshooting Event. Optional.|
|history|[mobileAppTroubleshootingHistoryItem](../resources/intune-troubleshooting-mobileapptroubleshootinghistoryitem.md) collection|Intune Mobile Application Troubleshooting History Item.|
|managedDeviceIdentifier|String|Device identifier created or collected by Intune.|
|troubleshootingErrorDetails|[deviceManagementTroubleshootingErrorDetails](../resources/intune-troubleshooting-devicemanagementtroubleshootingerrordetails.md)|Object containing detailed information about the error and its remediation. |
|userId|String|Identifier for the user that tried to enroll the device.|

## Response
If successful, this method returns a `200 OK` response code and an updated [mobileAppTroubleshootingEvent](../resources/intune-shared-mobileapptroubleshootingevent.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/mobileAppTroubleshootingEvents/{mobileAppTroubleshootingEventId}
Content-type: application/json
Content-length: 71

{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingEvent"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 120

{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingEvent",
  "id": "77943c10-3c10-7794-103c-9477103c9477"
}
```
