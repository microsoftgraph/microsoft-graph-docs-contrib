---
title: "Update deviceAndAppManagementDeploymentRing"
description: "Update the properties of a deviceAndAppManagementDeploymentRing object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceAndAppManagementDeploymentRing

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) object.

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
```http
PATCH /deviceManagement/deployments/{deviceAndAppManagementDeploymentId}/rings/{deviceAndAppManagementDeploymentRingId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) object.

The following table shows the properties that are required when you create the [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|displayName|String|The display name of the deployment ring.|
|order|Int32|The order in which this ring should be processed relative to other rings.|
|activationCriteria|[deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md)|The criteria that must be met for current deployment ring activation.|
|state|[deviceAndAppManagementDeploymentRingState](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringstate.md)|Device and app management deployment ring status. Possible values are: `notActivated`, `activating`, `canceled`, `paused`, `activated`, `error`, `unknownFutureValue`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deployments/{deviceAndAppManagementDeploymentId}/rings/{deviceAndAppManagementDeploymentRingId}
Content-type: application/json
Content-length: 342

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentRing",
  "displayName": "Display Name value",
  "order": 5,
  "activationCriteria": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
    "startDateTime": "2016-12-31T23:58:46.7156189-08:00"
  },
  "state": "activating"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 391

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentRing",
  "id": "0aae5d3f-5d3f-0aae-3f5d-ae0a3f5dae0a",
  "displayName": "Display Name value",
  "order": 5,
  "activationCriteria": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
    "startDateTime": "2016-12-31T23:58:46.7156189-08:00"
  },
  "state": "activating"
}
```