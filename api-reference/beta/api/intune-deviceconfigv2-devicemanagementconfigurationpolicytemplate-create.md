---
title: "Create deviceManagementConfigurationPolicyTemplate"
description: "Create a new deviceManagementConfigurationPolicyTemplate object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create deviceManagementConfigurationPolicyTemplate

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md) object.

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
POST /deviceManagement/configurationPolicyTemplates
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceManagementConfigurationPolicyTemplate object.

The following table shows the properties that are required when you create the deviceManagementConfigurationPolicyTemplate.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the template document, composed of BaseId and Version. Automatically generated.|
|baseId|String|Template base identifier|
|version|Int32|Template version. Valid values 1 to 2147483647. This property is read-only.|
|displayName|String|Template display name|
|description|String|Template description|
|displayVersion|String|Description of template version|
|lifecycleState|[deviceManagementTemplateLifecycleState](../resources/intune-deviceconfigv2-devicemanagementtemplatelifecyclestate.md)|Indicate current lifecycle state of template. Possible values are: `invalid`, `draft`, `active`, `superseded`, `deprecated`, `retired`.|
|platforms|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platforms for this template. Possible values are: `none`, `android`, `iOS`, `macOS`, `windows10X`, `windows10`, `linux`, `unknownFutureValue`, `androidEnterprise`, `aosp`, `visionOS`, `tvOS`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Technologies for this template. Possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `appleRemoteManagement`, `microsoftSense`, `exchangeOnline`, `mobileApplicationManagement`, `linuxMdm`, `extensibility`, `enrollment`, `endpointPrivilegeManagement`, `unknownFutureValue`, `windowsOsRecovery`, `android`.|
|templateFamily|[deviceManagementConfigurationTemplateFamily](../resources/intune-deviceconfigv2-devicemanagementconfigurationtemplatefamily.md)|TemplateFamily for this template. Possible values are: `none`, `endpointSecurityAntivirus`, `endpointSecurityDiskEncryption`, `endpointSecurityFirewall`, `endpointSecurityEndpointDetectionAndResponse`, `endpointSecurityAttackSurfaceReduction`, `endpointSecurityAccountProtection`, `endpointSecurityApplicationControl`, `endpointSecurityEndpointPrivilegeManagement`, `enrollmentConfiguration`, `appQuietTime`, `baseline`, `unknownFutureValue`, `deviceConfigurationScripts`, `deviceConfigurationPolicies`, `windowsOsRecoveryPolicies`, `companyPortal`.|
|allowUnmanagedSettings|Boolean|Allow unmanaged setting templates|
|settingTemplateCount|Int32|Number of setting templates. Valid values 0 to 2147483647. This property is read-only.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/configurationPolicyTemplates
Content-type: application/json
Content-length: 455

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicyTemplate",
  "baseId": "Base Id value",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "displayVersion": "Display Version value",
  "lifecycleState": "draft",
  "platforms": "android",
  "technologies": "mdm",
  "templateFamily": "endpointSecurityAntivirus",
  "allowUnmanagedSettings": true,
  "settingTemplateCount": 4
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 504

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicyTemplate",
  "id": "424ddb9a-db9a-424d-9adb-4d429adb4d42",
  "baseId": "Base Id value",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "displayVersion": "Display Version value",
  "lifecycleState": "draft",
  "platforms": "android",
  "technologies": "mdm",
  "templateFamily": "endpointSecurityAntivirus",
  "allowUnmanagedSettings": true,
  "settingTemplateCount": 4
}
```