---
title: "Create deviceConfigurationProfile"
description: "Create a new deviceConfigurationProfile object."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# Create deviceConfigurationProfile

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
POST /deviceManagement/deviceConfigurationProfiles
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceConfigurationProfile object.

The following table shows the properties that are required when you create the deviceConfigurationProfile.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Profile Id of the object.|
|accountId|String|Account Id.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|
|createdDateTime|DateTimeOffset|The date and time the object was created.|
|profileName|String|Profile name|
|profileType|[profileType](../resources/intune-policylistingservice-profiletype.md)|Profile Type. Possible values are: `settingsCatalog`, `administrativeTemplates`, `importedADMXTemplates`, `oemAppConfig`, `hardwareConfig`, `dcV1EndpointProtection`, `dcV1DeviceRestrictions`.|
|platformType|[platformType](../resources/intune-policylistingservice-platformtype.md)|Platform Type. Possible values are: `none`, `android`, `androidEnterprise`, `iOS`, `macOS`, `windows10X`, `windows10`.|
|configurationTechnologies|Int32|Configuration Technologies for Settins Catalog Policies|
|templateId|String|TemplateId for Settings Catalog Policies|
|roleScopeTagIds|String collection|The list of scope tags for the configuration.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceConfigurationProfile](../resources/intune-policylistingservice-deviceconfigurationprofile.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurationProfiles
Content-type: application/json
Content-length: 354

{
  "@odata.type": "#microsoft.graph.deviceConfigurationProfile",
  "accountId": "Account Id value",
  "profileName": "Profile Name value",
  "profileType": "administrativeTemplates",
  "platformType": "android",
  "configurationTechnologies": 9,
  "templateId": "Template Id value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 526

{
  "@odata.type": "#microsoft.graph.deviceConfigurationProfile",
  "id": "1662ad38-ad38-1662-38ad-621638ad6216",
  "accountId": "Account Id value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "profileName": "Profile Name value",
  "profileType": "administrativeTemplates",
  "platformType": "android",
  "configurationTechnologies": 9,
  "templateId": "Template Id value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```
