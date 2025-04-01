---
title: "retrieveDeviceConfigurationAvailableOptions function"
description: "Intune Deviceconfigv2 Devicemanagementconfigurationsettingdefinition Retrievedeviceconfigurationavailableoptions Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# retrieveDeviceConfigurationAvailableOptions function

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/reusableSettings/retrieveDeviceConfigurationAvailableOptions
GET /deviceManagement/inventorySettings/retrieveDeviceConfigurationAvailableOptions
GET /deviceManagement/complianceSettings/retrieveDeviceConfigurationAvailableOptions
GET /deviceManagement/configurationSettings/retrieveDeviceConfigurationAvailableOptions
GET /deviceManagement/configurationPolicies/{deviceManagementConfigurationPolicyId}/settings/{deviceManagementConfigurationSettingId}/settingDefinitions/retrieveDeviceConfigurationAvailableOptions
GET /deviceManagement/configurationPolicyTemplates/{deviceManagementConfigurationPolicyTemplateId}/settingTemplates/{deviceManagementConfigurationSettingTemplateId}/settingDefinitions/retrieveDeviceConfigurationAvailableOptions
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
|settingId|String||
|platform|String||



## Response
If successful, this function returns a `200 OK` response code and a [deviceConfigurationOption](../resources/intune-deviceconfigv2-deviceconfigurationoption.md) collection in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/reusableSettings/retrieveDeviceConfigurationAvailableOptions(settingId='parameterValue',platform='parameterValue')
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 221

{
  "value": [
    {
      "@odata.type": "microsoft.graph.deviceConfigurationOption",
      "displayName": "Display Name value",
      "availableOptions": [
        "Available Options value"
      ]
    }
  ]
}
```
