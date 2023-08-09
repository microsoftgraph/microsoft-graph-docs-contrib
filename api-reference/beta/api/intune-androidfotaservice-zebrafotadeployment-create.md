---
title: "Create zebraFotaDeployment"
description: "Create a new zebraFotaDeployment object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create zebraFotaDeployment

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.

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
POST /deviceManagement/zebraFotaDeployments
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the zebraFotaDeployment object.

The following table shows the properties that are required when you create the zebraFotaDeployment.

|Property|Type|Description|
|:---|:---|:---|
|id|String|System generated deployment id provided during creation of the deployment. Returned only if operation was a success.|
|displayName|String|A human readable name of the deployment.|
|description|String|A human readable description of the deployment.|
|deploymentSettings|** Unknown Type `microsoft.intune.core.msGraph.zebraFotaDeploymentSettings` **|Represents settings required to create a deployment such as deployment type, artifact info, download and installation|
|deploymentAssignments|** Unknown Type `microsoft.intune.core.msGraph.androidFotaDeploymentAssignment` ** collection|Collection of Android FOTA Assignment|
|deploymentStatus|** Unknown Type `microsoft.intune.core.msGraph.zebraFotaDeploymentStatus` **|Represents the deployment status from Zebra. The status is a high level status of the deployment as opposed being a detailed status per device.|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance|



## Response
If successful, this method returns a `201 Created` response code and a [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/zebraFotaDeployments
Content-type: application/json
Content-length: 344

{
  "@odata.type": "#microsoft.graph.zebraFotaDeployment",
  "displayName": "Display Name value",
  "description": "Description value",
  "deploymentSettings": "<Unknown None>",
  "deploymentAssignments": [
    "<Unknown None>"
  ],
  "deploymentStatus": "<Unknown None>",
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
Content-Length: 393

{
  "@odata.type": "#microsoft.graph.zebraFotaDeployment",
  "id": "b694759b-759b-b694-9b75-94b69b7594b6",
  "displayName": "Display Name value",
  "description": "Description value",
  "deploymentSettings": "<Unknown None>",
  "deploymentAssignments": [
    "<Unknown None>"
  ],
  "deploymentStatus": "<Unknown None>",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```
