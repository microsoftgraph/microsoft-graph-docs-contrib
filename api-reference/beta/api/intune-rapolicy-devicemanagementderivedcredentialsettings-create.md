---
title: "Create deviceManagementDerivedCredentialSettings"
description: "Create a new deviceManagementDerivedCredentialSettings object."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# Create deviceManagementDerivedCredentialSettings

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/derivedCredentials
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceManagementDerivedCredentialSettings object.

The following table shows the properties that are required when you create the deviceManagementDerivedCredentialSettings.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Derived Credential|
|helpUrl|String|The URL that will be accessible to end users as they retrieve a derived credential using the Company Portal.|
|displayName|String|The display name for the profile.|
|issuer|[deviceManagementDerivedCredentialIssuer](../resources/intune-rapolicy-devicemanagementderivedcredentialissuer.md)|The derived credential provider to use. Possible values are: `intercede`, `entrustDatacard`, `purebred`, `xTec`.|
|notificationType|[deviceManagementDerivedCredentialNotificationType](../resources/intune-rapolicy-devicemanagementderivedcredentialnotificationtype.md)|The methods used to inform the end user to open Company Portal to deliver Wi-Fi, VPN, or email profiles that use certificates to the device. Possible values are: `none`, `companyPortal`, `email`.|
|renewalThresholdPercentage|Int32|The nominal percentage of time before certificate renewal is initiated by the client.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/derivedCredentials
Content-type: application/json
Content-length: 278

{
  "@odata.type": "#microsoft.graph.deviceManagementDerivedCredentialSettings",
  "helpUrl": "https://example.com/helpUrl/",
  "displayName": "Display Name value",
  "issuer": "entrustDatacard",
  "notificationType": "companyPortal",
  "renewalThresholdPercentage": 10
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 327

{
  "@odata.type": "#microsoft.graph.deviceManagementDerivedCredentialSettings",
  "id": "bc650741-0741-bc65-4107-65bc410765bc",
  "helpUrl": "https://example.com/helpUrl/",
  "displayName": "Display Name value",
  "issuer": "entrustDatacard",
  "notificationType": "companyPortal",
  "renewalThresholdPercentage": 10
}
```