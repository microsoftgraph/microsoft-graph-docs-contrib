---
title: "Update deviceManagement"
description: "Update the properties of a deviceManagement object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update deviceManagement
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [deviceManagement](../resources/devicemanagement.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [deviceManagement](../resources/devicemanagement.md) object.

The following table shows the properties that are required when you update the [deviceManagement](../resources/devicemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|adminConsent|[adminConsent](../resources/adminconsent.md)|Admin consent information.|
|deviceComplianceReportSummarizationDateTime|DateTimeOffset|The last requested time of device compliance reporting for this account. This property is read-only.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/deviceprotectionoverview.md)|Device protection overview.|
|intuneAccountId|Guid|Intune Account Id for given tenant|
|intuneBrand|[intuneBrand](../resources/intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|
|lastReportAggregationDateTime|DateTimeOffset|The last modified time of reporting for this account. This property is read-only.|
|legacyPcManangementEnabled|Boolean|The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.|
|managedDeviceCleanupSettings|[managedDeviceCleanupSettings](../resources/manageddevicecleanupsettings.md)|Device cleanup rule|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|
|settings|[deviceManagementSettings](../resources/devicemanagementsettings.md)|Account level settings.|
|subscriptions|deviceManagementSubscriptions|Tenant's Subscription. The possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|subscriptionState|deviceManagementSubscriptionState|Tenant mobile device management subscription state. The possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|unlicensedAdminstratorsEnabled|Boolean|When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.|
|userExperienceAnalyticsSettings|[userExperienceAnalyticsSettings](../resources/userexperienceanalyticssettings.md)|User experience analytics device settings|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/windowsmalwareoverview.md)|Malware overview for windows devices.|



## Response

If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/devicemanagement.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_devicemanagement"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement
Content-Type: application/json
Content-length: 1132

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "accountMoveCompletionDateTime": "String (timestamp)",
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent"
  },
  "deviceComplianceReportSummarizationDateTime": "String (timestamp)",
  "deviceProtectionOverview": {
    "@odata.type": "microsoft.graph.deviceProtectionOverview"
  },
  "intuneAccountId": "Guid",
  "intuneBrand": {
    "@odata.type": "microsoft.graph.intuneBrand"
  },
  "lastReportAggregationDateTime": "String (timestamp)",
  "legacyPcManangementEnabled": "Boolean",
  "managedDeviceCleanupSettings": {
    "@odata.type": "microsoft.graph.managedDeviceCleanupSettings"
  },
  "maximumDepTokens": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings"
  },
  "subscriptions": "String",
  "subscriptionState": "String",
  "unlicensedAdminstratorsEnabled": "Boolean",
  "userExperienceAnalyticsSettings": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings"
  },
  "windowsMalwareOverview": {
    "@odata.type": "microsoft.graph.windowsMalwareOverview"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "f4ddca49-ca49-f4dd-49ca-ddf449caddf4",
  "accountMoveCompletionDateTime": "String (timestamp)",
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent"
  },
  "deviceComplianceReportSummarizationDateTime": "String (timestamp)",
  "deviceProtectionOverview": {
    "@odata.type": "microsoft.graph.deviceProtectionOverview"
  },
  "intuneAccountId": "Guid",
  "intuneBrand": {
    "@odata.type": "microsoft.graph.intuneBrand"
  },
  "lastReportAggregationDateTime": "String (timestamp)",
  "legacyPcManangementEnabled": "Boolean",
  "managedDeviceCleanupSettings": {
    "@odata.type": "microsoft.graph.managedDeviceCleanupSettings"
  },
  "maximumDepTokens": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings"
  },
  "subscriptions": "String",
  "subscriptionState": "String",
  "unlicensedAdminstratorsEnabled": "Boolean",
  "userExperienceAnalyticsSettings": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings"
  },
  "windowsMalwareOverview": {
    "@odata.type": "microsoft.graph.windowsMalwareOverview"
  }
}
```

