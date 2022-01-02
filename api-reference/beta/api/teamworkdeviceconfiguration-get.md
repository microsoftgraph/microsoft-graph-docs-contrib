---
title: "Get teamworkDeviceConfiguration"
description: "Get the configuration details of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# Get teamworkDeviceConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the configuration details of a device. The [TeamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) has properties related to software versions, peripheral configuration (for example, camera, display, microphone, and speaker), hardware configuration, and Microsoft Teams client configuration.

**Note:** Licensing or payment requirements may apply for this API when made available for production use.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkDevice.Read.All, TeamworkDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkDevice.Read.All, TeamworkDevice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/devices/{teamworkDeviceId}/configuration
```

## Optional query parameters
This method does not support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamworkdeviceconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices/e19229ed-29ed-e192-ed29-92e1ed2992e1/configuration
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkDeviceConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamworkDeviceConfiguration",
    "id": "e19229ed-29ed-e192-ed29-92e1ed2992e1",
    "softwareVersions": {
      "adminAgentSoftwareVersion": "2020.7.10.1",
      "operatingSystemSoftwareVersion": "10.8.9.10",
      "teamsClientSoftwareVersion": "4.5.6.7",
      "firmwareSoftwareVersion": null,
      "partnerAgentSoftwareVersion": null
    },
    "displayConfiguration": {
      "displayCount": 1,
      "isDualDisplayModeEnabled": true,
      "isContentDuplicationAllowed": false,
      "configuredDisplays": [
        {
          "isOptional": false
        },
        {
          "isOptional": true
        }
      ],
      "inBuiltDisplayScreenConfiguration": null
    },
    "cameraConfiguration": {
      "contentCameraConfiguration": {
        "isContentCameraOptional": true,
        "isContentEnhancementEnabled": false,
        "isContentCameraInverted": false
      }
    },
    "speakerConfiguration": {
      "isSpeakerOptional": false,
      "isCommunicationSpeakerOptional": false
    },
    "microphoneConfiguration": {
      "isMicrophoneOptional": false
    },
    "teamsClientConfiguration": {
      "accountConfiguration": {
        "supportedClient": "teamsOnly",
        "onPremisesCalendarSyncConfiguration": {
          "smtpAddress": "admin@m365x975529.onmicrosoft.com",
          "domainUserName": null,
          "domain": null
        }
      },
      "featuresConfiguration": {
        "isAutoScreenShareEnabled": false,
        "isHideMeetingNamesEnabled": false,
        "isBluetoothBeaconingEnabled": true,
        "isSendLogsAndFeedbackEnabled": true,
        "emailToSendLogsAndFeedback": "admin@domain.com"
      }
    },
    "hardwareConfiguration": {
      "processorModel": "Intel(R) Core(TM) i5-7300U CPU @ 2.60GHz"
    },
    "systemConfiguration": null,
    "createdDateTime": "2021-03-19T19:00:04.000Z",
    "lastModifiedDateTime": "2021-06-19T19:01:04.185Z",
    "createdBy": null,
    "lastModifiedBy": null
  }
}
```

