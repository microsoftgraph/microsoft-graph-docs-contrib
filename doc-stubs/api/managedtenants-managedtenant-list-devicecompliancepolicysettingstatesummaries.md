---
title: "List deviceCompliancePolicySettingStateSummaries"
description: "Get the deviceCompliancePolicySettingStateSummary resources from the deviceCompliancePolicySettingStateSummaries navigation property."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List deviceCompliancePolicySettingStateSummaries
Namespace: microsoft.graph.managedTenants



Get the deviceCompliancePolicySettingStateSummary resources from the deviceCompliancePolicySettingStateSummaries navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/deviceCompliancePolicySettingStateSummaries
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceCompliancePolicySettingStateSummary](../resources/devicecompliancepolicysettingstatesummary.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_devicecompliancepolicysettingstatesummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/deviceCompliancePolicySettingStateSummaries
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary",
      "id": "2f01eb56-eb56-2f01-56eb-012f56eb012f",
      "tenantId": "String",
      "tenantDisplayName": "String",
      "intuneAccountId": "String",
      "intuneSettingId": "String",
      "policyType": "String",
      "settingName": "String",
      "pendingDeviceCount": "Integer",
      "notApplicableDeviceCount": "Integer",
      "succeededDeviceCount": "Integer",
      "failedDeviceCount": "Integer",
      "errorDeviceCount": "Integer",
      "conflictDeviceCount": "Integer",
      "lastRefreshedDateTime": "String (timestamp)"
    }
  ]
}
```

