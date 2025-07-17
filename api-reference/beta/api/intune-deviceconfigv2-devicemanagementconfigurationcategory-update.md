---
title: "Update deviceManagementConfigurationCategory"
description: "Update the properties of a deviceManagementConfigurationCategory object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceManagementConfigurationCategory

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagementConfigurationCategory](../resources/intune-deviceconfigv2-devicemanagementconfigurationcategory.md) object.

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
PATCH /deviceManagement/inventoryCategories/{deviceManagementConfigurationCategoryId}
PATCH /deviceManagement/complianceCategories/{deviceManagementConfigurationCategoryId}
PATCH /deviceManagement/configurationCategories/{deviceManagementConfigurationCategoryId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagementConfigurationCategory](../resources/intune-deviceconfigv2-devicemanagementconfigurationcategory.md) object.

The following table shows the properties that are required when you create the [deviceManagementConfigurationCategory](../resources/intune-deviceconfigv2-devicemanagementconfigurationcategory.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the category.|
|description|String|Description of the category. For example: Display|
|categoryDescription|String|Description of the category header in policy summary.|
|helpText|String|Help text of the category. Give more details of the category.|
|name|String|Name of the item|
|displayName|String|Name of the category. For example: Device Lock|
|platforms|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platforms types, which settings in the category have. Possible values are: none. android, androidEnterprise, iOs, macOs, windows10X, windows10, aosp, and linux. If this property is not set, or set to none, returns categories in all platforms. Supports: $filters, $select. Read-only. Possible values are: `none`, `android`, `iOS`, `macOS`, `windows10X`, `windows10`, `linux`, `unknownFutureValue`, `androidEnterprise`, `aosp`, `visionOS`, `tvOS`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Technologies types, which settings in the category have. Possible values are: none, mdm, configManager, intuneManagementExtension, thirdParty, documentGateway, appleRemoteManagement, microsoftSense, exchangeOnline, edgeMam, linuxMdm, extensibility, enrollment, endpointPrivilegeManagement. If this property is not set, or set to none, returns categories in all platforms. Supports: $filters, $select. Read-only. Possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `appleRemoteManagement`, `microsoftSense`, `exchangeOnline`, `mobileApplicationManagement`, `linuxMdm`, `extensibility`, `enrollment`, `endpointPrivilegeManagement`, `unknownFutureValue`, `windowsOsRecovery`, `android`.|
|settingUsage|[deviceManagementConfigurationSettingUsage](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingusage.md)|Indicates that the category contains settings that are used for compliance, configuration, or reusable settings. Possible values are: configuration, compliance, reusableSetting. Each setting usage has separate API end-point to call. Read-only. Possible values are: `none`, `configuration`, `compliance`, `unknownFutureValue`, `inventory`.|
|parentCategoryId|String|Direct parent id of the category. If the category is the root, the parent id is same as its id.|
|rootCategoryId|String|Root id of the category.|
|childCategoryIds|String collection|List of child ids of the category.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagementConfigurationCategory](../resources/intune-deviceconfigv2-devicemanagementconfigurationcategory.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/inventoryCategories/{deviceManagementConfigurationCategoryId}
Content-type: application/json
Content-length: 523

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationCategory",
  "description": "Description value",
  "categoryDescription": "Category Description value",
  "helpText": "Help Text value",
  "name": "Name value",
  "displayName": "Display Name value",
  "platforms": "android",
  "technologies": "mdm",
  "settingUsage": "configuration",
  "parentCategoryId": "Parent Category Id value",
  "rootCategoryId": "Root Category Id value",
  "childCategoryIds": [
    "Child Category Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 572

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationCategory",
  "id": "cff34dd2-4dd2-cff3-d24d-f3cfd24df3cf",
  "description": "Description value",
  "categoryDescription": "Category Description value",
  "helpText": "Help Text value",
  "name": "Name value",
  "displayName": "Display Name value",
  "platforms": "android",
  "technologies": "mdm",
  "settingUsage": "configuration",
  "parentCategoryId": "Parent Category Id value",
  "rootCategoryId": "Root Category Id value",
  "childCategoryIds": [
    "Child Category Ids value"
  ]
}
```