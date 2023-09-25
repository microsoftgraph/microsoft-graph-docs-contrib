---
title: "Create deviceManagementComplianceScheduledActionForRule"
description: "Create a new deviceManagementComplianceScheduledActionForRule object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create deviceManagementComplianceScheduledActionForRule

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) object.

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
POST /deviceManagement/compliancePolicies/{deviceManagementCompliancePolicyId}/scheduledActionsForRule
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceManagementComplianceScheduledActionForRule object.

The following table shows the properties that are required when you create the deviceManagementComplianceScheduledActionForRule.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of this setting within the policy which contains it. Automatically generated.|
|ruleName|String|Name of the rule which this scheduled action applies to.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceManagementComplianceScheduledActionForRule](../resources/intune-deviceconfigv2-devicemanagementcompliancescheduledactionforrule.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/compliancePolicies/{deviceManagementCompliancePolicyId}/scheduledActionsForRule
Content-type: application/json
Content-length: 124

{
  "@odata.type": "#microsoft.graph.deviceManagementComplianceScheduledActionForRule",
  "ruleName": "Rule Name value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 173

{
  "@odata.type": "#microsoft.graph.deviceManagementComplianceScheduledActionForRule",
  "id": "4d62ccbd-ccbd-4d62-bdcc-624dbdcc624d",
  "ruleName": "Rule Name value"
}
```
