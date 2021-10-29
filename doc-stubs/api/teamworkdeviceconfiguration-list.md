---
title: "List teamworkDeviceConfigurations"
description: "Get a list of the teamworkDeviceConfiguration objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List teamworkDeviceConfigurations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.teamworkDeviceConfiguration not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_teamworkdeviceconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.teamworkDeviceConfiguration not found
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkDeviceConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkDeviceConfiguration",
      "id": "e19229ed-29ed-e192-ed29-92e1ed2992e1",
      "softwareVersions": {
        "@odata.type": "microsoft.graph.teamworkDeviceSoftwareVersions"
      },
      "displayConfiguration": {
        "@odata.type": "microsoft.graph.teamworkDisplayConfiguration"
      },
      "cameraConfiguration": {
        "@odata.type": "microsoft.graph.teamworkCameraConfiguration"
      },
      "speakerConfiguration": {
        "@odata.type": "microsoft.graph.teamworkSpeakerConfiguration"
      },
      "microphoneConfiguration": {
        "@odata.type": "microsoft.graph.teamworkMicrophoneConfiguration"
      },
      "teamsClientConfiguration": {
        "@odata.type": "microsoft.graph.teamworkTeamsClientConfiguration"
      },
      "hardwareConfiguration": {
        "@odata.type": "microsoft.graph.teamworkHardwareConfiguration"
      },
      "systemConfiguration": {
        "@odata.type": "microsoft.graph.teamworkSystemConfiguration"
      },
      "createdDateTime": "String (timestamp)",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      }
    }
  ]
}
```

