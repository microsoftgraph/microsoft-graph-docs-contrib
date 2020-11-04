---
title: "Update selfServiceSettings"
description: "Update the properties of the self-service setting."
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: apiPageType
---

# Update selfServiceSettings

Namespace: microsoft.graph

Update the properties of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /deviceManagement/virtualEndpoint/selfServiceSettings
```

## Request headers

| Name          | Description                |
| :------------ | :------------------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.

The following table shows the properties that are required when you create the [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the self-service setting, which is the same as your Azure AD tenant ID. Read-only.|
|enabled|Boolean|When true, self-service is enabled at the tenant level. When false, self-service is disabled at the tenant level.|
|assignments|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md) collection|The IDs of the Azure AD user groups that are allowed to perform self-service when tenant-level self service is enabled. Only security groups and Office 365 Groups are supported.|

## Response

If successful, this method returns a `200 OK` response code and an updated [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_selfservicesettings"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/selfServiceSettings
Content-Type: application/json
Content-length: 675

{
  "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
  "enabled": true,
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"1e4f451f-48a2-4ef4-9e43-d471a86fffff"
    },
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"2eac0d4a-8147-4428-9902-71bb11e8ffff"
    },
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"5f4ddccc-bd47-4066-a49d-577573b5ffff"
    },
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"9e2278ee-581a-4304-aa73-426e77d2ffff"
    }
  ]
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSelfServiceSettings"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 722

{
  "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
  "id": "1aa74782-4782-1aa7-8247-a71a8247a71a",
  "enabled": true,
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"1e4f451f-48a2-4ef4-9e43-d471a86fffff"
    },
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"2eac0d4a-8147-4428-9902-71bb11e8ffff"
    },
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"5f4ddccc-bd47-4066-a49d-577573b5ffff"
    },
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId":"9e2278ee-581a-4304-aa73-426e77d2ffff"
    }
  ]
}
```
