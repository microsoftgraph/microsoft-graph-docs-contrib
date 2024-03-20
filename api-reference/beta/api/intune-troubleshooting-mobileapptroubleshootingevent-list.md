---
title: "List mobileAppTroubleshootingEvents"
description: "List properties and relationships of the mobileAppTroubleshootingEvent objects."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# List mobileAppTroubleshootingEvents

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [mobileAppTroubleshootingEvent](../resources/intune-troubleshooting-mobileapptroubleshootingevent.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/mobileAppTroubleshootingEvents
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [mobileAppTroubleshootingEvent](../resources/intune-troubleshooting-mobileapptroubleshootingevent.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/mobileAppTroubleshootingEvents
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2008

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobileAppTroubleshootingEvent",
      "id": "77943c10-3c10-7794-103c-9477103c9477",
      "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
      "correlationId": "Correlation Id value",
      "troubleshootingErrorDetails": {
        "@odata.type": "microsoft.graph.deviceManagementTroubleshootingErrorDetails",
        "context": "Context value",
        "failure": "Failure value",
        "failureDetails": "Failure Details value",
        "remediation": "Remediation value",
        "resources": [
          {
            "@odata.type": "microsoft.graph.deviceManagementTroubleshootingErrorResource",
            "text": "Text value",
            "link": "Link value"
          }
        ]
      },
      "eventName": "Event Name value",
      "additionalInformation": [
        {
          "@odata.type": "microsoft.graph.keyValuePair",
          "name": "Name value",
          "value": "Value value"
        }
      ],
      "managedDeviceIdentifier": "Managed Device Identifier value",
      "deviceId": "Device Id value",
      "userId": "User Id value",
      "applicationId": "Application Id value",
      "history": [
        {
          "@odata.type": "microsoft.graph.mobileAppTroubleshootingHistoryItem",
          "occurrenceDateTime": "2017-01-01T00:03:20.8380798-08:00",
          "troubleshootingErrorDetails": {
            "@odata.type": "microsoft.graph.deviceManagementTroubleshootingErrorDetails",
            "context": "Context value",
            "failure": "Failure value",
            "failureDetails": "Failure Details value",
            "remediation": "Remediation value",
            "resources": [
              {
                "@odata.type": "microsoft.graph.deviceManagementTroubleshootingErrorResource",
                "text": "Text value",
                "link": "Link value"
              }
            ]
          }
        }
      ]
    }
  ]
}
```
