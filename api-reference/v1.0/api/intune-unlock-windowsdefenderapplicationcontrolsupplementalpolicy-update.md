---
title: "Update windowsDefenderApplicationControlSupplementalPolicy"
description: "Update the properties of a windowsDefenderApplicationControlSupplementalPolicy object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update windowsDefenderApplicationControlSupplementalPolicy

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/wdacSupplementalPolicies/{windowsDefenderApplicationControlSupplementalPolicyId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) object.

The following table shows the properties that are required when you create the [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the Windows Defender Application Control Supplemental Policy. This id is assigned during creation of the policy.|
|displayName|String|The display name of the Windows Defender Application Control Supplemental Policy.|
|description|String|The description of the Windows Defender Application Control Supplemental Policy.|
|content|Binary|Indicates the content of the Windows Defender Application Control Supplemental Policy in byte array format.|
|contentFileName|String|Indicates the file name associated with the content of the Windows Defender Application Control Supplemental Policy.|
|version|String|Indicates the Windows Defender Application Control Supplemental Policy's version.|
|creationDateTime|DateTimeOffset|Indicates the created date and time when the Windows Defender Application Control Supplemental Policy was uploaded.|
|lastModifiedDateTime|DateTimeOffset|Indicates the last modified date and time of the Windows Defender Application Control Supplemental Policy.|
|roleScopeTagIds|String collection|List of Scope Tags for the Windows Defender Application Control Supplemental Policy entity.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/deviceAppManagement/wdacSupplementalPolicies/{windowsDefenderApplicationControlSupplementalPolicyId}
Content-type: application/json
Content-length: 404

{
  "@odata.type": "#microsoft.graph.windowsDefenderApplicationControlSupplementalPolicy",
  "displayName": "Display Name value",
  "description": "Description value",
  "content": "Y29udGVudA==",
  "contentFileName": "Content File Name value",
  "version": "Version value",
  "creationDateTime": "2017-01-01T00:00:43.1365422-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 517

{
  "@odata.type": "#microsoft.graph.windowsDefenderApplicationControlSupplementalPolicy",
  "id": "83d0c39e-c39e-83d0-9ec3-d0839ec3d083",
  "displayName": "Display Name value",
  "description": "Description value",
  "content": "Y29udGVudA==",
  "contentFileName": "Content File Name value",
  "version": "Version value",
  "creationDateTime": "2017-01-01T00:00:43.1365422-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```
