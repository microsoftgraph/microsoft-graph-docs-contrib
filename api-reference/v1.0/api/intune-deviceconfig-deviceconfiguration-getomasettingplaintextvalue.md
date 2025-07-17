---
title: "getOmaSettingPlainTextValue function"
description: "Not yet documented"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# getOmaSettingPlainTextValue function

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

> [!NOTE]
> This API involves potential secret values; ReadWrite permission is required.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application| DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/getOmaSettingPlainTextValue
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Property|Type|Description|
|:---|:---|:---|
|secretReferenceValueId|String|Not yet documented|



## Response
If successful, this function returns a `200 OK` response code and a String in the response body.

## Example

### Request
Here is an example of the request.

<!-- { "blockType": "ignored" , "name" : "intune_deviceconfig_deviceconfiguration_getomasettingplaintextvalue_getomasettingplaintextvalue_function" }-->
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/deviceConfigurations/{deviceConfigurationId}/getOmaSettingPlainTextValue(secretReferenceValueId='parameterValue')
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 57

{
  "value": "Get Oma Setting Plain Text Value value"
}
```
