---
title: "Update chromeOSOnboardingSettings"
description: "Update the properties of a chromeOSOnboardingSettings object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update chromeOSOnboardingSettings

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.

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
PATCH /deviceManagement/chromeOSOnboardingSettings/{chromeOSOnboardingSettingsId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object.

The following table shows the properties that are required when you create the [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ChromebookTenant's Id|
|ownerUserPrincipalName|String|The ChromebookTenant's OwnerUserPrincipalName|
|onboardingStatus|[onboardingStatus](../resources/intune-chromebooksync-onboardingstatus.md)|The ChromebookTenant's OnboardingStatus. Possible values are: `unknown`, `inprogress`, `onboarded`, `failed`, `offboarding`, `unknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|The ChromebookTenant's LastModifiedDateTime|
|lastDirectorySyncDateTime|DateTimeOffset|The ChromebookTenant's LastDirectorySyncDateTime|



## Response
If successful, this method returns a `200 OK` response code and an updated [chromeOSOnboardingSettings](../resources/intune-chromebooksync-chromeosonboardingsettings.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/chromeOSOnboardingSettings/{chromeOSOnboardingSettingsId}
Content-type: application/json
Content-length: 238

{
  "@odata.type": "#microsoft.graph.chromeOSOnboardingSettings",
  "ownerUserPrincipalName": "Owner User Principal Name value",
  "onboardingStatus": "inprogress",
  "lastDirectorySyncDateTime": "2016-12-31T23:57:56.1183185-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 351

{
  "@odata.type": "#microsoft.graph.chromeOSOnboardingSettings",
  "id": "0344255d-255d-0344-5d25-44035d254403",
  "ownerUserPrincipalName": "Owner User Principal Name value",
  "onboardingStatus": "inprogress",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastDirectorySyncDateTime": "2016-12-31T23:57:56.1183185-08:00"
}
```