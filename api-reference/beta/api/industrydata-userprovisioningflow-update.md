---
title: "Update userProvisioningFlow"
description: "Update the properties of a userProvisioningFlow object."
author: "mohanrajc"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/30/2025
---

# Update userProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-userprovisioningflow-update-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-userprovisioningflow-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /external/industryData/OutboundProvisioningFlowSets/{id}/provisioningFlows/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property | Type | Description |
|:---|:---|:---|
| createUnmatchedUsers | Boolean | A Boolean choice indicating whether unmatched users should be created or ignored. Optional. |
| creationOptions | [microsoft.graph.industryData.userCreationOptions](../resources/industrydata-usercreationoptions.md) | The different management choices for the new users to be provisioned. Optional. |
| managementOptions | [microsoft.graph.industryData.userManagementOptions](../resources/industrydata-usermanagementoptions.md) | The different attribute choices for all the users to be considered. Required |

> [!CAUTION]
> The **markAllStudentsAsMinors** property of **additionalOptions** under **managementOptions** is deprecated and will stop returning data on October 15, 2025. Going forward, use the **studentAgeGroup** property.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_userprovisioningflow"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/dbd36d16-c574-4ed8-3ac7-08dc4ac6fb7f
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",
  "createUnmatchedUsers": true,
  "managementOptions": {
    "additionalAttributes": [
      "userGradeLevel"
    ],
    "additionalOptions": {
      "studentAgeGroup": "minor",
      "allowStudentContactAssociation": true
    }
  },
  "creationOptions": {
    "configurations": [
      {
        "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",
        "defaultPasswordSettings": {
          "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
          "password": "********"
        },
        "licenseSkus": [
          "SkuUpdated"
        ]
      },
      {
        "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/students",
        "defaultPasswordSettings": {
          "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
          "password": "********"
        },
        "licenseSkus": [
          "SkuUpdated2"
        ]
      }
    ]
  }
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
